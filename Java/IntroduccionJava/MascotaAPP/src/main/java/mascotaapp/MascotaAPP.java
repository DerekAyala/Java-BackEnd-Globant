/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package mascotaapp;




import mascotaapp.entidades.Mascota;
import mascotaapp.enumeraciones.RazaPerruna;


/**
 *
 * @author derek
 */
public class MascotaAPP {

    public static void main(String[] args) {
        Mascota m1 = new Mascota<RazaPerruna>("Pepa", "Lola", "Perro");
        m1.setRaza(RazaPerruna.BEAGLE);
        System.out.println(m1.toString());
    }
}
