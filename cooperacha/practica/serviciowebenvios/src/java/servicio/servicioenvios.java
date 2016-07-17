/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicio;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.util.*;
import java.sql.*;

/**
 *
 * @author carlosrene
 */
@WebService(serviceName = "servicioenvios")
public class servicioenvios {

    ResultSet rs;


    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarDonaciones")
    public List<Donacion> consultarDonaciones() {
        List<Donacion> lista= new ArrayList<Donacion>();
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar("select d.cod_donacion, d.cod_usuario, d.cod_iniciativa, fecha, monto, d.cod_recompensa, d.aprobacion from Donacion as d join Recompensa as r on d.cod_recompensa=r.cod_recompensa where r.tipo='limitada' and d.aprobacion=false;");
                 while(rs.next()){
              Donacion donacion=new Donacion();
              donacion.setCod_donacion(rs.getInt("cod_donacion"));
              donacion.setCod_usuario(rs.getInt("cod_usuario"));
              donacion.setCod_iniciativa(rs.getInt("cod_iniciativa"));
              donacion.setFecha(rs.getString("fecha"));
              donacion.setMonto(rs.getDouble("monto"));
              donacion.setCod_recompensa(rs.getInt("cod_recompensa"));
              donacion.setAprobacion(rs.getString("aprobacion"));
              lista.add(donacion);
              
            }
            

           }catch(Exception e){

           
          }
            

            return lista;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "actualizardonaciones")
    public void actualizardonaciones(@WebParam(name = "cod_donacion") int cod_donacion) {
        try{
                conexiones con=new conexiones();
                con.conectar();
                con.agregar(String.format("update Donacion set aprobacion='true' where cod_donacion=%d;", cod_donacion));
                con.cerrar();
        }catch(Exception e){

           
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "crearenvio")
    public void crearenvio(@WebParam(name = "fecha_creacion") String fecha_creacion, @WebParam(name = "destino") String destino, @WebParam(name = "cod_donacion") int cod_donacion, @WebParam(name = "estado") String estado) {
       try{
                conexiones con=new conexiones();
                con.conectar();
                con.agregar(String.format("insert into Envio(fecha,destino,cod_donacion,estado) values('%s','%s',%d,'%s')",fecha_creacion,destino,cod_donacion,estado));
                con.cerrar();
        }catch(Exception e){

           
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "obtenerdirecciondonacion")
    public String obtenerdirecciondonacion(@WebParam(name = "cod_donacion") int cod_donacion) {
           String direccion=""; 
        
        try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(String.format("select direccion from Usuario where cod_usuario=(select cod_usuario from Donacion where cod_donacion=%d)", cod_donacion));
                 while(rs.next()){
              
               direccion= rs.getString("direccion");
              
            }
            

           }catch(Exception e){

           
          }
            return direccion;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarpaquetes")
    public List<Envio> consultarpaquetes() {
        List<Envio> lista= new ArrayList<Envio>();
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar("select * from Envio where estado='transito';");
                 while(rs.next()){
              Envio envio=new Envio();
              envio.setCod_envio(rs.getInt("cod_envio"));
              envio.setFecha_creacion(rs.getString("fecha"));
              envio.setPrecio_envio(rs.getDouble("precio"));
              envio.setDestino(rs.getString("destino"));
              envio.setFecha_entrega(rs.getString("fecha_entrega"));
              envio.setCod_ruta(rs.getInt("cod_ruta"));
              envio.setCod_donacion(rs.getInt("cod_donacion"));
              envio.setEstado(rs.getString("estado"));
              lista.add(envio);
              
            }
            

           }catch(Exception e){

           
          }
            return lista;
    }
    
   

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultaruta")
    public List<Ruta> consultaruta() {
        List<Ruta> lista= new ArrayList<Ruta>();
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar("select * from Ruta");
                 while(rs.next()){
              Ruta ruta=new Ruta();
              ruta.setCod_ruta(rs.getInt("cod_ruta"));
              ruta.setNombre(rs.getString("nombre"));
              ruta.setCosto(rs.getDouble("costo"));
              lista.add(ruta);
              
            }
            

           }catch(Exception e){

           
          }
            return lista;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarpaquetesRuta")
    public List<Envio> consultarpaquetesRuta() {
       List<Envio> lista= new ArrayList<Envio>();
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar("select * from Envio where estado='bodega';");
                 while(rs.next()){
              Envio envio=new Envio();
              envio.setCod_envio(rs.getInt("cod_envio"));
              envio.setFecha_creacion(rs.getString("fecha"));
              envio.setPrecio_envio(rs.getDouble("precio"));
              envio.setDestino(rs.getString("destino"));
              envio.setFecha_entrega(rs.getString("fecha_entrega"));
              envio.setCod_ruta(rs.getInt("cod_ruta"));
              envio.setCod_donacion(rs.getInt("cod_donacion"));
              envio.setEstado(rs.getString("estado"));
              lista.add(envio);
              
            }
            

           }catch(Exception e){

           
          }
            return lista;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "actualizarpaquete")
    public void actualizarpaquete(@WebParam(name = "cod_envio") int cod_envio) {
         try{
                conexiones con=new conexiones();
                con.conectar();
                con.agregar(String.format("update Envio set estado='bodega' where cod_envio=%d;", cod_envio));
                con.cerrar();
        }catch(Exception e){

           
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "asignarruta")
    public void asignarruta(@WebParam(name = "ruta") String ruta,@WebParam(name = "cod_envio") String cod_envio) {
         try{
                conexiones con=new conexiones();
                con.conectar();
                con.agregar(String.format("update Envio set cod_ruta=%s, estado='transentrega' where cod_envio=%s;",ruta, cod_envio));
                con.cerrar();
        }catch(Exception e){

           
        }
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarrutanombre")
    public String consultarrutanombre(@WebParam(name = "nombre") String nombre) {
         List<Ruta> lista= new ArrayList<Ruta>();
         try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(String.format("select cod_ruta from Ruta where nombre='%s';",nombre));
            while(rs.next()){
              Ruta ruta=new Ruta();
              ruta.setCod_ruta(rs.getInt("cod_ruta"));
              
              lista.add(ruta);
            }
            

           }catch(Exception e){

           
          }
            Ruta rut=lista.get(0);
            String codigoruta=String.valueOf(rut.getCod_ruta());
            return codigoruta;
    }

}
