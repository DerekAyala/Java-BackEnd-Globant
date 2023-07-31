/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package ejercicios;

import entidades.NIF;
import servicios.NIFServicios;
/**
 *
 * @author derek
 */
public class Ejercicios {

    public static void main(String[] args) {
        NIFServicios ns = new NIFServicios();
        NIF n = ns.crearNIF();
        ns.mostrar(n);
    }

    /*
    public static void arrays() {
        Random random = new Random();
        DecimalFormat format = new DecimalFormat("#.###");

        double[] a, b;
        a = new double[50];
        b = new double[20];

        System.out.println("Arreglo de 50 numeros reales: ");
        for (int i = 0; i < 50; i++) {
            a[i] = Double.parseDouble(format.format(random.nextDouble()));
            System.out.print(a[i] + " ");
        }

        Arrays.sort(a);

        System.out.println();

        for (int i = 0; i < 20; i++) {
            b[i] = (i < 10) ? a[i] : 0.5;
        }

        System.out.println("Arreglo de 50 numeros reales acomodados y el Arreglo b: ");

        for (int i = 0; i < 50; i++) {
            System.out.print(a[i] + " ");
        }

        System.out.println();

        for (int i = 0; i < 20; i++) {
            System.out.print(b[i] + " ");
        }
    }
    */
    /*
    public static void date() {
        //Scanner leer = new Scanner(System.in).useDelimiter("\n");
        //int dia, mes, anio;
        System.out.println("Ingresa el dia: ");
        dia = leer.nextInt();
        System.out.println("Ingresa el mes: ");
        mes = -1 + (leer.nextInt());
        System.out.println("Ingresa el dia: ");
        anio = leer.nextInt();

        long diferencia = fechaActual.getTime() - fecha.getTime();
        long milisegundosPorAnio = 1000L * 60 * 60 * 24 * 365;
        long edad = diferencia / milisegundosPorAnio;
        System.out.println(edad);
    }
    */
}
