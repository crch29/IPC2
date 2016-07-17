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
public class Usuario {
    private int cod_usuarios ,carnet;
    private String nombre,contraseña,tipo_usuario;
    private boolean estado;
    
    /**
     *
     * @param codigo
     */
    public void setCodusuario(int codigo){
        cod_usuarios=codigo;
    }
    
    /**
     *
     * @param nomb
     */
    public void setNombre(String nomb){
        nombre=nomb;
    }
    
    public void setContraseña(String password){
        contraseña=password;
    }
    
    public void setTipousuario(String tipuser){
        tipo_usuario=tipuser;
    }
    
    public void setCarnet(int carne){
        carnet=carne;
    }
    
    public void setEstado(boolean estad){
        estado=estad;
    }
    
    /**
     *
     * @return
     */
    public int getCodigousuario(){
        return cod_usuarios;
    }
    
    /**
     *
     * @return
     */
    public String getNombre(){
        return nombre;
    }
    
    /**
     *
     * @return
     */
    public String getContraseña(){
        return contraseña;
    }
    
    /**
     *
     * @return
     */
    public int getCarnet(){
        return carnet;
    }
    
    /**
     *
     * @return
     */
    public String getTipousuario(){
        return tipo_usuario;
    }
    
    /**
     *
     * @return
     */
    public boolean getEstado(){
        return estado;
    }
}
