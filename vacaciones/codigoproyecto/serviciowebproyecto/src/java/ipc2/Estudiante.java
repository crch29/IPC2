/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ipc2;

/**
 *
 * @author carlosrene
 */
public class Estudiante {
    private int cod_estudiante;
    private String nombre,apellido,carrera,universidad;
    
    public void setCodestudiante(int codigo){
        cod_estudiante=codigo;
    }
    
    public void setNombre(String nomb){
        nombre=nomb;
    }
    
     public void setApellido(String apell){
        apellido=apell;
    }
     
     public void setCarrera(String car){
        carrera=car;
    }
     
     public void setUniversidad(String uni){
        universidad=uni;
    }
     
     public int getCodestudiante(){
        return cod_estudiante;
    }
    
    public String getNombre(){
       return nombre;
    }
    
     public String getApellido(){
        return apellido;
    }
     
     public String getCarrera(){
        return carrera;
    }
     
     public String getUniversidad(){
        return universidad;
    }
     
     
}
