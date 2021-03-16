<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facturacion3.aspx.cs" Inherits="Facturacion3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <title>Facturación</title>

    <style type="text/css">

             .formbox 
        {
            padding:20px;
            margin:5px auto;
            background:#ffffff;
            width:100%;
            
        }

        input
        {
            padding:7px;
            width:30%;
            margin:5px;
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
        
        .auto-style5 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: 50px;
            line-height: normal;
            font-weight: normal;
            text-transform: uppercase;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 20px;
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
<div class="wrapper overlay">
  <div class="bgded" style="background-image:url('images/demo/backgrounds/imagen01.png');">
      <br />
      <br />
      <br />
      <br />
      <h3 align="center" class="auto-style5">TWINKLING NOVA</h3>
      <br />
      <br />
      <br />
     </div>
    </div>
<!------###############################################################----->
<form id="form1" runat="server">
    <div class="formbox" style="border-style: groove"> 
        <div class="group">
          <div class="one_half first">
              <header id="header" class="hoc clear">
                <div id="logo" class="hoc clear">
                    <h1 align ="left" style="font-size: xx-large">REVISAR COMPRA</h1>
                </div>
              </header>
              <div class="center">
           <asp:GridView ID="Gried_carrito" runat="server" AutoGenerateColumns ="False" EmptyDataText="No hay nada en su carrito de compras" CellPadding="5" DataKeyNames="IDPRODUCTO" GridLines="None" 
            ShowFooter="True" OnRowCommand="Gried_carrito_RowCommand" OnRowDataBound="Gried_carrito_RowDataBound" Width="999px">
            <Columns>
                
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:TemplateField HeaderText="Cantidad">

                    <ItemTemplate>
                        <asp:TextBox ID="txt_cantidad" runat="server" Columns="5" Text='<%# Eval("Cantidad") %>'></asp:TextBox><br />
                        <asp:LinkButton ID="Link_Eliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("IdProducto") %>'>Eliminar</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PrecioUnitario" HeaderText="PrecioUnitario" />
                <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="{0:C}" />
                
            </Columns>
        </asp:GridView>

              </div>

              <div class="auto-style4">

                  <div class="group">
                     <div class="one_half first">
                        <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar compra" OnClick="btn_volveracomprar_Click" Width="224px" />
                     </div>
                      <div class="one_half">

                          <asp:Button ID="btn_volver" runat="server" Text="Volver a comprar" OnClick="btn_volver_Click" Width="213px" />

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
