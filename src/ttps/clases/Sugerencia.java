package ttps.clases;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Inheritance (strategy= InheritanceType.JOINED)
public class Sugerencia {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idSugerencia;
	private String mensaje;
	private String tipo;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date fecha;
	
	@ManyToOne(optional=false)
	private Usuario usuario;
	
	@ManyToOne(optional=false)
	private Sede sede;
	
	
	
	public Sugerencia(){}

	
	public Sugerencia(Long idSugerencia, String mensaje, Date fecha, Usuario usuario, Sede sede, String tipo) {
		super();
		this.idSugerencia = idSugerencia;
		this.mensaje = mensaje;
		this.fecha = fecha;
		this.usuario = usuario;
		this.sede = sede;
		this.tipo=tipo;
	}


	public Long getIdSugerencia() {
		return idSugerencia;
	}

	public void setIdSugerencia(Long idSugerencia) {
		this.idSugerencia = idSugerencia;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	

	public Sede getSede() {
		return sede;
	}

	public void setSede(Sede sede) {
		this.sede = sede;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	
	public String getTipo() {
		return tipo;
	}


	public void setTipo(String tipo) {
		this.tipo = tipo;
	}


	
	
	
}
