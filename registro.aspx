<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 259px;
        }
        .auto-style6 {
            width: 39px;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            height: 42px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: center;
            height: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                Ingreso de usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <br />
                        Usuario</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">Contraseña</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:TextBox ID="txtContra" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">
                        <br />
                        <asp:Button ID="btIngresar" runat="server" Height="51px" OnClick="btIngresar_Click" Text="Ingresar" Width="113px" />
                        <br />
                        <br />
                        <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [Usuario], [Contrasena] FROM [ingreso]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
