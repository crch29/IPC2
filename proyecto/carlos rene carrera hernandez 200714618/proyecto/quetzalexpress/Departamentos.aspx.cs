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

    }

    quetzalSoapClient ss = new quetzalSoapClient();

    protected void Button1_Click(object sender, EventArgs e)
    {
        mostrarinsertarD.Insert();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpPostedFile mifichero;
        mifichero = FileUpload1.PostedFile;
        string tabla, ruta;
        ruta= mifichero.FileName;
        tabla = TextBox10.Text;
        ss.cargarDatos(tabla, ruta);
    }
}