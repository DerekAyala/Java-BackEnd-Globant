/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import java.util.Scanner;
import entidades.Operacion;

/**
 *
 * @author derek
 */
public class OperacionServicios {
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Operacion crearOperacion(){
        Operacion o = new Operacion();
        System.out.println("Ingresa numero 1: ");
        o.setNumero1(leer.nextInt());
        System.out.println("Ingresa numero 2: ");
        o.setNumero2(leer.nextInt());
        return o;
    }
    
    public Integer sumar(Operacion o){
        return o.getNumero1() + o.getNumero2();
    }
    
    public Integer restar(Operacion o){
        return o.getNumero1() - o.getNumero2();
    }
    
    public Integer multiplicar(Operacion o){
        int resultado;
        if (o.getNumero1().equals(0) || o.getNumero2().equals(0)){
            resultado = 0;
            System.out.println("Todo numero multiplicado por 0 da 0");
        } else {
            resultado = o.getNumero1() * o.getNumero2();
        }
        return resultado;
    }
    
    public Double dividir(Operacion o){
        double resultado;
        if (o.getNumero1().equals(0) || o.getNumero2().equals(0)){
            resultado = 0;
            System.out.println("No se puede dividir entre 0");
        } else {
            resultado = ((double)o.getNumero1())/((double)o.getNumero2());
        }
        return resultado;
    }
}
