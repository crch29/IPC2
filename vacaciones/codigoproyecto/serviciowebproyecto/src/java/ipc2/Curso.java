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
public class Curso {
    private int cod_curso,carrera;
    private String nombre;
    private boolean estado;
    
    public void setCodcurso(int codigo){
        cod_curso=codigo;
    }
    
    public void setNombre(String nomb){
        nombre=nomb;
    }
    
    public void setCarrera(int car){
        carrera=car;
    }
    
    public void setEstadocurso(boolean est){
           estado=est;
    }
    
     public int getCodcurso(){
        return cod_curso;
    }
    
    public String getNombre(){
       return nombre;
    }
    
    public int getCarrera(){
        return carrera;
    }
    
    /**
     *
     * @return
     */
    public boolean getEstadocurso(){
           return estado;
    }
}
