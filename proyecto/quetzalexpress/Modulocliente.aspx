﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Modulocliente.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {}
    .auto-style9 {}
    .auto-style10 {}
    .auto-style11 {}
    .auto-style12 {
        margin-left: 82px;
    }
    .auto-style13 {
        margin-left: 155px;
    }
    .auto-style14 {
        margin-left: 64px;
    }
        .auto-style15 {
            width: 237px;
        }
        .auto-style16 {
            width: 237px;
            height: 30px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            margin-left: 290px;
        }
        .auto-style19 {
            margin-left: 319px;
        }
        .auto-style20 {
            margin-left: 314px;
        }
        .auto-style21 {
            margin-left: 318px;
        }
        .auto-style22 {
            font-size: x-large;
            font-style: italic;
            text-decoration: underline;
        }
        .auto-style23 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style24 {
            font-size: large;
            font-style: italic;
        }
    .auto-style25 {
        z-index: 1;
        left: 557px;
        top: 456px;
        position: absolute;
        height: 95px;
        width: 164px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Button ID="infopaquete" runat="server" Text="CONSULTA INFORMACION PAQUETES" OnClick="infopaquete_Click" />
        <asp:Button ID="Button1" runat="server" Text="INFORMACION INDIVIDUAL PAQUETE" OnClick="Button1_Click" />
        <asp:Button ID="cotizacion" runat="server" Text="COTIZACION" OnClick="cotizacion_Click" />
        <asp:Button ID="edicionperfil" runat="server" Text="EDICION PERFIL" OnClick="edicionperfil_Click" />
    </p>
    <p>
    </p>
<asp:Panel ID="panelconsultapaquetes" runat="server" CssClass="auto-style8" Height="354px" Width="809px" Visible="False">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="INGRESE CASILLA"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Ver Paquetes" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox14" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style18" GridLines="None" Height="135px">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:Label ID="Label10" runat="server" CssClass="auto-style25" Text="A=BODEGA USA B=TRANSITO C=BODEGA GUATEMALA"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <asp:Panel ID="Panelinformacionpaquete" runat="server" CssClass="auto-style9" Height="528px" Width="781px" Visible="False">
        <br />
        <br />
        <h1>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style22" Text="SELECCIONE SU PAQUETE"></asp:Label>
        </h1>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style19" DataKeyNames="cod_paquete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="185px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="cod_paquete" InsertVisible="False" SortExpression="cod_paquete">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("cod_paquete") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("cod_paquete") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style20" Height="16px" Width="197px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click1" Text="AMPLIAR INFORMACION" CssClass="auto-style21" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" DeleteCommand="DELETE FROM [Paquete] WHERE [cod_paquete] = @original_cod_paquete AND (([estatus] = @original_estatus) OR ([estatus] IS NULL AND @original_estatus IS NULL)) AND (([cod_lote] = @original_cod_lote) OR ([cod_lote] IS NULL AND @original_cod_lote IS NULL)) AND (([categoria] = @original_categoria) OR ([categoria] IS NULL AND @original_categoria IS NULL)) AND [peso] = @original_peso AND [precio] = @original_precio AND (([cod_casilla] = @original_cod_casilla) OR ([cod_casilla] IS NULL AND @original_cod_casilla IS NULL))" InsertCommand="INSERT INTO [Paquete] ([estatus], [cod_lote], [categoria], [peso], [precio], [cod_casilla]) VALUES (@estatus, @cod_lote, @categoria, @peso, @precio, @cod_casilla)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paquete]" UpdateCommand="UPDATE [Paquete] SET [estatus] = @estatus, [cod_lote] = @cod_lote, [categoria] = @categoria, [peso] = @peso, [precio] = @precio, [cod_casilla] = @cod_casilla WHERE [cod_paquete] = @original_cod_paquete AND (([estatus] = @original_estatus) OR ([estatus] IS NULL AND @original_estatus IS NULL)) AND (([cod_lote] = @original_cod_lote) OR ([cod_lote] IS NULL AND @original_cod_lote IS NULL)) AND (([categoria] = @original_categoria) OR ([categoria] IS NULL AND @original_categoria IS NULL)) AND [peso] = @original_peso AND [precio] = @original_precio AND (([cod_casilla] = @original_cod_casilla) OR ([cod_casilla] IS NULL AND @original_cod_casilla IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cod_paquete" Type="Int32" />
                <asp:Parameter Name="original_estatus" Type="String" />
                <asp:Parameter Name="original_cod_lote" Type="Int32" />
                <asp:Parameter Name="original_categoria" Type="String" />
                <asp:Parameter Name="original_peso" Type="Int32" />
                <asp:Parameter Name="original_precio" Type="Decimal" />
                <asp:Parameter Name="original_cod_casilla" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="estatus" Type="String" />
                <asp:Parameter Name="cod_lote" Type="Int32" />
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="peso" Type="Int32" />
                <asp:Parameter Name="precio" Type="Decimal" />
                <asp:Parameter Name="cod_casilla" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="estatus" Type="String" />
                <asp:Parameter Name="cod_lote" Type="Int32" />
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="peso" Type="Int32" />
                <asp:Parameter Name="precio" Type="Decimal" />
                <asp:Parameter Name="cod_casilla" Type="Int32" />
                <asp:Parameter Name="original_cod_paquete" Type="Int32" />
                <asp:Parameter Name="original_estatus" Type="String" />
                <asp:Parameter Name="original_cod_lote" Type="Int32" />
                <asp:Parameter Name="original_categoria" Type="String" />
                <asp:Parameter Name="original_peso" Type="Int32" />
                <asp:Parameter Name="original_precio" Type="Decimal" />
                <asp:Parameter Name="original_cod_casilla" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Panel>
<p>
    </p>
<asp:Panel ID="Panelcotizacion" runat="server" CssClass="auto-style10" Height="236px" Width="627px" Visible="False">
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="COSTO PAQUETE"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="PESO"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13" Width="112px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="CATEGORIA"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style12" DataSourceID="SqlDataSourcecategoria" DataTextField="categoria" DataValueField="porcentaje">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourcecategoria" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalexpressConnectionString %>" SelectCommand="SELECT * FROM [Impuesto]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CALCULAR ENVIO" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="TOTAL=Q" CssClass="auto-style23"></asp:Label>
    &nbsp;
    <asp:Label ID="Label6" runat="server" CssClass="auto-style24"></asp:Label>
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
<asp:Panel ID="Paneledicionperfil" runat="server" CssClass="auto-style11" Height="299px" Width="617px" Visible="False">
    <br />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="INGRESE DPI"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="RECUPERAR DATOS" />
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="MODIFICAR DATOS" />
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style15">NOMBRE</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">APELLIDO</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">DIRECCION</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">TELEFONO</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">TARJETA</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
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
</asp:Content>

