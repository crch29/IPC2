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
        lotepanel.Visible = false;
        facturacionpanel.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            servicio.InsertarActualizarEliminar(string.Format("insert into Registropaquete(cod_casilla,peso,categoria,cod_lote) values({0},{1},'{2}',{3});", DropDownList1.SelectedValue.ToString(), TextBox1.Text, DropDownList2.SelectedValue.ToString(), DropDownList3.SelectedValue.ToString()));
        }
        else
        {
            servicio.InsertarActualizarEliminar(string.Format("insert into Registropaquete(cod_casilla,peso,categoria,precio,cod_lote) values({0},{1},'{2}',{3},{4});", DropDownList1.SelectedValue.ToString(), TextBox1.Text, DropDownList2.SelectedValue.ToString(), TextBox2.Text, DropDownList3.SelectedValue.ToString()));
        }

        DropDownList3.Enabled = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        HttpPostedFile mifichero;
        mifichero = FileUpload1.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "paquetes";
        servicio.cargarDatos(tabla, ruta);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        tabla = new DataTable();
        tabla = servicio.Consultarbasedatos(string.Format("select * from Cliente where apellidos like '{0}%';", TextBox3.Text));
        GridView1.DataSource = tabla;
        GridView1.DataBind();
    }
    protected void gestionsacbutton_Click(object sender, EventArgs e)
    {
        gestionsacpanel.Visible = true;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = false;
        lotepanel.Visible = false;
        facturacionpanel.Visible = false;
    }
    protected void gestionbodegabutton_Click(object sender, EventArgs e)
    {
        gestionsacpanel.Visible = false;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = true;
        lotepanel.Visible = false;
        facturacionpanel.Visible = false;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        gestionsacpanel.Visible = false;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = false;
        lotepanel.Visible = true;
        facturacionpanel.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        servicio.InsertarActualizarEliminar(string.Format("insert into Lote(fecha,cod_bodega,estatus_lote) values(getdate(),{0},'activo')", DropDownList4.SelectedValue));
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        servicio.InsertarActualizarEliminar(string.Format("update Lote set rastreo='en transito' where cod_lote={0} and estatus_lote='activo';", DropDownList3.SelectedValue.ToString()));
        servicio.InsertarActualizarEliminar(string.Format("update Paquete set estatus='B' where cod_lote={0};", DropDownList3.SelectedValue.ToString()));
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        servicio.InsertarActualizarEliminar(string.Format("update Lote set rastreo='en bodega',cod_bodega=9 where rastreo='en transito' and cod_bodega=8;"));
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
    protected void Button9_Click1(object sender, EventArgs e)
    {

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        facturacionpanel.Visible = true;
        gestionsacpanel.Visible = false;
        gestionpaquetespanel.Visible = false;
        gestionbodegapanel.Visible = false;
        lotepanel.Visible = false;
    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button13_Click(object sender, EventArgs e)
    {

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "boton")
        {
            int indice=int.Parse(e.CommandArgument.ToString());

            GridViewRow row = GridView2.Rows[indice];
            TextBox5.Text = row.DataItem.ToString();
            
        }
           
    }
}