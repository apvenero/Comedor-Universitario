package ttps.dao;

import java.util.List;

import ttps.clases.Usuario;


public interface UsuarioDao extends GenericDao<Usuario> {
	List<Usuario> recuperarTodos(String facultad);
	List<Usuario> recuperarTodosEsCeliaco();
	List<Usuario> recuperarTodosEsVegetariano();
	List<Usuario> recuperarTodosEsHipertenso();
	List<Usuario> recuperarTodosEsIntoleranteLactosa();
	List<Usuario> recuperarTodosEsDiabetico();
	List<Usuario> recuperarHabilitados();
	Usuario actualizar(Usuario usuario);
	Usuario agregar(Long idPerfil);
}
