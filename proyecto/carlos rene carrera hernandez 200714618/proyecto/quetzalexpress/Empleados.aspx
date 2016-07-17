<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        width: 92px;
    }
    .auto-style9 {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<table class="auto-style2">
    <tr>
        <td class="auto-style8">dpi</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">nombres</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">apellidos</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">telefono</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">sueldo</td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">domicilio</td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">departamento</td>
        <td>
            <asp:DropDownList ID="departamentoe" runat="server" DataSourceID="depto" DataTextField="nombre" DataValueField="cod_depto">
            </asp:DropDownList>
            <asp:SqlDataSource ID="depto" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT DISTINCT * FROM [Departamento]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">sucursal</td>
        <td>
            <asp:DropDownList ID="sucursale" runat="server" DataSourceID="sucursal" DataTextField="nombre" DataValueField="nombre">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sucursal" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" SelectCommand="SELECT [nombre] FROM [Sucursal]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="agregar" Width="113px" OnClick="Button1_Click" />
</p>
<p>
    <asp:SqlDataSource ID="mostrarinsertare" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL)) AND (([sucursal] = @original_sucursal) OR ([sucursal] IS NULL AND @original_sucursal IS NULL))" InsertCommand="INSERT INTO [Empleado] ([nombres], [apellidos], [dpi], [telefono], [sueldo], [domicilio], [cod_depto], [sucursal]) VALUES (@nombres, @apellidos, @dpi, @telefono, @sueldo, @domicilio, @cod_depto, @sucursal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [nombres] = @nombres, [apellidos] = @apellidos, [dpi] = @dpi, [telefono] = @telefono, [sueldo] = @sueldo, [domicilio] = @domicilio, [cod_depto] = @cod_depto, [sucursal] = @sucursal WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL)) AND (([sucursal] = @original_sucursal) OR ([sucursal] IS NULL AND @original_sucursal IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_sucursal" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox9" Name="nombres" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox10" Name="apellidos" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" Name="dpi" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox11" Name="telefono" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox12" Name="sueldo" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TextBox13" Name="domicilio" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="departamentoe" Name="cod_depto" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="sucursale" Name="sucursal" PropertyName="SelectedValue" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="dpi" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="sueldo" Type="Decimal" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="cod_depto" Type="Int32" />
            <asp:Parameter Name="sucursal" Type="String" />
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
            <asp:Parameter Name="original_sucursal" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>

