package ttps.dao;

import ttps.clases.Menu;

public interface MenuDao<Menu> extends GenericDao<Menu>{
	public Menu actualizarMenu(Menu menu);
}
