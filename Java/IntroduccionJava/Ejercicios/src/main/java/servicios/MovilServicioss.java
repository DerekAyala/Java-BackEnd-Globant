/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Movil;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class MovilServicioss {

    static Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Movil cargarCelular() {
        Movil m = new Movil();
        System.out.println("Ingresa la marca:");
        m.setMarca(leer.next());
        System.out.println("Ingresa el precio:");
        m.setPrecio(leer.nextDouble());
        System.out.println("Ingresa el modelo:");
        m.setModelo(leer.next());
        System.out.println("Ingresa la cantidad de memoria Ram:");
        m.setMemoriaRam(leer.nextInt());
        System.out.println("Ingresa la capacidad de almacenamiento:");
        m.setAlmacenamiento(leer.nextInt());
        m.setCodigo(ingresarCodigo());
        return m;
    }
    
    private static Integer[] ingresarCodigo(){
        Integer[] codigo = new Integer[7];
        System.out.println("Ingresa el codigo numero por numero: ");
        for (int i = 0; i < 7; i++) {
            codigo[i] = leer.nextInt();
        }
        return codigo;
    }
}
