<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facturación.aspx.cs" Inherits="Facturación" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <title>Facturación</title>

    <style type="text/css">

      
        html{overflow-y:hidden;

        }
        
             .formbox 
        {
            padding:20px;
            margin:5px auto;
            background:#ffffff;
            width: 1500px;
            
        }

        input
        {
            padding:7px;
            width:30%;
            margin:5px;
        }
         .styled-select {
   width: 200px;
   height: 30px;
   overflow: hidden;
   background:#ffff;
   border: 2px solid #7d6754;
   border-radius: 5px;
   margin: 5px;
   }

   .styled-select select {
   background: transparent;
   width: 180px;
   padding: 3px;
   font-size: 16px;
   line-height: 1;
   border: 0;
   border-radius: 0;
   height: 30px;
   -webkit-appearance: none;
   font-family:Andalus;
   color:#7d6754;
   }
        
        .auto-style4 {
            display: inline-block;
            
            width: 72%;
            list-style-type: none;
            margin-left: 3.06748466257669%;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 0;
            padding: 0;
        }
        
        thead {color:green;}
        tbody {color:blue;}
        tfoot {color:red;}

        table, th, td 
        {
        border: 1px solid black;
        }
        
        .auto-style6 {
            width: 140px;
        }
        .auto-style7 {
            width: 68px;
        }
        .auto-style8 {
            width: 183%;
        }
        
        </style>


    </head>
<body>
<div class="wrapper row0">
    <div id="topbar" class="hoc clear">
      <ul>
        <li><i class="fa fa-clock-o"></i> Lunes. - Viernes. 9am - 5pm</li>
        <li><i class="fa fa-phone"></i> +593 0990285592</li>
        <li><i class="fa fa-envelope-o"></i> wlady1516@gmail.com</li>
        <li><a href="Login.aspx"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="Login.aspx" title="Iniciar sesión"><i class="fa fa-lg fa-sign-in"></i></a></li>
       </ul>
    </div>
</div>
<!------###############################################################----->
<div class="wrapper row1" style="background-color: #FFFFFF">
        <header id="header" class="hoc clear">
            <div id="logo" class="fl_left">
               <h1><a href="AstroInicio.aspx">TWINKLING NOVA</a></h1>
            </div>
            <div class="fl_right"><a class="btn" href="https://www.youtube.com/watch?v=SO4PFN_ON8w">Aprender Más</a></div>
        </header>
    </div>
<!------###############################################################----->
<form id="form1" runat="server">
    <div class="formbox" style="border-style: groove"> 
        <div class="group">
          <div class="one_half first">
              <header id="header" class="hoc clear">
                <div id="logo" class="hoc clear">
                    <h1 align ="center">FACTURACIÓN DE PRODUCTOS</h1>
                </div>
              </header>
            <table class="auto-style8">
                <thead>
                    <tr>
                        <th>PRODUCTO</th>
                        <th>DESCRIPCION</th>
                        <th class="auto-style6">CODIGO</th>
                        <th>PRECIO UNITARIO</th>
                        <th>CANTIDAD</th>
                        <th>SUBTOTAL</th>
                        <th>IVA 12%</th>
                        <th class="auto-style7">TOTAL</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddl_producto" runat="server" CssClass="styled-select" DataSourceID="DatosProductos" DataTextField="Nombre_Producto" DataValueField="Nombre_Producto" OnSelectedIndexChanged="ddl_producto_SelectedIndexChanged" AutoPostBack="True" >
                            <asp:ListItem>Nombre_Producto</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_descripcion" runat="server" CssClass="input" placeholder="Descripción" Width="286px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txt_codigo" runat="server" CssClass="input" placeholder="Código de producto" Width="112px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_precio" runat="server" CssClass="input" placeholder="Precio" Width="125px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_cantidad" runat="server" CssClass="input" placeholder="Cant" Width="64px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_subtotal" runat="server" CssClass="input" placeholder="Subtotal" Width="109px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_iva" runat="server" CssClass="input" placeholder="iva" Width="81px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txt_total" runat="server" CssClass="input" placeholder="Total" Width="97px"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <asp:SqlDataSource ID="DatosProductos" runat="server" ConnectionString="<%$ ConnectionStrings:BaseDatosConnectionString1 %>" SelectCommand="SELECT [Nombre Producto] AS Nombre_Producto FROM [productos]"></asp:SqlDataSource>
            <br />

              <div class="auto-style4">

                  <div class="group">
                     <div class="one_half first">
                         <asp:Button ID="btn_calcular" runat="server" Text="Calcular" Width="240px" OnClick="btn_calcular_Click" />
                     </div>
                      <div class="one_half">

                          <asp:Button ID="btn_guardar" runat="server" Text="Guardar compra" Width="240px" OnClick="btn_guardar_Click" />

                      </div>
                  </div>
            </div>
          </div>

       </div>    
</div>

 <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - Todos los derechos reservados - GREGZOVAUNI SOFTWARE</p>
    <p class="fl_right">Diseñado por Gregorio Zorrila y Wladimir De la S</p>
    
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></!---a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
    </form>

</body>
</html>
