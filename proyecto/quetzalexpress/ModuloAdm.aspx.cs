using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using referenciaquetzal;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = "0.05";
    }

    quetzalSoapClient servicioadm = new quetzalSoapClient();

    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpPostedFile mifichero;
        mifichero = FileUploadimpuesto.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "impuestos";
        servicioadm.cargarDatos(tabla,ruta);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        HttpPostedFile mifichero;
        mifichero = FileUploadempleado.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "Empleado";
        servicioadm.cargarDatos(tabla, ruta);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panelcargamasiva.Visible = true;
        Panelgestionarcobros.Visible = false;
        Panelagregarcobro.Visible=false;
        Panelmodificarcobro.Visible = false;
        Panelinhabilitar.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panelgestionarcobros.Visible = true;
        Panelagregarcobro.Visible = false;
        Panelcargamasiva.Visible = false;
        Panelmodificarcobro.Visible = false;
        Panelinhabilitar.Visible = false;

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        servicioadm.InsertarActualizarEliminar(string.Format("insert into Impuesto(categoria,porcentaje,comision) values('{0}',{1},{2})",TextBox1.Text,TextBox2.Text,TextBox3.Text));
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panelagregarcobro.Visible = true;
        Panelgestionarcobros.Visible = true;
        Panelcargamasiva.Visible = false;
        Panelmodificarcobro.Visible = false;
        Panelinhabilitar.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Panelmodificarcobro.Visible = true;
        Panelgestionarcobros.Visible = true;
        Panelcargamasiva.Visible=false;
        Panelagregarcobro.Visible = false;
        Panelinhabilitar.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Panelmodificarcobro.Visible = false;
        Panelgestionarcobros.Visible = true;
        Panelcargamasiva.Visible = false;
        Panelagregarcobro.Visible = false;
        Panelinhabilitar.Visible = true;
    }
}