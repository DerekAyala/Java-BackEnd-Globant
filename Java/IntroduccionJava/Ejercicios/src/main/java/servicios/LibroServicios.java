/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Libro;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class LibroServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Libro cargarLibro() {
        Libro l = new Libro();
        System.out.println("ingresa el ISBN: ");
        l.setIsbn(leer.nextInt());
        System.out.println("ingresa el Titulo del libro: ");
        l.setTitulo(leer.next());
        System.out.println("ingresa el Autor del libro: ");
        l.setAutor(leer.next());
        System.out.println("ingresa la cantidad de paginas del libro: ");
        l.setNumeroPaginas(leer.nextInt());
        return l;
    }

    public void mostrarLibro(Libro l) {
        System.out.println("ISBN: " + l.getIsbn());
        System.out.println("Titulo: " + l.getTitulo());
        System.out.println("Autor: " + l.getAutor());
        System.out.println("Numero de paginas: " + l.getNumeroPaginas());
    }
}
