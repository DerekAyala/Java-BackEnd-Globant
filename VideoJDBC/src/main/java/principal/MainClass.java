package principal;

import java.util.logging.Level;
import java.util.logging.Logger;
import principal.dominio.usuario.*;
import principal.persistencia.UsuarioDAO;
public class MainClass {
    
    public static void main(String[] args) {
        try {
            UsuarioServices us = new UsuarioServices();
            UsuarioDAO ua = new UsuarioDAO();
            us.modificarClaveUsuario("dayala0@ucol.mx", "12345678","123456789");
        } catch(Exception e) {
            Logger.getLogger(MainClass.class.getName()).log(Level.SEVERE, null,e);
        }
       
    }
}
