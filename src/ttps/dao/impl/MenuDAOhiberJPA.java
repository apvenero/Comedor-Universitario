package ttps.dao.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import ttps.clases.Menu;
import ttps.dao.MenuDao;

@Repository
public class MenuDAOhiberJPA extends GenericDAOhiberJPA<Menu> implements MenuDao<Menu>{

	public MenuDAOhiberJPA() {
		super(Menu.class);
		// TODO Auto-generated constructor stub
	}
	public Menu actualizarMenu(Menu menu){
		EntityManager em = getEntityManager();

		Query consulta = em.createQuery("update Menu rs set rs.nombre= :nombre,rs.postre.idComponente = :idPostre,rs.bebida.idComponente=:idBebida, rs.platoPrincipal.idComponente=:idPlatoPpal,rs.entrada.idComponente=:idEntrada, rs.aptoCeliaco=:aptoCeliaco,rs.aptoDiabetico=:aptoDiabetico,rs.aptoLactosa=:aptoLactosa,rs.aptoHipertenso=:aptoHipertenso, rs.vegetariano=:vegetariano where rs.idMenu=:id");
		consulta.setParameter("id", menu.getIdMenu());
		consulta.setParameter("aptoCeliaco", menu.isAptoCeliaco());
		consulta.setParameter("aptoHipertenso", menu.isAptoHipertenso());
		consulta.setParameter("aptoLactosa", menu.isAptoLactosa());
		consulta.setParameter("nombre", menu.getNombre());
		consulta.setParameter("aptoDiabetico", menu.isAptoDiabetico());
		consulta.setParameter("idPostre", menu.getPostre().getIdComponente());
		consulta.setParameter("idBebida", menu.getBebida().getIdComponente());
		consulta.setParameter("idPlatoPpal", menu.getPlatoPrincipal().getIdComponente());
		consulta.setParameter("idEntrada", menu.getEntrada().getIdComponente());
		consulta.setParameter("vegetariano", menu.isVegetariano());
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
