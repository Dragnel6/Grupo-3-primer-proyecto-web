<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tablas.aspx.cs" Inherits="Grupo_3_primer_proyecto_web.Tablas" %>

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
            width: 384px;
        }
        .auto-style3 {
            width: 384px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 384px;
            text-align: center;
        }
        .auto-style6 {
            width: 541px;
        }
        .auto-style7 {
            width: 541px;
            text-align: center;
        }
        .auto-style8 {
            width: 541px;
            height: 26px;
        }
        .auto-style9 {
            width: 541px;
            height: 67px;
        }
        .auto-style10 {
            width: 384px;
            height: 67px;
        }
        .auto-style11 {
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="btHomeTa" runat="server" Height="33px" OnClick="btHome_Click" Text="Principal" Width="125px" />
                    </td>
                    <td class="auto-style5">Tablas de consulta</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlLisTabla" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre_area" DataValueField="nombre_area" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [areas]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
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
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td aria-haspopup="True">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
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
        </div>
    </form>
</body>
</html>
