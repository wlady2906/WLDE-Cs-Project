using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de CarroDeCompras
/// </summary>
public class CarroDeCompras
{
    public List<ProductosAlCarro> ListaProductos { get; private set; }

    public static CarroDeCompras CapturarProducto()
    {
        CarroDeCompras _carrito = (CarroDeCompras)HttpContext.Current.Session["ASPCarroDeCompras"];
        if (_carrito == null)
        {
            HttpContext.Current.Session["ASPCarroDeCompras"] = _carrito = new CarroDeCompras();
        }
        return _carrito;
    }
    protected CarroDeCompras()
    {
        ListaProductos = new List<ProductosAlCarro>();
    }

    public void Agregar(int pIdProducto)
    {
        ProductosAlCarro NuevoProducto = new ProductosAlCarro(pIdProducto);
        if (ListaProductos.Contains(NuevoProducto))
        {
            foreach (ProductosAlCarro item in ListaProductos)
            {
                if (item.Equals(NuevoProducto))
                {
                    item.Cantidad++;
                    return;
                }
            }
        }
        else
        {
            NuevoProducto.Cantidad = 1;
            ListaProductos.Add(NuevoProducto);
        }
    }

    public void EliminarProductos(int pIdProducto)
    {
        ProductosAlCarro eliminaritems = new ProductosAlCarro(pIdProducto);
        ListaProductos.Remove(eliminaritems);
    }

    public void CantidadDeProductos(int pIdProducto, int pCantidad)
    {
        if (pCantidad == 0)
        {
            EliminarProductos(pIdProducto);
            return;
        }
        ProductosAlCarro updateProductos = new ProductosAlCarro(pIdProducto);
        foreach (ProductosAlCarro item in ListaProductos)
        {
            if (item.Equals(updateProductos))
            {
                item.Cantidad = pCantidad;
                return;
            }
        }
    }

    public decimal SubTotal()
    {
        decimal subtotal = 0;
        foreach (ProductosAlCarro item in ListaProductos)
        {
            subtotal += item.Total;
        }
        return subtotal;
    }
}