package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.Sugerencia;
import ttps.dao.InfraestructuraDao;

@Repository
public class InfraestructuraDAOhiberJPA extends GenericDAOhiberJPA<Sugerencia> implements InfraestructuraDao {

	public InfraestructuraDAOhiberJPA() {
		super(Sugerencia.class);
		// TODO Auto-generated constructor stub
	}

}
