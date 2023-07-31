/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import entidades.Rectangulo;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class RectanguloServicios {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Rectangulo crearRectangulo() {
        int base, altura;
        System.out.println("Ingresa la base del rectangulo");
        base = leer.nextInt();
        System.out.println("Ingresa la altura del rectangulo");
        altura = leer.nextInt();
        Rectangulo r = new Rectangulo(base, altura);
        return r;
    }

    public Integer perimetroRectangulo(Rectangulo r) {
        int perimetro = 2 * (r.getAltura() + r.getBase());
        System.out.println("Perimetro: " + perimetro);
        return perimetro;
    }

    public Double superficieRectangulo(Rectangulo r, int perimetro) {
        double superficie = (double) (r.getBase() * r.getAltura()) / perimetro;
        System.out.println("Superficie: " + superficie);
        return superficie;
    }

    public void dibujarRectangulo(Rectangulo r) {
        for (int i = 0; i < r.getAltura(); i++) {
            for (int j = 0; j < r.getBase(); j++) {
                if (i == 0 || j == 0 || i == r.getAltura() - 1 || j == r.getBase() - 1) {
                    System.out.print("* ");
                } else {
                    System.out.print("  ");
                }
            }
            System.out.println();
        }
    }
}
