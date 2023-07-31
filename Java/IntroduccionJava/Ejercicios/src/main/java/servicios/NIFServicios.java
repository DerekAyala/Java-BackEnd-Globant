/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.NIF;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class NIFServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public NIF crearNIF() {
        NIF n = new NIF();
        long dni;
        char[] letras = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J',
                'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};
        boolean condicion;
        System.out.println("Ingresa tu dni: ");
        do {
            dni = leer.nextLong();
            condicion = String.valueOf(dni).length() == 8;
            if (!condicion) {
                System.out.println("Tu dni cuenta con 8 numeros, Prueba de nuevo");
            }
        } while (!condicion);
        n.setDNI(dni);
        n.setLetra(letras[(int)(dni) % 23]);
        return n;
    }
    
    public void mostrar(NIF n){
        System.out.println(n.getDNI()+"-"+n.getLetra());
    }
}
