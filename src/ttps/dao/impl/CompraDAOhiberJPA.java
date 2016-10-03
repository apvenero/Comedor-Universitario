package ttps.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Compra;
import ttps.dao.CompraDao;

@Repository
public class CompraDAOhiberJPA extends GenericDAOhiberJPA<Compra> implements CompraDao<Compra>{

	public CompraDAOhiberJPA() {
		super(Compra.class);
		// TODO Auto-generated constructor stub
	}
	
	public Compra agregarCompra(Compra compra){
		EntityManager em = getEntityManager();
		Query consulta = em.createNativeQuery("INSERT INTO Compra(idCompra,menu_jueves_ids,menu_lunes_ids,menu_martes_ids,menu_miercoles_ids,menu_viernes_ids,monto,sede_idSede,usuario_idPerfil)" + " values (1,?,?,?,?,?,?,?,?)");
		
		consulta.setParameter(1, compra.getMenu_jueves_ids());
		consulta.setParameter(2, compra.getMenu_lunes_ids() );
		consulta.setParameter(3, compra.getMenu_martes_ids());
		consulta.setParameter(4, compra.getMenu_miercoles_ids());
		consulta.setParameter(5, compra.getMenu_viernes_ids());
		consulta.setParameter(6, compra.getMonto());
		consulta.setParameter(7, compra.getSede().getIdSede());
		consulta.setParameter(8, compra.getUsuario().getIdPerfil());
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
