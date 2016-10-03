package ttps.clases;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="idPerfil", referencedColumnName="idPerfil")
public class Administrador extends Perfil {

	@Override
	public boolean sosAdministrador() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean sosResponsable() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean sosUsuario() {
		// TODO Auto-generated method stub
		return false;
	}


	
	
}
