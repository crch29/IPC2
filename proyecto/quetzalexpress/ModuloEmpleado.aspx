<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModuloEmpleado.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {}
    .auto-style9 {}
    .auto-style10 {}
    .auto-style11 {
        width: 225px;
    }
        .auto-style12 {}
        .auto-style13 {}
        .auto-style14 {}
        .auto-style15 {
            width: 201px;
        }
    .auto-style16 {}
        .auto-style17 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Button ID="gestionpaquetesbutton" runat="server" OnClick="gestionpaquetesbutton_Click" Text="GESTION PAQUETES" />
        <asp:Button ID="gestionsacbutton" runat="server" Text="GESTION SAC" OnClick="gestionsacbutton_Click" />
        <asp:Button ID="gestionbodegabutton" runat="server" Text="GESTION BODEGA" OnClick="gestionbodegabutton_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Text="LOTES" Width="219px" OnClick="Button2_Click" />
        <asp:SqlDataSource ID="SqlDataSourcesucursal" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" SelectCommand="SELECT Sucursal.cod_sucursal, Sucursal.nombre, Sucursal.direccion, Sucursal.telefono, Sucursal.capacidadmaxemp, Sucursal.pais, Lote.cod_lote, Lote.estatus_lote FROM Sucursal INNER JOIN Bodega ON Sucursal.cod_sucursal = Bodega.cod_sucursal INNER JOIN Lote ON Bodega.cod_bodega = Lote.cod_bodega WHERE (Lote.estatus_lote = 'activo')"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Seleccione Sucursal"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourcesucursal" DataTextField="nombre" DataValueField="cod_lote" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" Text="enviar paquetes sucursal" OnClick="Button3_Click" />
        <asp:Button ID="Button8" runat="server" CssClass="auto-style16" OnClick="Button8_Click" Text="recibir paquetes" Width="206px" />
    </p>
<p>
        <br />
    </p>
    <asp:Panel ID="gestionpaquetespanel" runat="server" CssClass="auto-style8" Height="791px" Visible="False" Width="652px">
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">CASILLA</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcecodigocasilla" DataTextField="cod_casilla" DataValueField="cod_casilla">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourcecodigocasilla" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Casilla] WHERE [cod_casilla] = @original_cod_casilla AND (([cod_cliente] = @original_cod_cliente) OR ([cod_cliente] IS NULL AND @original_cod_cliente IS NULL))" InsertCommand="INSERT INTO [Casilla] ([cod_cliente]) VALUES (@cod_cliente)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Casilla]" UpdateCommand="UPDATE [Casilla] SET [cod_cliente] = @cod_cliente WHERE [cod_casilla] = @original_cod_casilla AND (([cod_cliente] = @original_cod_cliente) OR ([cod_cliente] IS NULL AND @original_cod_cliente IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_cod_casilla" Type="Int32" />
                            <asp:Parameter Name="original_cod_cliente" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cod_cliente" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cod_cliente" Type="Int32" />
                            <asp:Parameter Name="original_cod_casilla" Type="Int32" />
                            <asp:Parameter Name="original_cod_cliente" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">PESO</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">CATEGORIA</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceimpuesto" DataTextField="categoria" DataValueField="categoria">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceimpuesto" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [categoria] = @original_categoria AND [porcentaje] = @original_porcentaje AND (([comision] = @original_comision) OR ([comision] IS NULL AND @original_comision IS NULL)) AND [estatus] = @original_estatus AND [precio_libra] = @original_precio_libra" InsertCommand="INSERT INTO [Impuesto] ([categoria], [porcentaje], [comision], [estatus], [precio_libra]) VALUES (@categoria, @porcentaje, @comision, @estatus, @precio_libra)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT categoria, comision, estatus, precio_libra, porcentaje FROM Impuesto WHERE (estatus = 'activado')" UpdateCommand="UPDATE [Impuesto] SET [porcentaje] = @porcentaje, [comision] = @comision, [estatus] = @estatus, [precio_libra] = @precio_libra WHERE [categoria] = @original_categoria AND [porcentaje] = @original_porcentaje AND (([comision] = @original_comision) OR ([comision] IS NULL AND @original_comision IS NULL)) AND [estatus] = @original_estatus AND [precio_libra] = @original_precio_libra">
                        <DeleteParameters>
                            <asp:Parameter Name="original_categoria" Type="String" />
                            <asp:Parameter Name="original_porcentaje" Type="Decimal" />
                            <asp:Parameter Name="original_comision" Type="Decimal" />
                            <asp:Parameter Name="original_estatus" Type="String" />
                            <asp:Parameter Name="original_precio_libra" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="categoria" Type="String" />
                            <asp:Parameter Name="porcentaje" Type="Decimal" />
                            <asp:Parameter Name="comision" Type="Decimal" />
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="precio_libra" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="porcentaje" Type="Decimal" />
                            <asp:Parameter Name="comision" Type="Decimal" />
                            <asp:Parameter Name="estatus" Type="String" />
                            <asp:Parameter Name="precio_libra" Type="Int32" />
                            <asp:Parameter Name="original_categoria" Type="String" />
                            <asp:Parameter Name="original_porcentaje" Type="Decimal" />
                            <asp:Parameter Name="original_comision" Type="Decimal" />
                            <asp:Parameter Name="original_estatus" Type="String" />
                            <asp:Parameter Name="original_precio_libra" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">PRECIO</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Registro Paquete" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Registrar Paquetes" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
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
        <br />
        <br />
</asp:Panel>
    <p>
    </p>
    <asp:Panel ID="gestionbodegapanel" runat="server" CssClass="auto-style9" Height="351px" Visible="False" Width="746px">
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="cargar archivo" />
        <asp:FileUpload ID="FileUpload2" runat="server" />
</asp:Panel>
    <p>
    </p>
    <asp:Panel ID="gestionsacpanel" runat="server" CssClass="auto-style10" Height="281px" Visible="False" Width="590px">
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Facturar" Width="88px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="INGRESE APELLIDO"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style13" Width="132px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="BUSCAR" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
    <p>
        </p>
    <asp:Panel ID="lotepanel" runat="server" CssClass="auto-style14" Height="359px" Visible="False" Width="773px">
        <br />
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">BODEGA</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="lotes" DataTextField="nombre" DataValueField="cod_bodega" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>GUATEMALA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="lotes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Bodega] WHERE [cod_bodega] = @original_cod_bodega AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL))" InsertCommand="INSERT INTO [Bodega] ([cod_sucursal]) VALUES (@cod_sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Bodega.cod_bodega, Bodega.cod_sucursal, Sucursal.nombre FROM Bodega INNER JOIN Sucursal ON Bodega.cod_sucursal = Sucursal.cod_sucursal" UpdateCommand="UPDATE [Bodega] SET [cod_sucursal] = @cod_sucursal WHERE [cod_bodega] = @original_cod_bodega AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_cod_bodega" Type="Int32" />
                            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="cod_sucursal" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cod_sucursal" Type="Int32" />
                            <asp:Parameter Name="original_cod_bodega" Type="Int32" />
                            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click1" Text="generar lote" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <asp:Panel ID="facturacionpanel" runat="server" CssClass="auto-style17" Height="530px" Visible="False" Width="826px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="ingrese casilla"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="181px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click1" Text="buscar paquetes" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_paquete" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="cod_paquete" InsertVisible="False" SortExpression="cod_paquete">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("cod_paquete") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("cod_paquete") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                <asp:BoundField DataField="cod_lote" HeaderText="cod_lote" SortExpression="cod_lote" />
                <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" />
                <asp:BoundField DataField="peso" HeaderText="peso" SortExpression="peso" />
                <asp:BoundField DataField="cod_casilla" HeaderText="cod_casilla" SortExpression="cod_casilla" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button12" runat="server" CommandArgument=" <%# Container.DataItemIndex %>" CommandName="boton" Text="detalle" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Button ID="Button11" runat="server" Text="Button" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" SelectCommand="SELECT * FROM [Paquete]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox5" runat="server" Width="732px"></asp:TextBox>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

