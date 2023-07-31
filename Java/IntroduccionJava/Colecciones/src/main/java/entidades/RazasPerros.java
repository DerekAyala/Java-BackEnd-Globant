/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class RazasPerros {

    private ArrayList<String> razas;

    public RazasPerros() {
        razas = new ArrayList();
    }

    public void agregarRaza(String raza) {
        razas.add(raza);
    }

    public void ciclo() {
        Scanner leer = new Scanner(System.in);
        String respuesta;
        do {
            System.out.println("Agrega una raza: ");
            String raza = leer.nextLine();
            agregarRaza(raza);
            do {
                System.out.println("deseas agregar otra raza ?(S/N)");
                respuesta = leer.nextLine().toUpperCase();
                System.out.println((!respuesta.equals("S") && !respuesta.equals("N")) ? "Favor de colocar S o N" : "....");
            } while (!respuesta.equals("S") && !respuesta.equals("N"));

        } while (!respuesta.equals("N"));
        mostrarRazas();
        System.out.println("Eliminar una raza: ");
        String raza = leer.nextLine();
        buscarRaza(raza);
    }

    public void mostrarRazas() {
        System.out.println("-------");
        for (String raza : razas) {
            System.out.println(raza);
        }
        System.out.println("-------");
    }

    public void buscarRaza(String raza) {
        System.out.println("Buscando Raza....");
        Iterator iterator = razas.iterator();
        boolean bandera = false;
        while (iterator.hasNext()) {
            if (iterator.next().equals(raza)) {
                iterator.remove();
                bandera = true;
                break;
            }
        }
        System.out.println((bandera) ? ("Si se encontro " + raza) : "No se encontro");
        Collections.sort(razas);
        mostrarRazas();
    }
}
