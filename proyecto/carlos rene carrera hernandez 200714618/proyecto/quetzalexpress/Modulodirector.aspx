<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Modulodirector.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {}
        .auto-style9 {
            height: 192px;
        }
        .auto-style10 {
            height: 21px;
        }
        .auto-style11 {
            width: 95px;
        }
        .auto-style12 {
            height: 21px;
            width: 95px;
        }
        .auto-style13 {}
        .auto-style14 {}
        .auto-style15 {}
        .auto-style20 {}
        .auto-style21 {}
        .auto-style22 {}
        .auto-style23 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Button ID="contratacionbutton" runat="server" OnClick="contratacionbutton_Click" Text="contratacion" />
        <asp:Button ID="consultarequipobutton" runat="server" OnClick="consultarequipobutton_Click" Text="consultar equipo" />
        <asp:Button ID="modificarbutton" runat="server" Text="modificar contratacion" OnClick="modificarbutton_Click" />
        <asp:Button ID="despedirbutton" runat="server" Text="despedir" OnClick="despedirbutton_Click" />
        <br />
    </p>
    <asp:Panel ID="contratacion" runat="server" BackColor="White" CssClass="auto-style8" Height="291px" Width="600px" Visible="False">
        <table class="auto-style2 auto-style9">
            <tr>
                <td class="auto-style11">NOMBRES</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">APELLIDOS</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">DPI</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">TELEFONO</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">SUELDO</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">DOMICILIO</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">DEPARTAMENTO</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcelistadepto" DataTextField="nombre" DataValueField="cod_depto">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="contratarbutton" runat="server" CssClass="auto-style13" Text="contratar empleado" Width="144px" OnClick="contratarbutton_Click" />
        <br />
        <asp:Button ID="cargarbutton" runat="server" CssClass="auto-style14" OnClick="cargarbutton_Click" Text="cargar archivo" Width="144px" />
        <asp:FileUpload ID="cargarEmpleado" runat="server" CssClass="auto-style21" Height="24px" Width="229px" />
        <br />
    </asp:Panel>
    <asp:Panel ID="consultar" runat="server" BackColor="White" CssClass="auto-style15" Height="238px" Width="599px" Visible="False">
        <br />
        <asp:Label ID="Label2" runat="server" Text="CODIGO DIRECTOR"></asp:Label>
        <asp:DropDownList ID="DropDownListconsultar" runat="server" AutoPostBack="True" DataSourceID="listadespedir" DataTextField="nombres" DataValueField="cod_director" OnSelectedIndexChanged="DropDownListconsultar_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="empleados" runat="server" CssClass="auto-style20" Width="434px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    </asp:Panel>
    <asp:Panel ID="modificarpanel" runat="server" CssClass="auto-style22" Height="284px" Width="597px" Visible="False">
        <br />
        <asp:Label ID="Label3" runat="server" Text="CODIGO DIRECTOR"></asp:Label>
        <asp:DropDownList ID="DropDownListmodificarcontratacion" runat="server" DataSourceID="listadespedir" DataTextField="nombres" DataValueField="cod_director" OnSelectedIndexChanged="DropDownListmodificarcontratacion_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cod_empleado" DataSourceID="modificarcontratacion" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="cod_empleado" HeaderText="cod_empleado" InsertVisible="False" ReadOnly="True" SortExpression="cod_empleado" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="dpi" HeaderText="dpi" SortExpression="dpi" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="sueldo" HeaderText="sueldo" SortExpression="sueldo" />
                <asp:BoundField DataField="domicilio" HeaderText="domicilio" SortExpression="domicilio" />
                <asp:BoundField DataField="cod_depto" HeaderText="cod_depto" SortExpression="cod_depto" />
            </Columns>
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
    </asp:Panel>
    <asp:Panel ID="despedirpanel" runat="server" CssClass="auto-style23" Height="386px" Visible="False" Width="1030px">
        <br />
        <asp:Label ID="Label4" runat="server" Text="CODIGO DIRECTOR"></asp:Label>
        <asp:DropDownList ID="DropDownListdespedir" runat="server" DataSourceID="listadespedir" DataTextField="nombres" DataValueField="cod_director" OnSelectedIndexChanged="DropDownListdespedir_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cod_empleado" DataSourceID="modificarcontratacion" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="cod_empleado" HeaderText="cod_empleado" InsertVisible="False" ReadOnly="True" SortExpression="cod_empleado" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="dpi" HeaderText="dpi" SortExpression="dpi" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="sueldo" HeaderText="sueldo" SortExpression="sueldo" />
                <asp:BoundField DataField="domicilio" HeaderText="domicilio" SortExpression="domicilio" />
                <asp:BoundField DataField="cod_depto" HeaderText="cod_depto" SortExpression="cod_depto" />
            </Columns>
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
        <br />
    </asp:Panel>
    <p>
        </p>
    <asp:SqlDataSource ID="SqlDataSourcecontratacion" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))" InsertCommand="INSERT INTO [Empleado] ([nombres], [apellidos], [dpi], [telefono], [sueldo], [domicilio], [cod_depto]) VALUES (@nombres, @apellidos, @dpi, @telefono, @sueldo, @domicilio, @cod_depto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [nombres] = @nombres, [apellidos] = @apellidos, [dpi] = @dpi, [telefono] = @telefono, [sueldo] = @sueldo, [domicilio] = @domicilio, [cod_depto] = @cod_depto WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="dpi" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="sueldo" Type="Decimal" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="cod_depto" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="dpi" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="sueldo" Type="Decimal" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="cod_depto" Type="Int32" />
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceconsultar" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))" InsertCommand="INSERT INTO [Empleado] ([nombres], [apellidos], [dpi], [telefono], [sueldo], [domicilio], [cod_depto]) VALUES (@nombres, @apellidos, @dpi, @telefono, @sueldo, @domicilio, @cod_depto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [nombres] = @nombres, [apellidos] = @apellidos, [dpi] = @dpi, [telefono] = @telefono, [sueldo] = @sueldo, [domicilio] = @domicilio, [cod_depto] = @cod_depto WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="nombres" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="apellidos" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="dpi" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="telefono" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="sueldo" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TextBox6" Name="domicilio" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="cod_depto" PropertyName="SelectedValue" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellidos" Type="String" />
            <asp:Parameter Name="dpi" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="sueldo" Type="Decimal" />
            <asp:Parameter Name="domicilio" Type="String" />
            <asp:Parameter Name="cod_depto" Type="Int32" />
            <asp:Parameter Name="original_cod_empleado" Type="Int32" />
            <asp:Parameter Name="original_nombres" Type="String" />
            <asp:Parameter Name="original_apellidos" Type="String" />
            <asp:Parameter Name="original_dpi" Type="String" />
            <asp:Parameter Name="original_telefono" Type="String" />
            <asp:Parameter Name="original_sueldo" Type="Decimal" />
            <asp:Parameter Name="original_domicilio" Type="String" />
            <asp:Parameter Name="original_cod_depto" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcelistadepto" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Departamento] WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))" InsertCommand="INSERT INTO [Departamento] ([nombre], [cod_sucursal], [cod_director]) VALUES (@nombre, @cod_sucursal, @cod_director)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [nombre] = @nombre, [cod_sucursal] = @cod_sucursal, [cod_director] = @cod_director WHERE [cod_depto] = @original_cod_depto AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([cod_sucursal] = @original_cod_sucursal) OR ([cod_sucursal] IS NULL AND @original_cod_sucursal IS NULL)) AND (([cod_director] = @original_cod_director) OR ([cod_director] IS NULL AND @original_cod_director IS NULL))">
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
        <asp:SqlDataSource ID="listadespedir" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Director] WHERE [cod_director] = @original_cod_director AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL))" InsertCommand="INSERT INTO [Director] ([nombres], [apellidos]) VALUES (@nombres, @apellidos)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Director]" UpdateCommand="UPDATE [Director] SET [nombres] = @nombres, [apellidos] = @apellidos WHERE [cod_director] = @original_cod_director AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL))">
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
        <asp:SqlDataSource ID="modificarcontratacion" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Empleado] WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))" InsertCommand="INSERT INTO [Empleado] ([nombres], [apellidos], [dpi], [telefono], [sueldo], [domicilio], [cod_depto]) VALUES (@nombres, @apellidos, @dpi, @telefono, @sueldo, @domicilio, @cod_depto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleado]" UpdateCommand="UPDATE [Empleado] SET [nombres] = @nombres, [apellidos] = @apellidos, [dpi] = @dpi, [telefono] = @telefono, [sueldo] = @sueldo, [domicilio] = @domicilio, [cod_depto] = @cod_depto WHERE [cod_empleado] = @original_cod_empleado AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([dpi] = @original_dpi) OR ([dpi] IS NULL AND @original_dpi IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([sueldo] = @original_sueldo) OR ([sueldo] IS NULL AND @original_sueldo IS NULL)) AND (([domicilio] = @original_domicilio) OR ([domicilio] IS NULL AND @original_domicilio IS NULL)) AND (([cod_depto] = @original_cod_depto) OR ([cod_depto] IS NULL AND @original_cod_depto IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cod_empleado" Type="Int32" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_dpi" Type="String" />
                <asp:Parameter Name="original_telefono" Type="String" />
                <asp:Parameter Name="original_sueldo" Type="Decimal" />
                <asp:Parameter Name="original_domicilio" Type="String" />
                <asp:Parameter Name="original_cod_depto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="dpi" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="sueldo" Type="Decimal" />
                <asp:Parameter Name="domicilio" Type="String" />
                <asp:Parameter Name="cod_depto" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="dpi" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="sueldo" Type="Decimal" />
                <asp:Parameter Name="domicilio" Type="String" />
                <asp:Parameter Name="cod_depto" Type="Int32" />
                <asp:Parameter Name="original_cod_empleado" Type="Int32" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_apellidos" Type="String" />
                <asp:Parameter Name="original_dpi" Type="String" />
                <asp:Parameter Name="original_telefono" Type="String" />
                <asp:Parameter Name="original_sueldo" Type="Decimal" />
                <asp:Parameter Name="original_domicilio" Type="String" />
                <asp:Parameter Name="original_cod_depto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p>
        &nbsp;</p>
</asp:Content>

