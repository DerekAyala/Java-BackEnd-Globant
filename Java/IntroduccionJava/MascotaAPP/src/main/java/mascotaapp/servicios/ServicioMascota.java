/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mascotaapp.servicios;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import mascotaapp.entidades.Mascota;

/**
 *
 * @author derek
 */
public class ServicioMascota {

    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    private List<Mascota> mascotas;

    public ServicioMascota() {
        this.mascotas = new ArrayList();
    }

    public Mascota crearMascota() {
        System.out.println("Introducir nombre: ");
        String nombre = leer.next();
        System.out.println("Introducir apodo: ");
        String apodo = leer.next();
        System.out.println("Introducir tipo: ");
        String tipo = leer.next();
        System.out.println("------------------------");
        return new Mascota(nombre, apodo, tipo);
    }

    public void mostrarMascotas() {
        System.out.println("Mascotas actuales de la lista: ");
        for (Mascota mascota : mascotas) {
            System.out.println(mascota.toString());
        }
        System.out.println("Cantidad: " + mascotas.size());
    }

    public void agregarMascota(Mascota m) {
        mascotas.add(m);
    }

    /**
     *
     * @param cantidad
     */
    public void fabricaChiquitos(int cantidad) {
        for (int i = 0; i < cantidad; i++) {
            mascotas.add(new Mascota("Fer", "Chiquito", "Beagle"));
        }
    }

    public void fabricaMascota(int cantidad) {
        for (int i = 0; i < cantidad; i++) {
            Mascota mascotaCreada = crearMascota();
            agregarMascota(mascotaCreada);
            System.out.println(mascotaCreada.toString());
        }
    }

    public void actualizarMascota1(int index) {
        if (index <= mascotas.size() - 1) {
            Mascota m = mascotas.get(index);
            m.setApodo("Roberto");
        } else {
            System.out.println("Indice erroneo");
        }
    }

    public void actualizarMAscota2(int index) {
        if (index <= mascotas.size() - 1) {
            Mascota m = crearMascota();
            mascotas.set(index, m);
        } else {
            System.out.println("Indice erroneo");
        }
    }

    public void eliminarMascota(int index) {
        if (index <= mascotas.size() - 1) {
            mascotas.remove(index);
        } else {
            System.out.println("Indice erroneo");
        }
        mascotas.remove(index);
    }

}
