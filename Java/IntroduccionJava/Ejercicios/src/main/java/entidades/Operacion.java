/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

/**
 *
 * @author derek
 */
public class Operacion {
    private Integer numero1;
    private Integer numero2;

    public Operacion(Integer numero1, Integer numero2) {
        this.numero1 = numero1;
        this.numero2 = numero2;
    }

    public Operacion() {
    }
    
    public void setNumero1(Integer numero1){
        this.numero1 = numero1;
    }
    
    public void setNumero2(Integer numero2){
        this.numero2 = numero2;
    }
    
    public Integer getNumero1(){
        return numero1;
    }
    
    public Integer getNumero2(){
        return numero2;
    }
}
