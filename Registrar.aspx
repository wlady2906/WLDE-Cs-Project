

<%@ Page Title="" Language="C#" MasterPageFile="~/Navegacion1.master" AutoEventWireup="true" CodeFile="Registrar.aspx.cs" Inherits="AstroNav1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style auto-style9">
            <tr>
                <td colspan="3" style="font-family: 'Times New Roman'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #008000;" class="auto-style10">
                    <br />
                    Datos de mi cuenta<br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: 'Times New Roman'; font-size: medium; font-variant: normal; height: 21px;" class="auto-style9">
                    Si ya posses una cuenta y deseas usarla haz click
                    <asp:LinkButton ID="link_login" runat="server" CausesValidation="False" ForeColor="#3333CC" OnClick="link_login_Click">Aquí</asp:LinkButton>
                    </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style10" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000">
                    <br />
                    Datos personales<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Género:</td>
                <td style="width: 339px">
                 
                    <asp:DropDownList ID="drop_genero" runat="server">
                        <asp:ListItem>Seleccione su género....</asp:ListItem>
                        <asp:ListItem>Masculino</asp:ListItem>
                        <asp:ListItem>Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                        
                <td>
                 
                    &nbsp;</td>
                        
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Nombre de usuario:</td>
                <td colspan="2">
                 
                    <asp:TextBox ID="txt_user" runat="server" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="campovalido_user" runat="server" ControlToValidate="txt_user" ErrorMessage="*Ingrese un nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
                        
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Nombre:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_nombre" runat="server" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="campovalido_nombre" runat="server" ControlToValidate="txt_nombre" ErrorMessage="*Especifique un nombre" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_nombre" runat="server" ControlToValidate="txt_nombre" ErrorMessage="*Solo se permiten letras" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Apellidos:</td>
                <td colspan="2" class="auto-style9">
                    <asp:TextBox ID="txt_apellido" runat="server" Width="342px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="campovalido_apellido" runat="server" ControlToValidate="txt_apellido" ErrorMessage="*Especifique un apellido" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_apellido" runat="server" ControlToValidate="txt_apellido" ErrorMessage="*Solo se permiten letras" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Fecha de nacimiento:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_fecha" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="camporequerido_fecha" runat="server" ControlToValidate="txt_fecha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Dirección email:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_email" runat="server" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*Proporcione una dirección email válida" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="expresionregular_email" runat="server" ErrorMessage="*Ingrese un email valido Ej: user@mail.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Confirmar email: </td>
                <td colspan="2">
                    <asp:TextBox ID="txt_confemail" runat="server" Width="343px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_confirmar" runat="server" ControlToValidate="txt_confemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_email" ControlToValidate="txt_confemail" ErrorMessage="*Los correos no son iguales"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;" colspan="3">
                    <br />
                    Dirección Principal<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">País:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_pais" runat="server" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_pais" runat="server" ControlToValidate="txt_pais" ErrorMessage="*Especifique un país" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_pais" runat="server" ControlToValidate="txt_pais" ErrorMessage="*Solo se permiten letras" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Dirección:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_direccion" runat="server" Width="343px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_direccion" ErrorMessage="*Especifique una dirección" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_dir" runat="server" ControlToValidate="txt_direccion" ErrorMessage="*Solo se permiten letras" ValidationExpression="^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9  _]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Código Postal:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_codpo" runat="server" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_codpo" runat="server" ControlToValidate="txt_codpo" ErrorMessage="*Codigo postal obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_cp" runat="server" ControlToValidate="txt_codpo" ErrorMessage="*Solo se permiten números" ValidationExpression="(^[0-9]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Estado:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_estado" runat="server" Width="343px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_estado" runat="server" ControlToValidate="txt_estado" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="expresionregular_estado" runat="server" ControlToValidate="txt_estado" ErrorMessage="*Solo se permiten letras" ValidationExpression="^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Times New Roman'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;" colspan="3">
                    <br />
                    Información de contacto<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Número de teléfono:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_telefono" runat="server" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_fono" runat="server" ControlToValidate="txt_telefono" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_telefono" ErrorMessage="*Números solamente" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Número de celular:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_celular" runat="server" Width="343px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_celular" runat="server" ControlToValidate="txt_celular" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_celular" ErrorMessage="*Números solamente" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Número de fax:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_fax" runat="server" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_fax" runat="server" ControlToValidate="txt_fax" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_fax" ErrorMessage="*Números solamente" ValidationExpression="(^[0-9]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-family: 'Times New Roman'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000000;" colspan="3">
                    <br />
                    Contraseña<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Contraseña:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_contraseña" runat="server" Width="344px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="camporequerido_contra" runat="server" ControlToValidate="txt_contraseña" ErrorMessage="*Contraseña obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: lighter; font-style: normal; font-variant: normal; text-transform: none; color: #000000;">Confirmar contraseña:</td>
                <td colspan="2">
                    <asp:TextBox ID="txt_confcontra" runat="server" Width="343px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="compararvalido_contraseña" runat="server" ControlToCompare="txt_contraseña" ControlToValidate="txt_confcontra" ErrorMessage="*Las contraseñas no coinciden"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-variant: normal;" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btn_registrar" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Cambria Math" Font-Overline="False" ForeColor="#3333CC" Height="25px" Text="Registrar" OnClick="btn_registrar_Click" />
                    &nbsp;<br />
                    <asp:Label ID="lbl_mensaje" runat="server" Font-Size="Medium"></asp:Label>
                    &nbsp;Si deseas dar de baja a tu registro haz click
                    <asp:LinkButton ID="link_dardebaja" runat="server" CausesValidation="False" ForeColor="#3333CC" OnClick="link_dardebaja_Click">Aquí</asp:LinkButton>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-variant: normal;" colspan="3">&nbsp;</td>
            </tr>
        </table>
</asp:Content>

