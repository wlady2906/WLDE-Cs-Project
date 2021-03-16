using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class Login2 : System.Web.UI.Page
{
    ClaseConexion con = new ClaseConexion();
    protected void Page_Load(object sender, EventArgs e)
    {

        txt_usuario.Focus();
        con.conexion.Open();
    }

 

    protected void btn_inicio_Click1(object sender, EventArgs e)
    {
        if (con.loginExist(txt_usuario.Text, txt_contraseña.Text) == true)
        {
            Session["Usuario"] = txt_usuario.Text;
            Response.Redirect("~/AstroInicio.aspx");
        }
        else
        {
            
            Response.Write("<script>alert('El Usuario y/o la contraseña no coinciden, aseguresé de ingresar los datos correctos.')</script>");
            
        }
    }

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registrar.aspx");
    }



    
}