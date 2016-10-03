package ttps.dao;

import java.util.List;

import ttps.clases.ResponsableSede;
import ttps.clases.Sede;

public interface SedeDao extends GenericDao<Sede> {
	public List<Sede> listar ();
	public Sede persistir(ResponsableSede resp);
}
