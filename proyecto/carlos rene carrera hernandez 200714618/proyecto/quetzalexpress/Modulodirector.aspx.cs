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



    quetzalSoapClient service = new quetzalSoapClient();

    protected void cargarbutton_Click(object sender, EventArgs e)
    {
        HttpPostedFile mifichero;
        mifichero = cargarEmpleado.PostedFile;
        string tabla, ruta;
        ruta = mifichero.FileName;
        tabla = "Empleado";
        service.cargarDatos(tabla, ruta);
    }
  
    protected void contratarbutton_Click(object sender, EventArgs e)
    {
        SqlDataSourceconsultar.Insert();
    }
    protected void contratacionbutton_Click(object sender, EventArgs e)
    {
        contratacion.Visible = true;
        consultar.Visible = false;
        modificarpanel.Visible = false;
        despedirpanel.Visible = false;
    }
    protected void consultarequipobutton_Click(object sender, EventArgs e)
    {
        contratacion.Visible = false;
        consultar.Visible = true;
        modificarpanel.Visible = false;
        despedirpanel.Visible = false;
    }
    protected void modificarbutton_Click(object sender, EventArgs e)
    {
        modificarpanel.Visible = true;
        contratacion.Visible = false;
        consultar.Visible = false;
        despedirpanel.Visible = false;
    }
   
    
    protected void despedirbutton_Click(object sender, EventArgs e)
    {
        despedirpanel.Visible = true;
        modificarpanel.Visible = false;
        contratacion.Visible = false;
        consultar.Visible = false;
    }
    protected void DropDownListmodificarcontratacion_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        modificarcontratacion.SelectCommand = string.Format("SELECT * FROM [Empleado] WHERE [cod_depto] in (SELECT [cod_depto] FROM [Departamento] WHERE [cod_director] = {0})", DropDownListmodificarcontratacion.SelectedValue.ToString());
    }
    protected void DropDownListconsultar_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable tabla = new DataTable();
        tabla = service.Consultarbasedatos(string.Format("select * from empleado where cod_depto in (select Departamento.cod_depto from Departamento where cod_director={0});", DropDownListconsultar.SelectedValue.ToString()));
        empleados.DataSource = tabla;
        empleados.DataBind();
    }


    protected void DropDownListdespedir_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        modificarcontratacion.SelectCommand = string.Format("SELECT * FROM [Empleado] WHERE [cod_depto] in (SELECT [cod_depto] FROM [Departamento] WHERE [cod_director] = {0})",DropDownListdespedir.SelectedValue.ToString());
    }
}