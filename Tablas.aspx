<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurante.Master" AutoEventWireup="true" CodeBehind="Tablas.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.Tablas1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        width: 97px;
    }
    .auto-style16 {
        width: 115%;
    }
    .auto-style18 {
        text-align: center;
        height: 26px;
    }
    .auto-style19 {
        height: 26px;
    }
        .auto-style21 {
            text-align: center;
            width: 539px;
            height: 26px;
        }
        .auto-style22 {
            width: 539px;
        }
        .auto-style23 {
            width: 539px;
            height: 26px;
        }
        .auto-style24 {
            width: 586px;
            height: 26px;
        }
        .auto-style25 {
            width: 586px;
        }
        .auto-style26 {
            width: 948px;
            height: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style26">
        <tr>
            <td class="auto-style21">Tabla de empleados</td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style25">
                        &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style25">
                        <asp:DropDownList ID="ddlLisTabla" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre_area" DataValueField="nombre_area" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [areas]"></asp:SqlDataSource>
                    </td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style22">
                        <asp:GridView ID="gvTabla" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="202px" Width="322px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="idEmpleado" HeaderText="idEmpleado" SortExpression="idEmpleado" />
                                <asp:BoundField DataField="nombre_empleado" HeaderText="nombre_empleado" SortExpression="nombre_empleado" />
                                <asp:BoundField DataField="tipo_empleado" HeaderText="tipo_empleado" SortExpression="tipo_empleado" />
                                <asp:BoundField DataField="puesto" HeaderText="puesto" SortExpression="puesto" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [puestos] WHERE ([tipo_empleado] = @tipo_empleado)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlLisTabla" Name="tipo_empleado" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        </table>
</p>
<p>
</p>
</asp:Content>
