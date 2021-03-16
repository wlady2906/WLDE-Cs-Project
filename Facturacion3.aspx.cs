using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Facturacion3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData();
    }
    protected void BindData()
    {
        Gried_carrito.DataSource = CarroDeCompras.CapturarProducto().ListaProductos;
        Gried_carrito.DataBind();
    }

    protected void Gried_carrito_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total: " + CarroDeCompras.CapturarProducto().SubTotal().ToString("C");
        }
    }

    protected void Gried_carrito_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            CarroDeCompras.CapturarProducto().EliminarProductos(productId);
        }
        BindData();
    }
   
    protected void btn_volveracomprar_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in Gried_carrito.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                try
                {
                    int productoId = Convert.ToInt32(Gried_carrito.DataKeys[row.RowIndex].Value);
                    int cantidad = int.Parse(((TextBox)row.Cells[1].FindControl("txt_cantidad")).Text);
                    CarroDeCompras.CapturarProducto().CantidadDeProductos(productoId, cantidad);
                }
                catch (FormatException) { }
            }
        }
        BindData();
    }

    protected void btn_volver_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Galería.aspx");
    }
}