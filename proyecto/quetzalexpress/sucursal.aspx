<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sucursal.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 47%;
    }
    .auto-style10 {
        height: 23px;
    }
    .auto-style11 {
        height: 23px;
        width: 189px;
    }
    .auto-style12 {
        width: 189px;
    }
    .auto-style13 {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<table class="auto-style2 auto-style9">
    <tr>
        <td class="auto-style11">nombre</td>
        <td class="auto-style10">
            <asp:TextBox ID="nombresucursal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">pais</td>
        <td>
            <asp:TextBox ID="paissucursal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">direccion</td>
        <td>
            <asp:TextBox ID="direccionsucursal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">telefono</td>
        <td>
            <asp:TextBox ID="telefonosucursal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">capacidad maxima empleados</td>
        <td>
            <asp:TextBox ID="capacidadsucursal" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="agregar" Width="164px" />
</p>
<asp:SqlDataSource ID="mostrarinsertars" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Sucursal] WHERE [cod_sucursal] = @original_cod_sucursal AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([pais] = @original_pais) OR ([pais] IS NULL AND @original_pais IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([capacidadmaxemp] = @original_capacidadmaxemp) OR ([capacidadmaxemp] IS NULL AND @original_capacidadmaxemp IS NULL))" InsertCommand="INSERT INTO [Sucursal] ([nombre], [pais], [direccion], [telefono], [capacidadmaxemp]) VALUES (@nombre, @pais, @direccion, @telefono, @capacidadmaxemp)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sucursal]" UpdateCommand="UPDATE [Sucursal] SET [nombre] = @nombre, [pais] = @pais, [direccion] = @direccion, [telefono] = @telefono, [capacidadmaxemp] = @capacidadmaxemp WHERE [cod_sucursal] = @original_cod_sucursal AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([pais] = @original_pais) OR ([pais] IS NULL AND @original_pais IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([capacidadmaxemp] = @original_capacidadmaxemp) OR ([capacidadmaxemp] IS NULL AND @original_capacidadmaxemp IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
        <asp:Parameter Name="original_nombre" Type="String" />
        <asp:Parameter Name="original_pais" Type="String" />
        <asp:Parameter Name="original_direccion" Type="String" />
        <asp:Parameter Name="original_telefono" Type="String" />
        <asp:Parameter Name="original_capacidadmaxemp" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="nombresucursal" Name="nombre" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="paissucursal" Name="pais" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="direccionsucursal" Name="direccion" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="telefonosucursal" Name="telefono" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="capacidadsucursal" Name="capacidadmaxemp" PropertyName="Text" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nombre" Type="String" />
        <asp:Parameter Name="pais" Type="String" />
        <asp:Parameter Name="direccion" Type="String" />
        <asp:Parameter Name="telefono" Type="String" />
        <asp:Parameter Name="capacidadmaxemp" Type="Int32" />
        <asp:Parameter Name="original_cod_sucursal" Type="Int32" />
        <asp:Parameter Name="original_nombre" Type="String" />
        <asp:Parameter Name="original_pais" Type="String" />
        <asp:Parameter Name="original_direccion" Type="String" />
        <asp:Parameter Name="original_telefono" Type="String" />
        <asp:Parameter Name="original_capacidadmaxemp" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
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

