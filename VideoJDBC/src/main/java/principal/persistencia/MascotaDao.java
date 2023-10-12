/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package principal.persistencia;

import principal.dominio.mascota.Mascota;
/**
 *
 * @author derekayala
 */
public class MascotaDao extends DAO{
    
    public void guardarMascota(Mascota mascota) throws Exception{
        try {
            if (mascota == null) {
                throw new Exception("El usuario no puede ser nulo");
            }
            String sql = "INSERT INTO Mascota (apodo, raza, usuario) + values ('"+ mascota.getApodo()+ "' , '" + mascota.getRaza() + "' , '" + mascota.getUsuario().getCorreoElectronico() + "');";
            insertarModificarEliminar(sql);
        } catch (Exception e) {
            throw e;
        }
    }
}
