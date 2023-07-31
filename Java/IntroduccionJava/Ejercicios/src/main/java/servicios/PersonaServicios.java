/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import java.util.Scanner;
import entidades.Persona;
import java.util.Date;

/**
 *
 * @author derek
 */
public class PersonaServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Persona crearPersona() {
        Persona p = new Persona();
        String sexo;
        int dia, mes, anio;
        boolean condicion;
        System.out.println("Ingresa tu nombre: ");
        p.setNombre(leer.next());
        System.out.println("Ingresa el dia nacimiento: ");
        dia = leer.nextInt();
        System.out.println("Ingresa el mes nacimiento: ");
        mes = -1 + (leer.nextInt());
        System.out.println("Ingresa el dia nacimiento: ");
        anio = leer.nextInt();
        Date fecha = new Date(anio - 1900, mes - 1, 20);
        p.setNacimiento(fecha);
        System.out.println("Ingresa tu Sexo: ");
        do {
            sexo = leer.next().toUpperCase();
            condicion = (sexo.equals("H") || sexo.equals("M") || sexo.equals("O"));
            if (!condicion) {
                System.out.println("Solo se acepta Hombre(H), Mujer(M) u otro(O)");
            }
        } while (!condicion);
        p.setSexo(sexo);
        System.out.println("Ingresa tu Altura en mt: ");
        p.setAltura(leer.nextDouble());
        System.out.println("Ingresa tu Peso en kg: ");
        p.setPeso(leer.nextDouble());
        return p;
    }

    public int CalcularIMC(Persona p) {
        double imc = p.getPeso() / (Math.pow(p.getAltura(), 2));
        if (imc < 20) {
            return -1;
        } else if (imc > 20 && imc <= 25) {
            return 0;
        } else {
            return 1;
        }
    }

    public boolean esMayorDeEdad(Persona p) {
        return calcularEdad(p) >= 18;
    }
    
    public long calcularEdad(Persona p){
        Date fechaActual = new Date();
        
        long diferencia = fechaActual.getTime() - p.getNacimiento().getTime();
        long milisegundosPorAnio = 1000L * 60 * 60 * 24 * 365;
        long edad = diferencia / milisegundosPorAnio;
        return edad;
    }

}
