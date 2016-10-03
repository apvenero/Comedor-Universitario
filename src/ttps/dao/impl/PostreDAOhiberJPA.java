package ttps.dao.impl;

import org.springframework.stereotype.Repository;

import ttps.clases.Postre;
import ttps.dao.PostreDao;

@Repository
public class PostreDAOhiberJPA extends GenericDAOhiberJPA<Postre> implements PostreDao{

	public PostreDAOhiberJPA() {
		super(Postre.class);
		// TODO Auto-generated constructor stub
	}

}
