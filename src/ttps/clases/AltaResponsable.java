package ttps.clases;

public class AltaResponsable extends Perfil {

	private Long idSede;
	
	
	public Long getIdSede() {
		return idSede;
	}

	public void setIdSede(Long idSede) {
		this.idSede = idSede;
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
