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
public class Sesion {
    private String fecha;
    private int cod_sesion,cod_usuario;
    
    public void setCodsesion(int codigo){
        cod_sesion=codigo;
    }
    
    public void setFechta(String fech){
        fecha=fech;
    }
    
    public void setCodusuario(int codigou){
        cod_usuario=codigou;
    }
    
    public int setCodsesion(){
        return cod_sesion;
    }
    
    public String setFechta(){
        return fecha;
    }
    
    public int setCodusuario(){
       return cod_usuario;
    }
}
