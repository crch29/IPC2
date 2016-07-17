<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModuloAdm.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {}
        .auto-style9 {}
        .auto-style10 {}
        .auto-style11 {
            width: 129px;
        }
        .auto-style12 {}
        .auto-style13 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CARGA MASIVA" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="GESTION DE COBROS" />
    <br />
</p>
    <p>
</p>
    <asp:Panel ID="Panelcargamasiva" runat="server" CssClass="auto-style8" Height="208px" Visible="False" Width="617px">
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CARGAR IMPUESTO" />
        <asp:FileUpload ID="FileUploadimpuesto" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="CARGAR EMPLEADO" />
        <asp:FileUpload ID="FileUploadempleado" runat="server" />
    </asp:Panel>
    <asp:Panel ID="Panelgestionarcobros" runat="server" CssClass="auto-style9" Height="56px" Visible="False" Width="567px">
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="AGREGAR COBRO" />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="MODIFICAR COBRO" />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="INHABILITAR COBRO" />
    </asp:Panel>
    <asp:Panel ID="Panelagregarcobro" runat="server" BackColor="White" CssClass="auto-style10" Height="256px" Visible="False" Width="610px">
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">CATEGORIA</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">PORCENTAJE</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">COMISION</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="AGREGAR" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceinsertar" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [categoria] = @original_categoria AND [porcentaje] = @original_porcentaje AND (([comision] = @original_comision) OR ([comision] IS NULL AND @original_comision IS NULL)) AND [estatus] = @original_estatus AND [precio_libra] = @original_precio_libra" InsertCommand="INSERT INTO Impuesto(categoria, porcentaje, comision) VALUES (@categoria, @porcentaje, @comision)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Impuesto]" UpdateCommand="UPDATE [Impuesto] SET [porcentaje] = @porcentaje, [comision] = @comision, [estatus] = @estatus, [precio_libra] = @precio_libra WHERE [categoria] = @original_categoria AND [porcentaje] = @original_porcentaje AND (([comision] = @original_comision) OR ([comision] IS NULL AND @original_comision IS NULL)) AND [estatus] = @original_estatus AND [precio_libra] = @original_precio_libra">
            <DeleteParameters>
                <asp:Parameter Name="original_categoria" Type="String" />
                <asp:Parameter Name="original_porcentaje" Type="Decimal" />
                <asp:Parameter Name="original_comision" Type="Decimal" />
                <asp:Parameter Name="original_estatus" Type="String" />
                <asp:Parameter Name="original_precio_libra" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="categoria" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="porcentaje" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TextBox3" Name="comision" PropertyName="Text" Type="Decimal" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
<p>
</p>
    <asp:Panel ID="Panelmodificarcobro" runat="server" CssClass="auto-style12" Height="278px" Visible="False" Width="618px">
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="categoria" DataSourceID="SqlDataSourceinsertar">
            <Columns>
                <asp:BoundField DataField="categoria" HeaderText="categoria" ReadOnly="True" SortExpression="categoria" />
                <asp:BoundField DataField="porcentaje" HeaderText="porcentaje" SortExpression="porcentaje" />
                <asp:BoundField DataField="comision" HeaderText="comision" SortExpression="comision" />
                <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                <asp:BoundField DataField="precio_libra" HeaderText="precio_libra" SortExpression="precio_libra" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
    <p>
</p>
    <asp:Panel ID="Panelinhabilitar" runat="server" CssClass="auto-style13" Height="212px" Visible="False" Width="616px">
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="categoria" DataSourceID="SqlDataSourceinsertar">
            <Columns>
                <asp:BoundField DataField="categoria" HeaderText="categoria" SortExpression="categoria" ReadOnly="True" />
                <asp:BoundField DataField="porcentaje" HeaderText="porcentaje" SortExpression="porcentaje" />
                <asp:BoundField DataField="comision" HeaderText="comision" SortExpression="comision" />
                <asp:BoundField DataField="estatus" HeaderText="estatus" SortExpression="estatus" />
                <asp:BoundField DataField="precio_libra" HeaderText="precio_libra" SortExpression="precio_libra" />
            </Columns>
        </asp:GridView>
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
</asp:Content>

