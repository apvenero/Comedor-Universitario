package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.ResponsableSede;
import ttps.clases.Sede;
import ttps.dao.SedeDao;

@Repository
public class SedeDAOhiberJPA extends GenericDAOhiberJPA<Sede> implements SedeDao{

	public SedeDAOhiberJPA() {
		super(Sede.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Sede persistir(ResponsableSede resp) {
		// TODO Auto-generated method stub
		return null;
	}


}
