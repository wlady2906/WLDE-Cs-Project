<%@ Page Title="" Language="C#" MasterPageFile="~/Navegacion1.master" AutoEventWireup="true" CodeFile="Galería.aspx.cs" Inherits="Galería" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <!--es un elemento heredado de la pagina maestra que permite ordenar todos los elementos de mi pagina--->
    <!--Principio del cuerpo principal que contiene todos los elementos--->
     <div class="formbox"> <!----->
    <div class="wrapper overlay" style="left: 0px; top: 0px">
    <div class="bgded" style="background-image:url('../images/demo/backgrounds/Imagen01.png');"> 
    <div id="breadcrumb" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <ul>
        <li><a href="AstroInicio.aspx">Inicio</a></li>
        <li><a href="Galería.aspx">Productos/Galeria</a></li>
      
      </ul>
      <!-- ################################################################################################ -->
   </div>
   </div>
  </div>
    
    
    
 <div class="wrapper row3" style="background-color: #F4F4F4">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure> <!---figure sirve para establcer un una figura, un marco donde vamos a poner todo los elementos---->
          <header class="heading">ENCUENTRA TUS PRODUCTOS FAVORITOS AQUÍ<a class="btn fl_right" href="Facturacion3.aspx">Ver Compra</a><br />
              <br /> <!--Salto de linea--->
            </header>
          <ul class="nospace clear"> <!--Ul significa lista ordenada de objetos donde importa el oreden/nospace clear es una clase Css que limpia todo y establece un color--->
            <li class="one_quarter first"><a href="#"><img src="../images/demo/gallery/Telescopio1.png" alt=""></a> <!--Li lista ordenada de objetos/img es un objeto de imagen/src signifca source que es la ruta de la imagen--->
                <h1 align="center" style="width: 233px"><a>TELESCOPIO CELESTRON S/C NEXTAR </a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 250,00 </span></p>
                    <asp:Button ID="btn_telescopio1" runat="server" Text="Comprar" OnClick="btn_telescopio1_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Telescopio2.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>TELESCOPIO SKY-WATCHERS REFRACTOR BK</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 300,00 </span></p>
                    <asp:Button ID="btn_telescopio2" runat="server" Text="Comprar" OnClick="btn_telescopio2_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Telescopio3.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>TELESCOPIO ASTROMASTER REFRACTOR 70/900 </a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 450,00 </span></p>
                    <asp:Button ID="btn_telescopio3" runat="server" Text="Comprar" OnClick="btn_telescopio3_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Prismaticos.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>PRISMATICO CELESTRON SKYMASTER 20X80</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 69,00 </span></p>
                    <asp:Button ID="btn_prismatico" runat="server" Text="Comprar" OnClick="btn_prismatico_Click" />
                </div>
            </li>
            <li class="one_quarter first"><a href="#"><img src="../images/demo/gallery/Red Dot Finder.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>BUSCADOR SKY-WATCHER PUNTO ROJO</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 22,00 </span></p>
                    <asp:Button ID="btn_buscador" runat="server" Text="Comprar" OnClick="btn_buscador_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Guiador autonomo.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>GUIADOR AUTONOMO ASTROFOTOGRAFÍA</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 45,00 </span></p>
                    <asp:Button ID="btn_guiador" runat="server" Text="Comprar" OnClick="btn_guiador_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Corrector de dispersion atmosferica.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>CORRECTOR DE DISPERSION ZWO ADC 1,25"</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 30,00 </span></p>
                    <asp:Button ID="btn_corrector" runat="server" Text="Comprar" OnClick="btn_corrector_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Camara de telescopio.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>CAMARA BRESSER HD WIFI 1.25" HEVV-2018</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 89,00 </span></p>
                    <asp:Button ID="btn_camara" runat="server" Text="Comprar" OnClick="btn_camara_Click" />
                </div>
            </li>
            
            <li class="one_quarter first"><a href="#"><img src="../images/demo/gallery/Pabellos Ocular.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>PABELLON OCULAR para oculares 31.5</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 10,00 </span></p>
                    <asp:Button ID="btn_pabellon" runat="server" Text="Comprar" OnClick="btn_pabellon_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/rotula fotografica.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>ROTULA FOTOGRAFICA BEIKE</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 15,00 </span></p>
                    <asp:Button ID="btn_rotula" runat="server" Text="Comprar" OnClick="btn_rotula_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/Binocular-tripode.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>BINOCULAR VIXEN SET HF2-BT 126SS</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 450,00 </span></p>
                    <asp:Button ID="btn_binocular" runat="server" Text="Comprar" OnClick="btn_binocular_Click" />
                </div>
            </li>
            <li class="one_quarter"><a href="#"><img src="../images/demo/gallery/tripode.png" alt=""></a>
                <h1 align="center" style="width: 233px"><a>TRIPODE DE ALUMINIO VIXEN</a></h1>
                <div><p class="content" align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; width: 233px;"><span class="coloured">$ 120,00 </span></p>
                    <asp:Button ID="btn_tripode" runat="server" Text="Comprar" OnClick="btn_tripode_Click" />
                </div>
            </li>
          </ul>
            <!--titulo del figure--->
          <figcaption>Ofrecemos una amplia gama de productos que se ajustarán a tus necesidades, conoce nuestras ofertas, descuentos y disfruta de la gran variedad que tenemos para ti.</figcaption>
        </figure>
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
     
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- /fin de cuerpo principal de la division que contiene todo los elementos -->
    <div class="clear"></div> <!--Clear significa limpiar, limpia la division y establece un color--->
  </main>
</div>
         <!--suele encerrar la mayor parte de los contenidos de la página y se emplea para definir las características básicas de la página: su anchura, sus bordes, imágenes laterales, si se centra o no respecto de la ventana del navegador, etc.-->
         <!--Ligth significa ligero, quiere decir que la imagen obtendra un color suave y no intenso-->
   <div class="wrapper bgded overlay light" style="background-image:url('../images/demo/backgrounds/ISS1.png');">
  <figure class="hoc clear"> 
    <!-- ################################################################################################ -->
     <ul class="nospace group logos">
      
    </ul>
    <!-- ################################################################################################ -->
  </figure>
</div>
</asp:Content>

