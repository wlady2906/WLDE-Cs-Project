using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Facturación : System.Web.UI.Page
{
    ClaseConexion con = new ClaseConexion();
    int cant, subtotal, iva, total, precio;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.conexion.Open();
        txt_codigo.Enabled = false;
        txt_descripcion.Enabled = false;
        txt_iva.Enabled = false;
        txt_subtotal.Enabled = false;
        txt_total.Enabled = false;
        txt_precio.Enabled = false;
       
    }

    private void Limpiarcompra()
    {
        txt_precio.Text = "";
        txt_descripcion.Text = "";
        txt_cantidad.Text = "";
        txt_subtotal.Text = "";
        txt_codigo.Text = "";
        txt_iva.Text = "";
        txt_total.Text = "";
        ddl_producto.SelectedIndex = -1;

    }
    protected void ddl_producto_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        string produ = "SELECT * FROM productos WHERE[Nombre Producto] = @descripcion";
        SqlCommand pro = new SqlCommand(produ, con.conexion);
        pro.Parameters.AddWithValue("@descripcion", (ddl_producto.SelectedValue));

            SqlDataReader rd = pro.ExecuteReader();
        if (rd.Read())
        {
            txt_codigo.Text = (string)rd["CodigoProducto"].ToString();
            txt_descripcion.Text = (string)rd["Descripcion"].ToString();
            txt_precio.Text = (string)rd["Precio"].ToString();

           
            
            
        }

        }


    protected void btn_calcular_Click(object sender, EventArgs e)
    {

        cant = Int32.Parse(txt_cantidad.Text);
        precio = Int32.Parse(txt_precio.Text);

        subtotal = precio * cant;
        iva = (subtotal * 12) / 100;

        total = subtotal + iva;

        txt_subtotal.Text = Convert.ToString(subtotal);
        txt_iva.Text = Convert.ToString(iva);
        txt_total.Text = Convert.ToString(total);
    }

    protected void btn_guardar_Click(object sender, EventArgs e)
    {
        cant = Int32.Parse(txt_cantidad.Text);
        subtotal = Int32.Parse(txt_subtotal.Text);
        iva = Int32.Parse(txt_iva.Text);
        total = Int32.Parse(txt_total.Text);

        con.resgistrarcompra(txt_codigo.Text,cant,subtotal,iva,total);
        Response.Write("<script>alert('Su compra ha sido guardada.')</script>");
        Limpiarcompra();

    }
}