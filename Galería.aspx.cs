using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Galería : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn_telescopio1_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(1);
        
    }

    protected void btn_telescopio2_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(2);
        
    }

    protected void btn_telescopio3_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(3);
    }

    protected void btn_prismatico_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(4);
    }

    protected void btn_buscador_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(5);
    }

    protected void btn_guiador_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(6);
    }

    protected void btn_corrector_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(7);
    }

    protected void btn_camara_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(8);
    }

    protected void btn_pabellon_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(9);
    }
    protected void btn_rotula_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(10);
    }
    protected void btn_binocular_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(11);
    }

    protected void btn_tripode_Click(object sender, EventArgs e)
    {
        CarroDeCompras carrito = CarroDeCompras.CapturarProducto();
        carrito.Agregar(12);
    }

    
}