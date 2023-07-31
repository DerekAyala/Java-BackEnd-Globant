/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Alumno;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class AlumnoServicios {

    private static Scanner leer = new Scanner(System.in);
    private ArrayList<Alumno> alumnos = new ArrayList();

    public void crearAlumno() {
        String respuesta;
        String nombre;
        ArrayList<Integer> notas;
        do {
            notas = new ArrayList();
            System.out.println("Ingresa el nombre: ");
            nombre = leer.nextLine();
            int contador = 1;
            while (contador <= 3) {
                System.out.println("Ingresa tu " + contador + " nota: ");
                int nota = leer.nextInt();
                notas.add(nota);
                contador++;
            }
            do {
                System.out.println("deseas agregar otro Alumno ?(S/N)");
                respuesta = leer.nextLine().toUpperCase();
                System.out.println((!respuesta.equals("S") && !respuesta.equals("N")) ? "Favor de colocar S o N" : "....");
            } while (!respuesta.equals("S") && !respuesta.equals("N"));
            alumnos.add(new Alumno(nombre, notas));
        } while (!respuesta.equals("N"));
        System.out.println("Nombre del Alumno  buscar");
        nombre = leer.nextLine();
        buscarAlumno(nombre);
    }

    public void mostrarAlumnos() {
        for (Alumno alumno : alumnos) {
            System.out.println(alumno);
        }
    }

    public void buscarAlumno(String nombre) {
        boolean encontrado = false;
        for (Alumno alumnoActual : alumnos) {
            if (alumnoActual.getNombre().equals(nombre)) {
                notaFinal(alumnoActual);
                encontrado = true;
                break;
            }
        }
        if (!encontrado) {
            System.out.println("No se encontró el Alumno " + nombre);
        }
    }

    public void notaFinal(Alumno a) {
        int suma = 0;
        for (Integer nota : a.getNotas()) {
            suma += nota;
        }
        System.out.println("Nota final del Alumno " + a.getNombre() + ": " + String.format("%.2f", suma / 3.0));
    }
}
