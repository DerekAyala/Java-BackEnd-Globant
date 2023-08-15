/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package mascotaapp;




import mascotaapp.entidades.Usuario;
import mascotaapp.enumeraciones.SexoHumano;


/**
 *
 * @author derek
 */
public class MascotaAPP {

    public static void main(String[] args) {
        Usuario u = new Usuario();
        u.setSexo(SexoHumano.HOMBRE);
        System.out.println(u.getSexo());
    }
}
