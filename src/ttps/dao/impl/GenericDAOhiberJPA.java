package ttps.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;




import ttps.dao.GenericDao;

@Transactional
public class GenericDAOhiberJPA<T> implements GenericDao<T> {
protected Class<T> persistentClass;
	public GenericDAOhiberJPA(){}
	
	public GenericDAOhiberJPA(Class<T> persistentClass){
		this.persistentClass= persistentClass;
	}
	
	private EntityManager entityManager;
	
	@PersistenceContext
	public void setEntityManager(EntityManager em){
		this.entityManager = em;
	}
	public EntityManager getEntityManager() {
		return entityManager;
	}
	
	public List<T> listar(){
		
		Query consulta= getEntityManager().createQuery("select e from " + getPersistentClass().getSimpleName()+" e");
		@SuppressWarnings("unchecked")
		List<T> resultado = (List<T>)consulta.getResultList();
		return resultado;
	}
	
	@Override
	public T actualizar(T entity) {
		getEntityManager().merge(entity);
		return entity;
		
	}
	
	@Override
	public T actualizarComponente(T entity) {
		getEntityManager().merge(entity);
		return entity;
		
	}
	
	@Override
	public T actualizarMenu(T entity) {
		getEntityManager().merge(entity);
		return entity;
		
	}
	@Override
	public void borrar(T entity) {
		
		getEntityManager().remove(getEntityManager().merge(entity)); // em.remove(em.merge(obj));
		

	}

	@Override
	public T borrar(Serializable id) {
		T entity = getEntityManager().find(this.getPersistentClass(), id);
		if (entity != null) {
	
		this.borrar(entity);
		}
	
		return entity;
	}

	@Override
	public boolean existe(Serializable id) {
		T entity = getEntityManager().find(this.getPersistentClass(), id);
		if (entity != null) 
			return true;
		else
			return false;
			
	}

	@Override
	public T persistir(T entity) {
		//System.out.println(entityManager.getClass().getName());
		getEntityManager().persist(entity);
		return entity;
	}

	@Override
	public T recuperar(Serializable id) {
		T entity = getEntityManager().find(this.getPersistentClass(), id);
		return entity; 
	}
		
	
	@Override
	public List<T> recuperarTodos() {

		Query consulta= getEntityManager().createQuery("select e from " + getPersistentClass().getSimpleName()+" e");
		@SuppressWarnings("unchecked")
		List<T> resultado = (List<T>)consulta.getResultList();
		return resultado;
	}

	

	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	public void setPersistentClass(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}


}
