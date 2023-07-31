/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Alumno;
import entidades.Pelicula;
import java.util.ArrayList;
import java.util.Scanner;
import utilidades.PeliculaComparadores;

/**
 *
 * @author derek
 */
public class PeliculaServicio {

    private ArrayList<Pelicula> peliculas = new ArrayList();
    private static Scanner leer = new Scanner(System.in);

    public void agregarCiclo() {
        String respuesta;
        String titulo;
        String director;
        int horas;
        do {
            System.out.println("Ingresa el Titulo: ");
            titulo = leer.nextLine();
            System.out.println("Ingresa el director de " + titulo + ": ");
            director = leer.nextLine();
            System.out.println("Ingresa la duracion(horas) de " + titulo + ": ");
            horas = leer.nextInt();
            do {
                System.out.println("deseas agregar otra Pelicula ?(S/N)");
                respuesta = leer.nextLine().toUpperCase();
                System.out.println((!respuesta.equals("S") && !respuesta.equals("N")) ? "Favor de colocar S o N" : "....");
            } while (!respuesta.equals("S") && !respuesta.equals("N"));
            peliculas.add(new Pelicula(titulo, director, horas));
        } while (!respuesta.equals("N"));
        mostrarPeliculas();
        mostrarPeliculasMasUnaHora();
        ordenarDirector();
        ordenarTitulo();
        ordenarDuracionAsc();
        ordenarDuracionDesc();
    }
    
    public void mostrarPeliculas(){
        System.out.println("Peliculas");
        for (Pelicula pelicula : peliculas) {
            System.out.println(pelicula);
        }
    }
    
    public void mostrarPeliculasMasUnaHora(){
        System.out.println("Peliculas de mas de una hora");
        for (Pelicula pelicula : peliculas) {
            if (pelicula.getHoras() >= 1) {
                System.out.println(pelicula);
            }
        }
    }
    
    public void ordenarDuracionDesc(){
        System.out.println("Peliculas ordenadas por duracion de mayor a menor");
        peliculas.sort(PeliculaComparadores.compararDuracionDes);
        mostrarPeliculas();
    }
    
    public void ordenarDuracionAsc(){
        System.out.println("Peliculas ordenadas por duracion de menor a mayor");
        peliculas.sort(PeliculaComparadores.compararDuracionAsc);
        mostrarPeliculas();
    }
    
    public void ordenarTitulo(){
        System.out.println("Peliculas ordenadas titulo");
        peliculas.sort(PeliculaComparadores.compararTitulo);
        mostrarPeliculas();
    }
    
    public void ordenarDirector(){
        System.out.println("Peliculas ordenadas director");
        peliculas.sort(PeliculaComparadores.compararDirector);
        mostrarPeliculas();
    }
}
