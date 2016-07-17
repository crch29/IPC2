/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicio;

/**
 *
 * @author carlosrene
 */
public class Ruta {
    private int cod_ruta;
    private String nombre;
    private double costo;
    
    public void setCod_ruta(int cod){
        cod_ruta=cod;
    }
    
    public void setNombre(String nomb){
        nombre=nomb;
    }
    
    public void setCosto(double cost){
        costo=cost;
    }
    
    public int getCod_ruta(){
        return cod_ruta;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public double getCosto(){
        return costo;
    }
}
