/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ipc2;

/**
 *
 * @author carlosre
 */
import javax.swing.*; 
import java.sql.*; 
import org.postgresql.Driver;


public class conexiones {
        public  Connection conexion; 
        public Statement sentencia; 
        public ResultSet resultado;

public void conectar() { 
    try { 
        Class.forName("org.postgresql.Driver"); 
    } catch (Exception e) { 
        JOptionPane.showMessageDialog(null, "No se pudo cargar el puente JDBC-ODBC."); 
        return; 
    } 
    try { 
        conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/preguntas", "postgres", "112016f2"); 
        sentencia = conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); 
        //JOptionPane.showMessageDialog(null, "Conexión establecida"); 
    } catch (Exception er) { 
        JOptionPane.showMessageDialog(null, "Error de conexion"); 
    } 
    }

    public void agregar (String cadena) throws Exception { 
    if (conexion == null) { 
        conectar(); 
    } 
    try { 
        sentencia.execute(cadena); 
    } catch (Exception er) { 
       throw new Exception();
    } }
    
    public ResultSet consultar(String consulta){
        try{
            resultado=sentencia.executeQuery(consulta);
            
        }catch(Exception e){
        
        }
    return resultado;
}
    
    
    public void cerrar(){
        try{
         sentencia.close();
        conexion.close();
        }catch(Exception er){
        
        }
        
     
        
    }
}
