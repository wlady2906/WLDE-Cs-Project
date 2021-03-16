using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Producto
/// </summary>
public class Producto
{
    // esta clase contiene los productos de la tienda contenidos en switch case
    // donde el numero del producto representa el codigo de producto
    public int Id { get; set; }
    public decimal Precio { get; set; } // los metodos get y set permiten establecer y obtener la accion de la función
    public string Descripcion { get; set; }
    public Producto(int pId)
    {
        Id = pId;
        //esta sera la lista de productos y precios
        switch (pId)
        {
            case 1:
                Descripcion = "TELESCOPIO CELESTRON S/C NEXTAR";
                //lo puedo convertir para que me lo tome como decimal
                Precio = Convert.ToDecimal(250.00);
                break;
            case 2:
                Descripcion = "TELESCOPIO SKY-WATCHERS REFRACTOR BK";
                //es igual que convertirlo solo que le estoy diciendo que es decimal
                Precio = 300.00m;
                break;
            case 3:
                Descripcion = "TELESCOPIO ASTROMASTER REFRACTOR 70/900";
                Precio = 450.00m;
                break;
            case 4:
                Descripcion = "PRISMATICO CELESTRON SKYMASTER 20X80";
                Precio = 69.00m;
                break;
            case 5:
                Descripcion = "BUSCADOR SKY-WATCHER PUNTO ROJO";
                Precio = 22.00m;
                break;
            case 6:
                Descripcion = "GUIADOR AUTONOMO ASTROFOTOGRAFÍA";
                Precio = 45.00m;
                break;
            case 7:
                Descripcion = "CORRECTOR DE DISPERSION ZWO ADC 1,25";
                Precio = 30.00m;
                break;
            case 8:
                Descripcion = "CAMARA BRESSER HD WIFI 1.25";
                Precio = 89.00m;
                break;
            case 9:
                Descripcion = "PABELLON OCULAR PARA OCULARES 31.5 MM";
                Precio = 10.00m;
                break;
            case 10:
                Descripcion = "ROTULA FOTOGRAFICA BEIKE";
                Precio = 15.00m;
                break;
            case 11:
                Descripcion = "BINOCULAR VIXEN SET HF2-BT 126SS";
                Precio = 450.00m;
                break;
            case 12:
                Descripcion = "TRIPODE DE ALUMINIO VIXEN M-169";
                Precio = 120.00m;
                break;

        }
    }
}