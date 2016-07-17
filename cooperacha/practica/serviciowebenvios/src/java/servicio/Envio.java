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
public class Envio {
    private int cod_envio;
    private String fecha_creacion;
    private double precio_envio;
    private String destino;
    private String fecha_entrega;
    private int cod_ruta;
    private int cod_donacion;
    private String estado;
    
    public void setCod_envio(int cod){
        cod_envio=cod;
    }
    
    public void setFecha_creacion(String fecha){
        fecha_creacion=fecha;
    }
    
    public void setPrecio_envio(double precio){
        precio_envio=precio;
    }
    
    public void setDestino(String dest){
        destino=dest;
    }
    
    public void setFecha_entrega(String fecha){
        fecha_entrega=fecha;
    }
    
    public void setCod_ruta(int cod){
        cod_ruta=cod;
    }
    
    public void setCod_donacion(int cod){
        cod_donacion=cod;
    }
    
    public void setEstado(String est){
        estado=est;
    }
    
    public int getCod_envio(){
        return cod_envio;
    }
    
    public String getFecha_creacion(){
        return fecha_creacion;
    }
    
    public double getPrecio_envio(){
        return precio_envio;
    }
    
    public String getDestino(){
        return destino;
    }
    
    public String getFecha_entrega(){
        return fecha_entrega;
    }
    
    public int getCod_ruta(){
        return cod_ruta;
    }
    
    public int getCod_donacion(){
        return cod_donacion;
    }
    
    public String getEstado(){
        return estado;
    }
}
