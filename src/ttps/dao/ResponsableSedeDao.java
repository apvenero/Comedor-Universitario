package ttps.dao;

import java.io.Serializable;

import ttps.clases.ResponsableSede;


public interface ResponsableSedeDao extends GenericDao<ResponsableSede> {
	public ResponsableSede persistir(ResponsableSede responsable);
	public ResponsableSede borrar(Serializable id); 
	public ResponsableSede actualizar(ResponsableSede responsable); 
}
