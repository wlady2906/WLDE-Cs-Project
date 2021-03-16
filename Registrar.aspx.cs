using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AstroNav1 : System.Web.UI.Page
{
    ClaseConexion mm = new ClaseConexion();
    protected void Page_Load(object sender, EventArgs e)
    {

        mm.conexion.Open();
    }
    private void Limpiar()
    {
        txt_nombre.Text = "";
        txt_apellido.Text = "";
        txt_celular.Text = "";
        txt_confcontra.Text = "";
        txt_contraseña.Text = "";
        txt_estado.Text = "";
        txt_pais.Text = "";
        txt_user.Text = "";
        txt_codpo.Text = "";
        txt_email.Text = "";
        txt_fecha.Text = "";
        txt_confemail.Text = "";
        txt_direccion.Text = "";
        txt_fax.Text = "";
        txt_telefono.Text = "";
        drop_genero.SelectedIndex = -1;

    }

    
    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        int genero;
        genero = Int32.Parse(drop_genero.SelectedIndex.ToString());
        
       
        if (mm.existe(txt_user.Text) == true )
        {
            mm.registrar(txt_user.Text, txt_nombre.Text, txt_apellido.Text, txt_fecha.Text, txt_email.Text, txt_pais.Text, txt_direccion.Text, txt_codpo.Text, txt_estado.Text, txt_telefono.Text, txt_celular.Text, txt_fax.Text, txt_contraseña.Text, genero);
            Response.Write("<script>alert('Registro Exitoso.')</script>");
            lbl_mensaje.Text = "Registro Exitoso.";
            Limpiar();
           
        }
        else
        {
            lbl_mensaje.Text = "Este Usuario ya existe";
            Response.Write("<script>alert('Este Usuario ya existe')</script>");
            Limpiar();
        }

    }


    protected void link_dardebaja_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DarBaja.aspx");
    }

    protected void link_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}