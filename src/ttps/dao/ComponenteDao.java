package ttps.dao;

import ttps.clases.Componente;

public interface ComponenteDao<Componente> extends GenericDao<Componente>{
	public Componente actualizarComponente(Componente componente); 
}
