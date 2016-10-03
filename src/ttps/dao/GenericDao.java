package ttps.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<T> {
public T actualizar(T entity);
public void borrar(T entity);
public T borrar (Serializable id);
public boolean existe (Serializable id);
public T persistir (T entity);
public T recuperar(Serializable id);
public List<T> recuperarTodos();
public List<T> listar();
public T actualizarComponente(T entity);
public T actualizarMenu(T entity);


}
