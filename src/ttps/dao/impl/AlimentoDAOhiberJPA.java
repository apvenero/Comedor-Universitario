package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.Sugerencia;
import ttps.dao.AlimentoDao;

@Repository
public class AlimentoDAOhiberJPA  extends GenericDAOhiberJPA<Sugerencia> implements AlimentoDao{

	public AlimentoDAOhiberJPA() {
		super(Sugerencia.class);
		// TODO Auto-generated constructor stub
	}

}
