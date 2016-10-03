package ttps.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Usuario;
import ttps.dao.UsuarioDao;


@Repository
public class UsuarioDAOhiberJPA extends GenericDAOhiberJPA<Usuario> implements UsuarioDao  {

	public UsuarioDAOhiberJPA(){
		super(Usuario.class);
	}
	
	@Override
	public List<Usuario> recuperarTodos(String facultad) {
		return null;

	}
	@Override
	public List<Usuario> recuperarTodosEsCeliaco() {
		 return null;
	}

	@Override
	public List<Usuario> recuperarTodosEsVegetariano() {
		 return null;
	}

	@Override
	public List<Usuario> recuperarTodosEsHipertenso() {
		return null;
	}

	@Override
	public List<Usuario> recuperarTodosEsIntoleranteLactosa() {
		 return null;
	}

	@Override
	public List<Usuario> recuperarTodosEsDiabetico() {
		return null;
	}

	@Override
	public List<Usuario> recuperarHabilitados() {
			Query consulta= getEntityManager().createQuery("select e from " + getPersistentClass().getSimpleName()+" e where creditoDisponible > 10");
			@SuppressWarnings("unchecked")
			List<Usuario> resultado = (List<Usuario>)consulta.getResultList();
			return resultado;
		}
	public Usuario agregar (Long id){
		EntityManager em = getEntityManager();
		Query consulta = em.createNativeQuery("INSERT INTO Usuario(creditoDisponible,facultad,foto,tipo,idPerfil)" + " values (?,?,?,?,?)");
		consulta.setParameter(1, "");
		consulta.setParameter(2, "");
		consulta.setParameter(3, "");
		consulta.setParameter(4, "");
		consulta.setParameter(5, id);
		
		return null;
	}
	
	public Usuario actualizar(Usuario usuario){
		EntityManager em = getEntityManager();
		Query consulta = em.createQuery("update Usuario rs set rs.nombre= :nombre, rs.apellido=:apellido,rs.contrasenia=:contrasenia,rs.dni=:dni,rs.tipo=:tipo,rs.facultad=:facultad where rs.idPerfil=:id");
		consulta.setParameter("id", usuario.getIdPerfil());
		consulta.setParameter("tipo",usuario.getTipo());
		consulta.setParameter("facultad",usuario.getFacultad() );
		consulta.setParameter("nombre", usuario.getNombre());
		consulta.setParameter("contrasenia", usuario.getContrasenia());
		consulta.setParameter("dni", usuario.getDni());
		consulta.setParameter("apellido", usuario.getApellido());
		try {
			consulta.executeUpdate();
		} catch (javax.persistence.NoResultException e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		 return null;
	}	
}
	
	
	

	


