<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurante.Master" AutoEventWireup="true" CodeBehind="empleados.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style28 {
            text-align: center;
            width: 183px;
        }
        .auto-style29 {
            text-align: center;
            height: 26px;
            width: 183px;
        }
        .auto-style30 {
            text-align: left;
            width: 183px;
        }
        .auto-style31 {
            text-align: right;
            height: 26px;
            width: 484px;
        }
        .auto-style44 {
            text-align: center;
            width: 183px;
            height: 43px;
        }
        .auto-style47 {
            text-align: right;
            width: 183px;
        }
        .auto-style48 {
            text-align: left;
            width: 183px;
            height: 26px;
        }
        .auto-style50 {
            width: 102%;
        }
        .auto-style51 {
            text-align: right;
            width: 484px;
        }
        .auto-style52 {
            text-align: center;
            height: 26px;
            width: 484px;
        }
        .auto-style54 {
            text-align: center;
            height: 43px;
            width: 484px;
        }
        .auto-style55 {
            height: 465px;
            width: 675px;
        }
        .auto-style56 {
            text-align: center;
            width: 484px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style55">    <table class="auto-style50">
    <tr>
        <td class="auto-style7" colspan="5">
                        <asp:Label ID="lblEmpl" runat="server" Text="Label"></asp:Label>
                    </td>
    </tr>
    <tr>
        <td class="auto-style31">
                    </td>
        <td class="auto-style29" colspan="4"></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="5">Registro de empleados</td>
    </tr>
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style29" colspan="4"></td>
    </tr>
    <tr>
        <td class="auto-style52">&nbsp;</td>
        <td class="auto-style29" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style29">Codigo</td>
        <td class="auto-style29">Nombres</td>
        <td class="auto-style29">Apellidos</td>
        <td class="auto-style48">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style51">
                        &nbsp;</td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                        </td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtApell" runat="server"></asp:TextBox>
                        </td>
        <td class="auto-style30">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style56">&nbsp;</td>
        <td class="auto-style28" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style29">N° de DUI</td>
        <td class="auto-style29">Telefono</td>
        <td class="auto-style29">Correo electronico</td>
        <td class="auto-style29">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style51">
                        &nbsp;</td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtDui" runat="server"></asp:TextBox>
                    </td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtTelef" runat="server"></asp:TextBox>
                    </td>
        <td class="auto-style28">
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
        <td class="auto-style28">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style56">
                        &nbsp;</td>
        <td class="auto-style28" colspan="4">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style54"></td>
        <td class="auto-style44" colspan="4">
                        <asp:Button ID="btAgregar" runat="server" Height="39px" OnClick="btAgregar_Click" Text="Agregar empleado" Width="155px" />
                    </td>
    </tr>
    <tr>
        <td class="auto-style52">
                        </td>
        <td class="auto-style29" colspan="4">
                        </td>
    </tr>
    <tr>
        <td class="auto-style56">
                        &nbsp;</td>
        <td class="auto-style28" colspan="4">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style56">
                        &nbsp;</td>
        <td class="auto-style28" colspan="4">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style56">
                        <asp:SqlDataSource ID="SqlDataSource_emple" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [IDempleado], [nombre], [apellidos], [telefono], [dui], [correo] FROM [empleados]"></asp:SqlDataSource>
                    </td>
        <td class="auto-style47" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style52">
                    </td>
        <td class="auto-style29" colspan="4">
                        <asp:GridView ID="GbEmpleados" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDempleado" DataSourceID="SqlDataSource_emple" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GbEmpleados_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="IDempleado" HeaderText="IDempleado" ReadOnly="True" SortExpression="IDempleado" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="dui" HeaderText="dui" SortExpression="dui" />
                                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style56">
                        &nbsp;</td>
        <td class="auto-style28" colspan="2">
                        <asp:Button ID="btGuardar" runat="server" Height="39px" OnClick="btGuardar_Click" Text="Guardar Edicion" Width="152px" />
        </td>
        <td class="auto-style28" colspan="2">
                        <asp:Button ID="btEliminar" runat="server" Height="41px" OnClick="btEliminar_Click" Text="Eliminar empleado" Width="152px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style56">&nbsp;</td>
        <td class="auto-style28" colspan="4">&nbsp;</td>
    </tr>
    </table>
        </td>
    </tr>
</table>
</asp:Content>
