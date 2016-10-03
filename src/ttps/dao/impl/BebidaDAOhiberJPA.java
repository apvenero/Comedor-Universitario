package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.Bebida;
import ttps.dao.BebidaDao;

@Repository
public class BebidaDAOhiberJPA extends GenericDAOhiberJPA<Bebida> implements BebidaDao {

	public BebidaDAOhiberJPA() {
		super(Bebida.class);
		// TODO Auto-generated constructor stub
	}

}
