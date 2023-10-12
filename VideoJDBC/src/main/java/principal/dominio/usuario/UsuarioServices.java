package principal.dominio.usuario;
import principal.persistencia.UsuarioDAO;

public class UsuarioServices {
    private UsuarioDAO dao;

    public UsuarioServices() {
        this.dao = new UsuarioDAO();
    }
    
    public void crearUsuario(String correo, String clave) throws Exception {
        try {
            if (correo == null || correo.trim().isEmpty()) {
                throw new Exception("Debe indicar el correo.");
            }
            if (correo.contains("@") == false) {
                throw new Exception("Correo invalido.");
            }
            if (clave == null || clave.trim().isEmpty()) {
                throw new Exception("debe indicar la clave.");
            }
            
            if (clave.length() < 8) {
                throw new Exception("la clave no puede tener menos de 8 caracteres.");
            }
            
            if (dao.buscarUsuarioPorCorreo(correo) != null) {
                throw new Exception("Ya existe un usuario con el correo electronico indicado " + correo);
            }
            Usuario usuario = new Usuario();
            usuario.setClave(clave);
            usuario.setCorreoElectronico(correo);
            dao.guardarUsuario(usuario);
            System.out.println("Usuario Creado...");
        } catch (Exception e) {
            throw e;
        }
    }
    
    public void modificarClaveUsuario(String correo, String claveActual, String ClaveNueva) throws Exception {
        try {
            if (correo == null || correo.trim().isEmpty()) {
                throw new Exception("Debe indicar el correo.");
            }
            if (correo.contains("@") == false) {
                throw new Exception("Correo invalido.");
            }
            if (dao.buscarUsuarioPorCorreo(correo) == null) {
                throw new Exception("No existe un usuario con ese correo: " + correo);
            }
            if (claveActual == null || claveActual.trim().isEmpty()) {
                throw new Exception("debe indicar la clave actual.");
            }            
            Usuario usuario = dao.buscarUsuarioPorCorreo(correo);
            if (!usuario.getClave().equals(claveActual)) {
                throw new Exception("Las claves no coinciden.");
            }
            if (ClaveNueva == null || ClaveNueva.trim().isEmpty()) {
                throw new Exception("debe indicar la clave nueva.");
            }
            if (ClaveNueva.length() < 8) {
                throw new Exception("la clave no puede tener menos de 8 caracteres.");
            }
            
            usuario.setClave(ClaveNueva);
            dao.modificarUsuario(usuario);
            System.out.println("Usuario modificado...");
        } catch (Exception e) {
            throw e;
        }
    }
}
