package ttps.dao;

import ttps.clases.Compra;

public interface CompraDao<Compra> extends GenericDao<Compra> {
	Compra agregarCompra(Compra compra);
}
