package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.EntradaPlatoPrincipal;
import ttps.dao.EntradaPlatoPrincipalDao;

@Repository
public class EntradaPlatoPrincipalDAOhiberJPA extends GenericDAOhiberJPA<EntradaPlatoPrincipal> implements EntradaPlatoPrincipalDao {

	public EntradaPlatoPrincipalDAOhiberJPA() {
		super(EntradaPlatoPrincipal.class);
		// TODO Auto-generated constructor stub
	}

}
