package ttps.dao;

import java.util.List;

import ttps.clases.Administrador;
import ttps.clases.Perfil;
import ttps.clases.Sede;


public interface PerfilDao<Perfil> extends GenericDao<Perfil> {
	public Perfil recuperarUsuario (String dni, String contrasenia);
	public List<Perfil> recuperarNombre (String nombre);
	public List<Perfil> listar ();
	
}
