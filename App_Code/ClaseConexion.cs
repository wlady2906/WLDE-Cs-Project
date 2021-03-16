using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


/// <summary>
/// Descripción breve de ClaseConexion
/// </summary>
public class ClaseConexion
{
    public SqlCommand comando;
    public SqlConnection conexion;
    public SqlDataAdapter da;
    public DataSet set;
   
    public ClaseConexion()
    {
        //para obtener el conexion string de la base de datos se debe ir al archivo web config
        conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["BaseDatosConnectionString1"].ConnectionString);

    }
    public void registrar(string ID,string Nombre, string Apellido, string FechaNacimiento, string Email, string Pais, string Dirección, string CodigoPostal, string Estado, string Telefono, string Celular, string Fax, string Contraseña, int gender)
    {
        try
        {
            ClaseConexion con = new ClaseConexion();
            con.conexion.Open();
            string guardar = "insert into registro(ID,Nombre,Apellido,FechaNacimiento,Email,Pais,Dirección,CodigoPostal,Estado,Telefono,Celular,Fax,Contraseña,Genero) values('" + ID + "','" + Nombre + "','" + Apellido + "','" + FechaNacimiento + "','" + Email + "','" + Pais + "','" + Dirección + "','" + CodigoPostal + "','" + Estado + "','" + Telefono + "','" + Celular + "','" + Fax + "','" + Contraseña + "','" + gender + "')";
            SqlCommand DE = new SqlCommand(guardar, con.conexion);
            DE.ExecuteNonQuery();
            con.conexion.Close();
        }

        catch (Exception ex)
        {

        }

    }
    public void resgistrarcompra(string codigo, int cant, int sub, int iva, int total)
    {
        try
        {
            ClaseConexion con = new ClaseConexion();
            con.conexion.Open();
            string compra = "insert into Detalle(CodigoProducto, Cantidad, Subtotal, Impuestos, Total) values('" +codigo+ "','" +cant+ "','" +sub+ "','" +iva+ "','" +total+"')";
            SqlCommand cp = new SqlCommand(compra, con.conexion);
            cp.ExecuteNonQuery();
            con.conexion.Close();
        }

        catch (Exception ex)
        {

        }
    }
    public Boolean existe(string ID)
    {
        ClaseConexion con = new ClaseConexion();
        con.conexion.Open();
        string ex = "SELECT COUNT(*) FROM registro WHERE ID ='"+ID+"'";
        SqlCommand order = new SqlCommand(ex, con.conexion);
        string count = order.ExecuteScalar().ToString();
        if (count == "1")
        {
            return false;
        }

        else
        {
            return true;
        }
    }
  
    public void producto(string CodP,string descr, string tipo, string marca, int precio, string modelo)
    {
        ClaseConexion con = new ClaseConexion();
        con.conexion.Open();
        string produ = "select * from productos";
        SqlCommand pro = new SqlCommand(produ, con.conexion);
        pro.ExecuteNonQuery();

        SqlDataReader rd = pro.ExecuteReader();
        if (rd.Read())
        {
            
        }
        con.conexion.Close();
    }

    public Boolean loginExist(string usuario, string contra)
    {
        ClaseConexion con = new ClaseConexion();
        con.conexion.Open();
        string query = "select count(*) from registro where ID = '" + usuario + "' and Contraseña ='" + contra+ "' ";
        SqlCommand sat = new SqlCommand(query, con.conexion);
        string salida = sat.ExecuteScalar().ToString();

        if (salida == "1")
        {
            return true;
        }

        else
        {
            return false;
        }
    }
    public void Eliminar(string usuario)
    {
        try
        {
            ClaseConexion con = new ClaseConexion();
            con.conexion.Open();
            string eliminar = "delete from registro where ID = '" + usuario + "' ";
            SqlCommand eli = new SqlCommand(eliminar, con.conexion);
            eli.ExecuteNonQuery();
            con.conexion.Close();
        }
        catch (Exception ex)
        {

        }
       
    }
}