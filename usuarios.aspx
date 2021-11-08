<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 529px;
        }
        .auto-style4 {
            width: 529px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Registro de usuarios<br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Nombre de usuario</td>
                    <td>Escriba un nombre de usuario</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Tipo de usuario</td>
                    <td>Selecciona el tipo de usuario</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Clave</td>
                    <td>Escriba una clave</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirme su clave</td>
                    <td>Confirme su clave</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtClaveCon" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btRegistrar" runat="server" Height="49px" OnClick="btRegistrar_Click" Text="Registrar usuario" Width="169px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [Usuario], [Contrasena], [tipo] FROM [ingreso]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblUsuarios" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
