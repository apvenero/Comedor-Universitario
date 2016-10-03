package ttps.hibernate;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMF {
	private static final EntityManagerFactory em;

	static {
		em = Persistence.createEntityManagerFactory("comedoruniversitario");
	}

	public static EntityManagerFactory getEMF() {
		return em;
	}

}
