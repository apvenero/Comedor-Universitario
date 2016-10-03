package ttps.dao.impl;


import java.io.Serializable;

import javax.persistence.EntityManager;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.ResponsableSede;
import ttps.dao.ResponsableSedeDao;

@Repository
public class ResponsableSedeDAOhiberJPA extends GenericDAOhiberJPA<ResponsableSede> implements ResponsableSedeDao {

	public ResponsableSedeDAOhiberJPA(){
	  super(ResponsableSede.class);
	}
	
	public ResponsableSede borrar(Serializable id){
		
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("delete from ResponsableSede where idPerfil= :id");
		consulta.setParameter("id", id);
		try {
			consulta.executeUpdate();

		} catch (javax.persistence.NoResultException e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		 return null;
	}	

public ResponsableSede actualizar(ResponsableSede responsable){
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("update ResponsableSede rs set rs.nombre= :nombre, rs.sede.idSede=:idSede,rs.contrasenia=:contrasenia,rs.dni=:dni,rs.apellido=:apellido where rs.idPerfil=:id");
		consulta.setParameter("id", responsable.getIdPerfil());
		consulta.setParameter("idSede", responsable.getSede().getIdSede());
		consulta.setParameter("nombre", responsable.getNombre());
		consulta.setParameter("contrasenia", responsable.getContrasenia());
		consulta.setParameter("dni", responsable.getDni());
		consulta.setParameter("apellido", responsable.getApellido());
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
