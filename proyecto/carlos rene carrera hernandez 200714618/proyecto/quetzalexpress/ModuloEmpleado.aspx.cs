using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using referenciaquetzal;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    quetzalSoapClient servicio = new quetzalSoapClient();
    DataTable tabla;

    protected void gestionpaquetesbutton_Click(object sender, EventArgs e)
    {
        gestionpaquetespanel.Visible = true;
        gestionsacpanel.Visible = false;
        gestionbodegapanel.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        servicio.InsertarActualizarEliminar(string.Format("insert into Registropaquete(cod_casilla,peso,categoria,precio) values({0},{1},'{2}',{3})",DropDownList1.SelectedValue.ToString(),TextBox1.Text,DropDownList2.SelectedValue.ToString(),TextBox2.Text));
        DropDownList3.Enabled = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        HttpPostedFile mifichero;
        mifichero = FileUpload1.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "Paquetes";
        servicio.cargarDatos(tabla, ruta);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        tabla = new DataTable();
        tabla = servicio.Consultarbasedatos(string.Format("select * from Cliente where apellidos like '{0}%';",TextBox3.Text));
        GridView1.DataSource = tabla;
        GridView1.DataBind();
    }
    protected void gestionsacbutton_Click(object sender, EventArgs e)
    {
        gestionsacpanel.Visible = true;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = false;
    }
    protected void gestionbodegabutton_Click(object sender, EventArgs e)
    {
        gestionsacpanel.Visible = false;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        HttpPostedFile mifichero;
        mifichero = FileUpload1.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "Bodega";
        servicio.cargarDatos(tabla, ruta);
    }
}