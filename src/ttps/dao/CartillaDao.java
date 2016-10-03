package ttps.dao;


import ttps.clases.Cartilla;

public interface CartillaDao<Cartilla> extends GenericDao<Cartilla> {
	public Cartilla actualizarCartilla(Cartilla cartilla);
}
