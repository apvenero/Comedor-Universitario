package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.Sugerencia;
import ttps.dao.AtencionDao;

@Repository
public class AtencionDAOhiberJPA  extends GenericDAOhiberJPA<Sugerencia> implements AtencionDao{

	public AtencionDAOhiberJPA() {
		super(Sugerencia.class);
		// TODO Auto-generated constructor stub
	}

}
