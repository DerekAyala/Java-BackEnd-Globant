/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Curso;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class CursoServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    private String[] cargarAlumnos() {
        String[] alumnos = new String[5];
        for (int i = 0; i < 5; i++) {
            System.out.println("Ingresa el nombre del " + (i + 1) + " alumno: ");
            alumnos[i] = leer.next();
        }
        return alumnos;
    }

    public Curso crearCurso() {
        Curso c = new Curso();
        String turno;
        System.out.println("Ingresa el nombre del curso: ");
        c.setNombreCurso(leer.next());
        System.out.println("Ingresa la cantidad de horas por dia del curso: ");
        c.setCantidadHorasPorDia(leer.nextInt());
        System.out.println("Ingresa la cantidad de dias por semana del curso: ");
        c.setCantidadDiasPorSemana(leer.nextInt());
        System.out.println("Ingresa el turno del curso: ");
        do {
            turno = leer.next().toLowerCase();
        } while (validar(turno.equals("mañana") || turno.equals("tarde"), "Solo hay turno de la mañana y tarde"));
        System.out.println("Ingresa la cantidad de horas por dia del curso: ");
        c.setPrecioPorHora(leer.nextDouble());
        String[] alumnos = cargarAlumnos();
        c.setAlumnos(alumnos);
        return c;
    }

    private static boolean validar(boolean condicion, String mensaje) {
        if (!condicion) {
            System.out.println(mensaje);
            return true;
        } else {
            return false;
        }
    }

    public void calcularGananciaSemanal(Curso c) {
        double gananciaDia = c.getCantidadHorasPorDia() * c.getPrecioPorHora() * c.getAlumnos().length;
        double gananciaSemanal = gananciaDia * c.getCantidadDiasPorSemana();
        System.out.println("Ganancia Semanal: " + gananciaSemanal);
    }
}
