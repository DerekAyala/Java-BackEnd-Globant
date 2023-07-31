/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

/**
 *
 * @author derek
 */
public class ProductosServicios {

    private HashMap<String, Double> productos = new HashMap();
    private static final Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public void agregarCiclo() {
        String respuesta;
        String nombre;
        Double precio;
        do {
            System.out.println("Ingresa el nombre del producto: ");
            nombre = leer.next().toUpperCase();
            System.out.println("Ingresa el precio de " + nombre + ": ");
            precio = leer.nextDouble();
            do {
                System.out.println("deseas agregar otra Pelicula ?(S/N)");
                respuesta = leer.nextLine().toUpperCase();
                System.out.println((!respuesta.equals("S") && !respuesta.equals("N")) ? "Favor de colocar S o N" : "....");
            } while (!respuesta.equals("S") && !respuesta.equals("N"));
            productos.put(nombre, precio);
        } while (!respuesta.equals("N"));
    }

    public void menu() {
        int opcion;
        do {
            System.out.println("Menu");
            System.out.println("1.- Agregar");
            System.out.println("2.- Mostrar");
            System.out.println("3.- Modificar Precio");
            System.out.println("4.- Eliminar Producto");
            System.out.println("5.- Salir");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1:
                    agregarCiclo();
                    break;
                case 2:
                    mostrarProductos();
                    break;
                case 3:
                    modificarPrecio();
                    break;
                case 4:
                    eliminarProducto();
                    break;
                case 5:
                    System.out.println("Que le vaya bien.");
                    break;
                default:
                    System.out.println("Opcion Invalida");
            }
        } while (opcion != 5);
    }

    public void mostrarProductos() {
        for (Map.Entry<String, Double> producto : productos.entrySet()) {
            System.out.println("Nombre: " + producto.getKey() + " Precio: " + producto.getValue());
        }
    }

    public void modificarPrecio() {
        boolean encontrado = false;
        String nombre;
        Double precio;
        System.out.println("Ingresa el nombre del producto a modificar el precio: ");
        nombre = leer.next().toUpperCase();
        for (Map.Entry<String, Double> producto : productos.entrySet()) {
            if (producto.getKey().equals(nombre)) {
                encontrado = true;
                System.out.println("Ingresa el nuevo precio de " + producto.getKey() + ": ");
                precio = leer.nextDouble();
                productos.replace(nombre, precio);
                System.out.println("Se modifico el producto: " + producto);
                break;
            }
        }
        if (!encontrado) {
            System.out.println("No se encontró el producto " + nombre + ".");
        }
    }

    public void eliminarProducto() {
        boolean encontrado = false;
        String nombre;
        System.out.println("Ingresa el nombre del producto a eliminar: ");
        nombre = leer.next().toUpperCase();
        for (Map.Entry<String, Double> producto : productos.entrySet()) {
            if (producto.getKey().equals(nombre)) {
                encontrado = true;
                System.out.println("Se elimino el producto: " + producto);
                productos.remove(nombre);
                break;
            }
        }
        if (!encontrado) {
            System.out.println("No se encontró el producto " + nombre + ".");
        }
    }
}
