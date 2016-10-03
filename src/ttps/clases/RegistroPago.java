package ttps.clases;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity

public class RegistroPago {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idRegistro;
	
	@ManyToOne(optional=false)
	private Usuario usuario;
	
	@ManyToOne(optional=false)
	private Sede sede;
	
	public RegistroPago(){}

	public Long getIdRegistro() {
		return idRegistro;
	}

	public void setIdRegistro(Long idRegistro) {
		this.idRegistro = idRegistro;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Sede getSede() {
		return sede;
	}

	public void setSede(Sede sede) {
		this.sede = sede;
	}
	
	
}
