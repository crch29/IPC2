<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 136px;
    }
    .auto-style11 {
        width: 126px;
    }
    .auto-style12 {
        width: 126px;
        height: 26px;
    }
    .auto-style13 {
        height: 26px;
    }
        .auto-style14 {}
        .auto-style16 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table class="auto-style2">
    <tr>
        <td class="auto-style11">dpi</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style16" Height="22px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">nombres</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">apellidos</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">nit</td>
        <td class="auto-style13">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">telefono</td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">direccion</td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">numero tarjeta</td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<p>
            <asp:Button ID="insertar" runat="server" CssClass="auto-style14" OnClick="Button2_Click" Text="insertar " Width="140px" />
    </p>
<table class="auto-style2">
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<p>
        <br />
    </p>
<p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

