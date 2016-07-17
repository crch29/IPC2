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
public class Pregunta {
    private int cod_pregunta,tiempo,cod_curso,puntos_exp;
    private String descripcion,respuesta,respuesta1,respuesta2,nivel;
    private boolean estado_pregunta;
    
    public void setCodpregunta(int cod){
        cod_pregunta=cod;
    }
    
    public void setCodcurso(int codigo){
        cod_curso=codigo;
    }
    
    public void setPuntos(int pun){
        puntos_exp=pun;
    }
    
    public void setDescripcion(String pregunta){
        descripcion=pregunta;
    }
    
    public void setRespuesta(String resp){
        respuesta=resp;
    }
    
    public void setRespuesta1(String resp){
        respuesta1=resp;
    }
    
    public void setRespuesta2(String resp){
        respuesta2=resp;
    }
    
    public void setNivel(String niv){
        nivel=niv;
    }
    
    public void setestadoRespuesta(boolean est){
        estado_pregunta=est;
    }
    
    public void setTiempo(int tiemp){
        tiempo=tiemp;
    }
    
    public int getCodpregunta(){
       return cod_pregunta;
    }
    
    public int getCodcurso(){
        return cod_curso;
    }
    
    public int getPuntos(){
        return puntos_exp;
    }
    
    public String getDescripcion(){
        return descripcion;
    }
    
    public String getRespuesta(){
        return respuesta;
    }
    
    public String getRespuesta1(){
        return respuesta1;
    }
    
    /**
     *
     * @return
     */
    public String getRespuesta2(){
        return respuesta2;
    }
    
    public String getNivel(){
        return nivel;
    }
    
    public boolean getestadoRespuesta(){
        return estado_pregunta;
    }
    
    public int getTiempo(){
       return tiempo;
    }
}
