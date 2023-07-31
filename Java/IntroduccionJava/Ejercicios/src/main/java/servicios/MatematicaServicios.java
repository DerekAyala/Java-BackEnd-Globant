/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;
import entidades.Matematica;
/**
 *
 * @author derek
 */
public class MatematicaServicios {
    
    public double devolverMayor(Matematica m){
        return (m.getNumero1() > m.getNumero2())? m.getNumero1(): m.getNumero2();
    }
    
    public double calcularPotencia(Matematica m){
        return (m.getNumero1() > m.getNumero2())? Math.pow(m.getNumero1(), m.getNumero2()): Math.pow(m.getNumero2(), m.getNumero1());
    }
    
    public double caclulaRaiz(Matematica m){
        return (m.getNumero1() > m.getNumero2())? Math.sqrt(m.getNumero1()): Math.sqrt(m.getNumero2());
    }
}
