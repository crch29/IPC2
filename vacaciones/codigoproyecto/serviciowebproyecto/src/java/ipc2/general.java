/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ipc2;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*; 
import java.util.*;



@WebService(serviceName = "general")
public class general {
    ResultSet rs;
    
    
        @WebMethod(operationName = "ingresar")
        public void ingresar(@WebParam(name = "instruccion") String instruccion){
            try{
                conexiones con=new conexiones();
                con.agregar(instruccion);
            }catch(Exception e){

            }

        }


        @WebMethod(operationName = "cerrarconexion")
        public void cerrarconexion() {
         conexiones conn = new conexiones();
         conn.cerrar();
        }

   
        @WebMethod(operationName = "generarconsultapreguntas")
        public List<Pregunta> generarconsulta(@WebParam(name = "cadenaconsulta") String cadenaconsulta) {
            List<Pregunta> lista= new ArrayList<Pregunta>();
            
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(cadenaconsulta);
                 while(rs.next()){
              Pregunta pregunta=new Pregunta();
              pregunta.setCodpregunta(rs.getInt("cod_pregunta"));
              pregunta.setCodcurso(rs.getInt("cod_curso"));
              pregunta.setDescripcion(rs.getString("descripcion"));
              pregunta.setRespuesta(rs.getString("respuesta"));
              pregunta.setTiempo(rs.getInt("tiempo"));
              pregunta.setestadoRespuesta(rs.getBoolean("estado_pregunta"));
              pregunta.setNivel(rs.getString("nivel"));
              pregunta.setPuntos(rs.getInt("puntos_exp"));
              pregunta.setRespuesta1(rs.getString("respuesta1"));
              pregunta.setRespuesta2(rs.getString("respuesta2"));
              lista.add(pregunta);
              
            }
            

           }catch(Exception e){

            }
            
            return lista;
        }

 
        @WebMethod(operationName = "consultalistas")
        public List consultalistas(@WebParam(name = "consulta") String consulta, @WebParam(name = "parametro") String parametro) {
           List<String> listacurso= new ArrayList<String>();
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(consulta);

            while(rs.next()){
            listacurso.add(rs.getString(parametro));
            }

            }catch(Exception e){

            }
            return listacurso;
        }

   
    @WebMethod(operationName = "consultarUsuario")
    public List<Usuario> consultarUsuario(@WebParam(name = "consultausuario") String consultausuario) {
        List<Usuario> listau= new ArrayList<Usuario>();
            
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(consultausuario);
                 while(rs.next()){
              Usuario usuario=new Usuario();
              usuario.setCodusuario(rs.getInt("cod_usuario"));
              usuario.setNombre(rs.getString("nombre"));
              usuario.setContraseña(rs.getString("contraseña"));
              usuario.setCarnet(rs.getInt("carnet"));
              usuario.setTipousuario(rs.getString("tipo_usuario"));
              usuario.setEstado(rs.getBoolean("estado_usuario"));
              listau.add(usuario);
            }
            }catch(Exception e){
                 System.out.println("este es el error");
            }
            
            return listau;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarestudiante")
    public List<Estudiante> consultarestudiante(@WebParam(name = "consultaestudiante") String consultaestudiante) {
        List<Estudiante> listae= new ArrayList<Estudiante>();
        try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(consultaestudiante);
                 while(rs.next()){
              Estudiante estudiante=new Estudiante();
              estudiante.setCodestudiante(rs.getInt("carnet"));
              estudiante.setNombre(rs.getString("nombre"));
              estudiante.setApellido(rs.getString("apellido"));
              estudiante.setCarrera(rs.getString("carrera"));
              estudiante.setUniversidad(rs.getString("universidad"));
              listae.add(estudiante);
            }
            }catch(Exception e){
                 System.out.println("este es el error");
            }
            
            return listae;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultarcurso")
    public List<Curso> consultarcurso(@WebParam(name = "consultacurso") String consultacurso) {
        List<Curso> listac= new ArrayList<Curso>();
            
            try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(consultacurso);
                 while(rs.next()){
              Curso curso=new Curso();
              curso.setCodcurso(rs.getInt("cod_curso"));
              curso.setNombre(rs.getString("nombre"));
              curso.setCarrera(rs.getInt("carrera"));
              curso.setEstadocurso(rs.getBoolean("estado"));
              listac.add(curso);
              
            }
            

           }catch(Exception e){

            }
            
            return listac;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "consultaritem")
    public List<Item> consultaritem(@WebParam(name = "consultaitem") String consultaitem) {
        List<Item> listai= new ArrayList<Item>();
        try{
                conexiones con=new conexiones();
                con.conectar();
                rs=con.consultar(consultaitem);
                 while(rs.next()){
              Item item = new Item();
              item.setCoditem(rs.getInt("cod_item"));
              item.setNombre(rs.getString("nombre"));
              item.setEstado(rs.getBoolean("estado"));
              item.setEfectividad(rs.getInt("efectividad"));
              item.setBonuspos(rs.getInt("bonus_pos"));
              item.setBonusneg(rs.getInt("bonus_neg"));
              item.setRareza(rs.getInt("rareza"));
              listai.add(item);
              
            }
            

           }catch(Exception e){

            }
            
            return listai;
        
    }




}
