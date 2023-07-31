/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

/**
 *
 * @author derek
 */
public class PaisesServicios {

    private TreeSet<String> paises = new TreeSet();
    private static final Scanner leer = new Scanner(System.in);

    public void agregarCiclo() {
        String respuesta;
        String pais;
        do {
            System.out.println("Ingresa el Titulo: ");
            pais = leer.nextLine().toUpperCase();
            do {
                System.out.println("deseas agregar otra Pelicula ?(S/N)");
                respuesta = leer.nextLine().toUpperCase();
                System.out.println((!respuesta.equals("S") && !respuesta.equals("N")) ? "Favor de colocar S o N" : "....");
            } while (!respuesta.equals("S") && !respuesta.equals("N"));
            paises.add(pais);
        } while (!respuesta.equals("N"));
    }
    
    public void buscarPais(){
        String pais;
        System.out.println("Ingresa el Titulo: ");
        pais = leer.nextLine().toUpperCase();
        boolean encontrado = false;
        Iterator it = paises.iterator();
        while (it.hasNext()) {
            if (it.next().equals(pais)) {
                System.out.println("El pais: " + pais + " fue eliminado.");
                it.remove();
                encontrado = true;
                break;
            }
        }
        if (!encontrado) {
            System.out.println("No se encontró el pais " + pais + ".");
        }
    }
}
