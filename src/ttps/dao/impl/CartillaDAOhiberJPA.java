package ttps.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Cartilla;
import ttps.dao.CartillaDao;
@Repository
public class CartillaDAOhiberJPA extends GenericDAOhiberJPA<Cartilla> implements CartillaDao<Cartilla> {

	public CartillaDAOhiberJPA() {
		super(Cartilla.class);
		// TODO Auto-generated constructor stub
	}
	public Cartilla actualizarCartilla(Cartilla cartilla){
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("update Cartilla c set c.fechaInicio= :fechaI, c.fechaFin=:fechaF,c.precio=:precio,c.cantSemDisponibles=:semdisp, c.menu_lunes_ids=:menulunes, c.menu_martes_ids=:menumartes, c.menu_miercoles_ids=:menumiercoles, c.menu_jueves_ids=:menujueves, c.menu_viernes_ids=:menuviernes where c.idCartilla=:id");
		consulta.setParameter("id", cartilla.getIdCartilla());
		consulta.setParameter("fechaI", cartilla.getFechaInicio());
		consulta.setParameter("fechaF", cartilla.getFechaFin());
		consulta.setParameter("precio", cartilla.getPrecio());
		consulta.setParameter("semdisp", cartilla.getCantSemDisponibles());
		consulta.setParameter("menulunes", cartilla.getMenu_lunes_ids());
		consulta.setParameter("menumartes", cartilla.getMenu_martes_ids());
		consulta.setParameter("menumiercoles", cartilla.getMenu_miercoles_ids());
		consulta.setParameter("menujueves", cartilla.getMenu_jueves_ids());
		consulta.setParameter("menuviernes", cartilla.getMenu_viernes_ids());
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
