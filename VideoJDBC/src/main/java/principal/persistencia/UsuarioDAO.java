
package principal.persistencia;

import java.util.ArrayList;
import java.util.Collection;
import principal.dominio.usuario.Usuario;

public final class UsuarioDAO extends DAO{

    public void guardarUsuario(Usuario usuario) throws Exception{
        try {
            if (usuario == null) {
                throw new Exception("El usuario no puede ser nulo");
            }
            String sql = "INSERT INTO Usuario (correoElectronico, Clave) values ('" + usuario.getCorreoElectronico() + "' , '" + usuario.getClave() + "' );";
            insertarModificarEliminar(sql);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public void modificarUsuario(Usuario usuario) throws Exception{
        try {
            if (usuario == null) {
                throw new Exception("El usuario no puede ser nulo");
            }
            String sql = "UPDATE Usuario SET " + " clave = '" + usuario.getClave() + "' WHERE correoElectronico = '" + usuario.getCorreoElectronico() + "';";
            insertarModificarEliminar(sql);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public void eliminarUsuario(String correoElectronico) throws Exception{
        try {
            if (correoElectronico == null) {
                throw new Exception("El Correo no puede ser nulo");
            }
            String sql = "DELETE from Usuario WHERE correoElectronico = '" + correoElectronico + "';";
            insertarModificarEliminar(sql);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public Usuario buscarUsuarioPorCorreo(String correo) throws Exception{
        try {
            String sql = "SELECT * FROM Usuario WHERE correoElectronico = '" + correo + "';";
            consultarBase(sql);
            Usuario usuario = null;
            while(resultado.next()){
                usuario = new Usuario();
                usuario.setId(resultado.getInt("id"));
                usuario.setCorreoElectronico(resultado.getString("correoElectronico"));
                usuario.setClave(resultado.getString("clave"));
            }
            desconectarBase();
            return usuario;
        } catch (Exception e) {
            desconectarBase();
            throw e;
        }
    }
    
    public  Collection<Usuario> buscarUsuarios() throws Exception {
        try {
            String sql = "SELECT * FROM Usuario;";
            consultarBase(sql);
            Usuario usuario = null;
            Collection<Usuario> usuarios =  new ArrayList<>();
            while(resultado.next()){
                usuario = new Usuario();
                usuario.setCorreoElectronico(resultado.getString("correoElectronico"));
                usuario.setClave(resultado.getString("clave"));
                usuarios.add(usuario);
            }
            desconectarBase();
            return usuarios;
        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema");
        }
    }
}
