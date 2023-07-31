/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mascotaapp.utilidades;
import java.util.Comparator;
import mascotaapp.entidades.Mascota;
/**
 *
 * @author derek
 */
public class Comparadores {
    public static Comparator<Mascota> ordenarPorNombreDesc = new Comparator<Mascota>() {
        @Override
        public int compare(Mascota t1, Mascota t2) {
            return t1.getNombre().compareTo(t2.getNombre());
        }
    };
    
    public static Comparator<Mascota> ordenarPorEdadDesc = new Comparator<Mascota>() {
        @Override
        public int compare(Mascota t1, Mascota t2) {
            return t1.getEdad().compareTo(t2.getEdad());
        }
    };
}
