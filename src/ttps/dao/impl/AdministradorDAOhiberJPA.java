package ttps.dao.impl;


import org.springframework.stereotype.Repository;

import ttps.clases.Administrador;
import ttps.dao.AdministradorDao;


@Repository
public class AdministradorDAOhiberJPA extends GenericDAOhiberJPA<Administrador> implements AdministradorDao {
	
	public AdministradorDAOhiberJPA(){
		  super(Administrador.class);
	}
}
