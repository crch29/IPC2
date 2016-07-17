using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using referenciaquetzal;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    DataTable tabla;
    quetzalSoapClient servicio = new quetzalSoapClient();
    string dpi,nombres, apellidos, direccion, telefono, tarjeta;

    protected void Button2_Click(object sender, EventArgs e)
    {
        double costo=double.Parse(TextBox1.Text);
        int peso = int.Parse(TextBox2.Text);
        double impuesto = double.Parse(DropDownList1.SelectedValue.ToString());
        int comision = 5;
        double total = (((comision * peso) + (costo * impuesto)) * 0.05) + ((comision * peso) + (costo * impuesto));
        Label6.Text = total.ToString();
    }
    protected void cotizacion_Click(object sender, EventArgs e)
    {
        Panelcotizacion.Visible = true;
        Paneledicionperfil.Visible = false;
        panelconsultapaquetes.Visible = false;
        Panelinformacionpaquete.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox3.Enabled = true;
        TextBox3.ReadOnly = true;
        dpi = TextBox3.Text;
        tabla = new DataTable();
        tabla = servicio.Consultarbasedatos(string.Format("select nombres, apellidos, direccion, telefono, numerotarjeta from cliente where dpi='{0}';",dpi));
        nombres = tabla.Rows[0][0].ToString();
        apellidos = tabla.Rows[0][1].ToString();
        direccion = tabla.Rows[0][2].ToString();
        telefono = tabla.Rows[0][3].ToString();
        tarjeta = tabla.Rows[0][4].ToString();
        TextBox4.Text = nombres;
        TextBox5.Text = apellidos;
        TextBox6.Text = direccion;
        TextBox7.Text = telefono;
        TextBox12.Text = tarjeta;

    }
    protected void edicionperfil_Click(object sender, EventArgs e)
    {
        Paneledicionperfil.Visible = true;
        panelconsultapaquetes.Visible = false;
        Panelcotizacion.Visible = false;
        Panelinformacionpaquete.Visible = false;
    }
    protected void infopaquete_Click(object sender, EventArgs e)
    {
        panelconsultapaquetes.Visible = true;
        Paneledicionperfil.Visible = false;
        Panelcotizacion.Visible = false;
        Panelinformacionpaquete.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        servicio.InsertarActualizarEliminar(string.Format("update Cliente set nombres='{0}',apellidos='{1}',direccion='{2}',telefono='{3}',numerotarjeta='{4}' where dpi='{5}';",TextBox8.Text,TextBox9.Text,TextBox10.Text,TextBox11.Text,TextBox13.Text,TextBox3.Text));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Paneledicionperfil.Visible = false;
        panelconsultapaquetes.Visible = false;
        Panelcotizacion.Visible = false;
        Panelinformacionpaquete.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        tabla = new DataTable();
        tabla = servicio.Consultarbasedatos(string.Format("select * from Infopaquetes where cod_casilla={0}",TextBox14.Text));
        GridView1.DataSource = tabla;
        GridView1.DataBind();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            CheckBox ch = (CheckBox)GridView2.Rows[i].FindControl("checkbox1");
            if (ch.Checked == true)
            {
                
            }
        }
    }
    protected void Button6_Click1(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView2.Rows.Count; i++)
        {
            CheckBox ch = (CheckBox)GridView2.Rows[i].FindControl("checkbox1");
            Label lb=(Label)GridView2.Rows[i].FindControl("label1");
            if (ch.Checked == true)
            {
                string uno=lb.Text.ToString();
               servicio.Consultarbasedatos(string.Format("select * from Paquete where cod_paquete={0}", uno));
                
                
            }
        }
    }
}