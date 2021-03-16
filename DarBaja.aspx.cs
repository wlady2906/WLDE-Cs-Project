using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DarBaja : System.Web.UI.Page
{
    ClaseConexion con = new ClaseConexion();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.conexion.Open();
    }
    private void Limpiar()
    {
        txt_usuario.Text = "";

    }
    protected void btn_dardebaja_Click(object sender, EventArgs e)
    {
        if(con.existe(txt_usuario.Text) == false)
        {
            con.Eliminar(txt_usuario.Text);
            Response.Write("<script>alert('Se ha eliminado su registro de la base de datos, inicie sesión para poder ver las novedades.')</script>");
            Limpiar();
        }
        else
        {
            Response.Write("<script>alert('No se puede eliminar este registro, porque no existe')</script>");
            Limpiar();
        }
        
    }
}