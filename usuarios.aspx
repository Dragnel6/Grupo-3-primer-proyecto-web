<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurante.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        text-align: center;
        height: 26px;
    }
    .auto-style16 {
        height: 26px;
    }
        .auto-style20 {
            text-align: center;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7">Registro de usuarios</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Escriba un nombre de usuario</td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Selecciona el tipo de usuario</td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="SqlDataSource2" DataTextField="tipo_empleado" DataValueField="tipo_empleado">
                        </asp:DropDownList>
                        </td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [tipo_empleado] FROM [cargos]"></asp:SqlDataSource>
                    </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Escriba una clave</td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Confirme su clave</td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:TextBox ID="txtClaveCon" runat="server"></asp:TextBox>
                    </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
                        <asp:Button ID="btRegistrar" runat="server" Height="49px" OnClick="btRegistrar_Click" Text="Registrar usuario" Width="169px" />
                    </td>
    </tr>
    <tr>
        <td class="auto-style20">
                        <asp:Label ID="lblUsuarios" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
</table>
</asp:Content>
