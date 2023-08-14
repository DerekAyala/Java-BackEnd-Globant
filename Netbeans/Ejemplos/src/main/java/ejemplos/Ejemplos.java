/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package ejemplos;

import ejemplos.enumeraciones.Raza;

/**
 *
 * @author derekayala
 */
public class Ejemplos {
    
    public static void main(String[] args) {
        String razaInput = "BEAGLE";
        for (Raza aux : Raza.values()) {
            if(aux.toString().equals(razaInput)){
                System.out.println("Raza input es igual al enum " + aux);
            }
        }
    }
}
