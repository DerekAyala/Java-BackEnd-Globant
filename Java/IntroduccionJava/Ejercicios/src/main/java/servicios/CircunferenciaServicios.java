/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Circunferencia;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class CircunferenciaServicios {
    
    Scanner leer = new Scanner(System.in).useDelimiter("\n");
    
    public Circunferencia crearCircunferencia() {
        System.out.println("Ingresa el radio de la circunferencia");
        Circunferencia c = new Circunferencia(leer.nextInt());
        return c;
    }
    
    public void area(Circunferencia c){
        double area = (Math.PI * Math.pow((double)c.getRadio(), 2));
        System.out.println("El area es: "+ area);
    }
    
    public void perimetro(Circunferencia c){
        double perimetro = (Math.PI * 2 * c.getRadio());
        System.out.println("El area es: "+ perimetro);
    }
}
