/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package mascotaapp;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import mascotaapp.entidades.Mascota;
import mascotaapp.servicios.ServicioMascota;
import mascotaapp.utilidades.Comparadores;

/**
 *
 * @author derek
 */
public class MascotaAPP {

    public static void main(String[] args) {
        
        HashMap<String,Mascota> mascotas = new HashMap();

        mascotas.put("1",new Mascota("Pepa", "Lola", "Gato"));
        mascotas.put("2",new Mascota("Fer", "Chiquito", "Perro"));
        for (Map.Entry<String, Mascota> aux : mascotas.entrySet()) {
            String key = aux.getKey();
            Mascota value = aux.getValue();
            System.out.println("Key: " + key + " Value: " + value);
            
        }
    }
}
