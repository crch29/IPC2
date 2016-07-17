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
public class Item {
    private int cod_item, efectividad, bonus_pos, bonus_neg, rareza;
    private String nombre;
    boolean estado;
    
    public void setCoditem(int codigo){
        cod_item=codigo;
    }
    
    public void setNombre(String nomb){
        nombre=nomb;
    }
    
    public void setEstado(boolean est){
        estado=est;
    }
    
    public void setEfectividad(int efec){
        efectividad=efec;
    }
    
    public void setBonuspos(int bonuspos){
        bonus_pos=bonuspos;
    }
    
    public void setBonusneg(int bonusneg){
        bonus_neg=bonusneg;
    }
    
    public void setRareza(int rare){
        rareza=rare;
    }
    
    public int getCoditem(){
        return cod_item;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public boolean getEstado(){
       return estado;
    }
    
    public int getEfectividad(){
        return efectividad;
    }
    
    public int getBonuspos(){
        return bonus_pos;
    }
    
    public int getBonusneg(){
        return bonus_neg;
    }
    
    public int getRareza(){
        return rareza;
    }
}
