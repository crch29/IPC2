using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using referenciaquetzal;
using System.Data;

public partial class Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private quetzalSoapClient servicio;


   
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        servicio = new quetzalSoapClient();
        string dato = string.Format("insert into Cliente(nombres,apellidos,nit,telefono,direccion,numerotarjeta,dpi) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}');", TextBox9.Text, TextBox10.Text, TextBox11.Text, TextBox12.Text, TextBox13.Text, TextBox14.Text, TextBox8.Text);
        servicio.InsertarActualizarEliminar(dato);

    }
   
}