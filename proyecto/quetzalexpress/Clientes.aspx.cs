using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using referenciaquetzal;
using System.Data;
using devuelta;

public partial class Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private quetzalSoapClient servicio;
    private devueltaSoapClient uno;

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        
        uno =new devueltaSoapClient();
        string u = uno.HelloWorld("ola");
        
    }
   
}