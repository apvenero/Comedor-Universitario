package ttps.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Perfil;
import ttps.dao.PerfilDao;

@Repository
public class PerfilDAOhiberJPA extends GenericDAOhiberJPA<Perfil> implements PerfilDao<Perfil>{
  
	public PerfilDAOhiberJPA(){
		 super(Perfil.class);
		
	}
	
	@Override
	public Perfil recuperarUsuario(String dni, String contrasenia) {
		EntityManager em= getEntityManager();
		Query consulta= em.createQuery("select p from Perfil p where p.dni=:dni and p.contrasenia=:contrasenia");
		consulta.setParameter("dni", dni);
		consulta.setParameter("contrasenia", contrasenia);
		List<Perfil> resultado= consulta.getResultList();
		if (resultado.size() == 1){
			return resultado.get(0);
		}
		return null;
	}
	
	@Override
	public List<Perfil> recuperarNombre(String nombre ) {
		return null;
	}



	
	
	
	

}
