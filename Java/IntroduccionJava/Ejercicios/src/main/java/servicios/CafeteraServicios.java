/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Cafetera;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class CafeteraServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Cafetera crearCafetera() {
        int capacidadMaxima;
        System.out.println("Cual es la capacidad maxima de su cafetera en ml: ");
        capacidadMaxima = leer.nextInt();
        Cafetera c = new Cafetera(capacidadMaxima, capacidadMaxima);
        return c;
    }

    public void llenarCafetera(Cafetera c) {
        c.setCapacidadActual(c.getCapacidadMaxima());
    }

    public void servirTaza(Cafetera c) {
        int taza;
        System.out.println("Cual es el tamaño de su taza(ml)?");
        do {
            taza = leer.nextInt();
            if (taza > c.getCapacidadMaxima()) {
                System.out.println("No se puede servir mas de la capacidad maxima de la Cafetera que es " + c.getCapacidadMaxima());
            }
        } while (taza > c.getCapacidadMaxima());
        if (taza > c.getCapacidadActual()) {
            System.out.println("No se le pudo llenar la taza pero se le sirvio " + c.getCapacidadActual() + " ml");
            c.setCapacidadActual(0);
        } else {
            System.out.println("Su taza se lleno con " + c.getCapacidadActual() + " ml");
            c.setCapacidadActual(c.getCapacidadActual() - taza);
        }
    }

    public void vaciarCafetera(Cafetera c) {
        c.setCapacidadActual(0);
    }
}
