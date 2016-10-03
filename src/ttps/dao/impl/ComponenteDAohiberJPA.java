package ttps.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Componente;
import ttps.dao.ComponenteDao;

@Repository
public class ComponenteDAohiberJPA extends GenericDAOhiberJPA<Componente> implements ComponenteDao<Componente>{

	public ComponenteDAohiberJPA() {
		super(Componente.class);
		// TODO Auto-generated constructor stub
	}
	public Componente actualizarComponente(Componente componente){
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("update Componente rs set rs.nombre= :nombre, rs.aptoCeliaco=:aptoCeliaco,rs.aptoDiabetico=:aptoDiabetico,rs.aptoLactosa=:aptoLactosa,rs.aptoHipertenso=:aptoHipertenso where rs.idComponente=:id");
		consulta.setParameter("id", componente.getIdComponente());
		consulta.setParameter("aptoCeliaco", componente.isAptoCeliaco());
		consulta.setParameter("aptoHipertenso", componente.isAptoHipertenso());
		consulta.setParameter("aptoLactosa", componente.isAptoLactosa());
		consulta.setParameter("nombre", componente.getNombre());
		consulta.setParameter("aptoDiabetico", componente.isAptoDiabetico());
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
