package ttps.clases;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity

public class Sede {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idSede;
	private String ubicacion;
	private String nombre;
	private String telefono;
	private String email;
	
	@OneToMany(mappedBy="sede",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<ResponsableSede> responsables;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "sede", cascade = CascadeType.ALL)
	private List<RegistroPago> registros;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "sede", cascade = CascadeType.ALL)
	private List<Sugerencia> sugerencias;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "sede", cascade = CascadeType.ALL)
	private List<Compra> compras;
	
	public Sede(){}

	public Sede(String ubicacion, String nombre, String telefono ,String email){
		super();
		this.ubicacion = ubicacion;
		this.nombre = nombre;
		this.telefono = telefono;
		this.email = email;
	}
	
	public Long getIdSede() {
		return idSede;
	}

	public void setIdSede(Long idSede) {
		this.idSede = idSede;
	}


	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idSede == null) ? 0 : idSede.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Sede other = (Sede) obj;
		if (idSede == null) {
			if (other.idSede != null)
				return false;
		} else if (!idSede.equals(other.idSede))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "idSede="+ idSede + ", ubicacion=" + ubicacion + ", nombre=" + nombre
				+ ", telefono=" + telefono + ", email=" + email
				+ ", responsables=" + responsables + ", registros=" + registros
				+ ", sugerencias=" + sugerencias + ", compras=" + compras;
	}

	public List<ResponsableSede> getResponsables() {
		return responsables;
	}

	public void setResponsables(List<ResponsableSede> responsables) {
		this.responsables = responsables;
	}

	public List<RegistroPago> getRegistros() {
		return registros;
	}

	public void setRegistros(List<RegistroPago> registros) {
		this.registros = registros;
	}

	public List<Sugerencia> getSugerencias() {
		return sugerencias;
	}

	public void setSugerencias(List<Sugerencia> sugerencias) {
		this.sugerencias = sugerencias;
	}

	public List<Compra> getCompras() {
		return compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}

	
	
}
