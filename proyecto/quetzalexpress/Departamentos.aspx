<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Departamentos.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 0px;
    }
    .auto-style10 {
        width: 134px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<table class="auto-style2">
    <tr>
        <td class="auto-style10">nombre</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style8"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">codigo sucursal</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sucursales" DataTextField="nombre" DataValueField="cod_sucursal">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">codigo director<br />
            </td>
        <td>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourcedirectores" DataTextField="cod_director" DataValueField="cod_director">
            </asp:DropDownList>
        </td>
    </tr>
</table>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="agregar" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_depto" DataSourceID="SqlDataSourcetabladepto">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cod_depto" HeaderText="cod_depto" InsertVisible="False" ReadOnly="True" SortExpression="cod_depto" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="cod_sucursal" HeaderText="cod_sucursal" SortExpression="cod_sucursal" />
            <asp:BoundField DataField="cod_director" HeaderText="cod_director" SortExpression="cod_director" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="cargar" />
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
    <asp:SqlDataSource ID="sucursales" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Sucursal] WHERE [cod_sucursal] = @original_cod_sucursal AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([pais] = @original_pais) OR ([pais] IS NULL AND @original_pais IS NULL))" InsertCommand="INSERT INTO [Sucursal] ([nombre], [pais]) VALUES (@nombre, @pais)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cod_sucursal], [nombre], [pais] FROM [Sucursal]" UpdateCommand="UPDATE [Sucursal] SET [nombre] = @nombre, [pais] = @pais WHERE [cod_sucursal] = @original_cod_sucursal AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([pais] = @original_pais) OR ([pais] IS NULL AND @original_pais IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_pais" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_pais" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcedirectores" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Director] WHERE [cod_director] = @original_cod_director AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL))" InsertCommand="INSERT INTO [Director] ([nombres], [apellidos]) VALUES (@nombres, @apellidos)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Director]" UpdateCommand="UPDATE [Director] SET [nombres] = @nombres, [apellidos] = @apellidos WHERE [cod_director] = @original_cod_director AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_cod_director" Type="Int32" />
                    <asp:Parameter Name="original_nombres" Type="String" />
                    <asp:Parameter Name="original_apellidos" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombres" Type="String" />
                    <asp:Parameter Name="apellidos" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombres" Type="String" />
                    <asp:Parameter Name="apellidos" Type="String" />
                    <asp:Parameter Name="original_cod_director" Type="Int32" />
                    <asp:Parameter Name="original_nombres" Type="String" />
                    <asp:Parameter Name="original_apellidos" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <asp:SqlDataSource ID="mostrarinsertarD" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Departamento] WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))" InsertCommand="INSERT INTO [Departamento] ([nombre], [cod_sucursal], [cod_director]) VALUES (@nombre, @cod_sucursal, @cod_director)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [nombre] = @nombre, [cod_sucursal] = @cod_sucursal, [cod_director] = @cod_director WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_cod_director" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox8" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="cod_sucursal" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList2" Name="cod_director" PropertyName="SelectedValue" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="cod_sucursal" Type="Int32" />
            <asp:Parameter Name="cod_director" Type="Int32" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_cod_director" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcetabladepto" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Departamento] WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))" InsertCommand="INSERT INTO [Departamento] ([nombre], [cod_sucursal], [cod_director]) VALUES (@nombre, @cod_sucursal, @cod_director)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [nombre] = @nombre, [cod_sucursal] = @cod_sucursal, [cod_director] = @cod_director WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_cod_director" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="cod_sucursal" Type="Int32" />
            <asp:Parameter Name="cod_director" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="cod_sucursal" Type="Int32" />
            <asp:Parameter Name="cod_director" Type="Int32" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_nombre" Type="String" />
            <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
            <asp:Parameter Name="original_cod_director" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>

