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
        .auto-style5 {
            height: 29px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Registro de usuarios<br />
            <table class="auto-style2">
                <tr>
                    <td colspan="2">Escriba un nombre de usuario</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Selecciona el tipo de usuario</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="SqlDataSource2" DataTextField="tipo_empleado" DataValueField="tipo_empleado">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [tipo_empleado] FROM [cargos]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">Escriba una clave</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">Confirme su clave</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtClaveCon" runat="server"></asp:TextBox>
                    </td>
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
