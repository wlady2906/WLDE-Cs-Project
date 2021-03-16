<%@ Page Title="" Language="C#" MasterPageFile="~/Navegacion1.master" AutoEventWireup="true" CodeFile="DarBaja.aspx.cs" Inherits="DarBaja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <style type="text/css">

            html{overflow-y:hidden;

        }
            .formbox 
        {
            padding:20px;
            margin:0px auto;
            background:#ffffff;
            width: 400px;
        }

        input
        {
            padding:8px;
            width:100%;
            margin:0px auto;
        }
        
    </style>
   <div class="bgded" style="background-image:url('images/demo/backgrounds/ISS1.png');">
    <div class="container center">
       <div class="formbox">
        <div class="wrapper row1" style="background-color: #FFFFFF">
            <asp:TextBox ID="txt_usuario" CssClass="input" runat="server" placeholder="Ingrese su nombre de usuario"></asp:TextBox>
            <br />
            <asp:Button ID="btn_dardebaja" runat="server" Text="Dar de baja" OnClick="btn_dardebaja_Click" />
        </div>
       </div>
    </div>
   </div>
</asp:Content>

