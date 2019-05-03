<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validacion.aspx.cs" Inherits="tp_3_MansillaFrancisco.Validacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <strong style="font-size: 20px; margin-left: 16%">Localidades</strong>
        <div style="width: 50%; font-size: 18px"></div>
        <br />
        <span>Nombre de localidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>&nbsp;
        <asp:RequiredFieldValidator ID="validLocalidad" runat="server" ControlToValidate="txtLocalidad">Ingrese localidad</asp:RequiredFieldValidator>
        <br />
        <br />
        <div style="width: 50%; margin-left: 15%">
            <asp:Button ID="saveLoc" runat="server" Text="Guardar localidad" OnClick="saveLoc_Click" />
        </div>
        <br />
        <strong style="font-size: 20px; margin-left: 16%">Usuarios</strong>
        <br />
        <br />
        Nombre de usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validUserName" runat="server" ControlToValidate="txtUserName">Debe ingresar un nombre de usuario</asp:RequiredFieldValidator>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox TextMode="Password" ID="txtPass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validPassword" runat="server" ControlToValidate="txtPass">Debe ingresar una contraseña</asp:RequiredFieldValidator>        
        <br />
        Repetir contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox TextMode="Password" ID="txtConfirmPass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validConfirmPass" runat="server" ControlToValidate="txtConfirmPass">Este campo no puede estar vacio</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="validConfirmPassComp" runat="server" ControlToValidate="txtConfirmPass" ControlToCompare="txtPass">La contraseña ingresada no coincide</asp:CompareValidator>
        <br />
        Correo electronico:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validCorreo" runat="server" ControlToValidate="txtCorreo">Debe ingresar una dirección de correo</asp:RequiredFieldValidator>        
        <asp:RegularExpressionValidator ID="validCorreoREGEX" runat="server" ControlToValidate="txtCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Debe ingresar un correo valido</asp:RegularExpressionValidator>
        <br />
        CP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validtxtCP" runat="server" ControlToValidate="txtCP">Debe ingresar un CP</asp:RequiredFieldValidator>        
        <asp:RegularExpressionValidator ID="validtxtCPREGEX" runat="server" ControlToValidate="txtCP" ValidationExpression="\d{4}">Debe ingresar un CP valido</asp:RegularExpressionValidator>
        <br />
        Localidades:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="30px" Width="125px"></asp:DropDownList>
        <asp:Label ID="validDdlLocalidades" runat="server"></asp:Label>

        <br />
        <br />
        <div style="width: 50%; margin-left: 15%">
            <asp:Button ID="saveUser" runat="server" Text="Guardar usuario" OnClick="saveUser_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblUserSuccess" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <asp:Button href="Inicio.aspx" ID="goHome" runat="server" Text="Ir al Inicio.aspx" />
    </form>
</body>
</html>
