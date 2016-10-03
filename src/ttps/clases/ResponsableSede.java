package ttps.clases;
import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;


@Entity
@DiscriminatorValue("responsable")

public class ResponsableSede extends Perfil {
	

	@ManyToOne(cascade = CascadeType.ALL, optional=false)
	private Sede sede;
	
	public ResponsableSede(){}



	public Sede getSede() {
		return sede;
	}


	public void setSede(Sede sede) {
		this.sede = sede;
	}



	@Override
	public boolean sosAdministrador() {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public boolean sosResponsable() {
		// TODO Auto-generated method stub
		return true;
	}



	@Override
	public boolean sosUsuario() {
		// TODO Auto-generated method stub
		return false;
	}

	
}
