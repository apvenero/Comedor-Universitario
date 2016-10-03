package ttps.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Sugerencia;
import ttps.dao.SugerenciaDao;

@Repository
public class SugerenciaDAOhiberJPA extends GenericDAOhiberJPA<Sugerencia> implements SugerenciaDao{

	public SugerenciaDAOhiberJPA() {
		super(Sugerencia.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Sugerencia actualizarSugerencia(Sugerencia sugerencia){
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("update Sugerencia rs set rs.fecha= :fecha, rs.mensaje=:mensaje,rs.tipo=:tipo,rs.sede.idSede=:idSede,rs.usuario.idPerfil=:idPerfil where rs.idSugerencia=:idSugerencia");
		consulta.setParameter("idSugerencia", sugerencia.getIdSugerencia());
		consulta.setParameter("fecha", sugerencia.getFecha());
		consulta.setParameter("mensaje", sugerencia.getMensaje());
		consulta.setParameter("tipo", sugerencia.getTipo());
		consulta.setParameter("idSede", sugerencia.getSede().getIdSede());
		consulta.setParameter("idPerfil", sugerencia.getUsuario().getIdPerfil());
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
