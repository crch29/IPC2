using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

namespace servicioweb
{
    /// <summary>
    /// Summary description for quetzal
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class quetzal : System.Web.Services.WebService
    {

        SqlCommand instruccion;
        SqlConnection con;
        string datosconexion = "Data Source=CARLOS\\SQLEXPRESS;" + "Initial Catalog=Quetzalexpress; Integrated Security=true";

        [WebMethod]
        public void InsertarActualizarEliminar(string instruccioninsert)
        {
            con = new SqlConnection();
            con.ConnectionString = datosconexion;
            instruccion = new SqlCommand(instruccioninsert, con);
            con.Open();
            instruccion.ExecuteNonQuery();
            con.Close();
        }

        [WebMethod]
        public DataTable Consultarbasedatos(string instruccionselect)
        {
            DataTable tabla = new DataTable("mitabla");
            con = new SqlConnection();
            SqlCommand comando;
            con.ConnectionString = datosconexion;
            comando = new SqlCommand(instruccionselect, con);
            con.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.Fill(tabla);
            con.Close();
            return tabla;
        }

        [WebMethod]
        public void cargarDatos(string tabla, string ruta)
        {
            string instrucciones = string.Format("BULK INSERT {0} FROM '{1}' WITH (FIELDTERMINATOR=',',ROWTERMINATOR='\n')", tabla, ruta);
            con = new SqlConnection();
            con.ConnectionString = datosconexion;
            instruccion = new SqlCommand(instrucciones, con);
            con.Open();
            instruccion.ExecuteNonQuery();
            con.Close();
        }

        [WebMethod]
        public void saludo(string saludo)
        {
            Console.WriteLine("hola"+saludo);
        }
    }
}
