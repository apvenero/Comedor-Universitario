package ttps.clases;

public class UsuarioForm {

	private String dni;
	private String contrasenia;
	
	public UsuarioForm(){}
	
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	@Override
	public String toString() {
		return "UsuarioForm [dni=" + dni + ", contrasenia=" + contrasenia + "]";
	}
	
	
}
