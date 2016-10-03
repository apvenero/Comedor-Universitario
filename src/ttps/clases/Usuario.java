package ttps.clases;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="idPerfil", referencedColumnName="idPerfil")
public class Usuario extends Perfil {

	private String facultad;
	private String tipo;
	
	@Lob
    private byte[] foto;

	private int creditoDisponible;
	@OneToMany(mappedBy="usuario",cascade=CascadeType.ALL)
	private List<Sugerencia> sugerencias;
	
	@OneToMany(mappedBy="usuario",cascade=CascadeType.ALL)
	private List<RegistroPago> registros;
	
	@OneToMany(mappedBy="usuario",cascade=CascadeType.ALL)
	private List<Compra> compras;
	
	
	public Usuario(){}

	public String getFacultad() {
		return facultad;
	}

	public void setFacultad(String facultad) {
		this.facultad = facultad;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getCreditoDisponible() {
		return creditoDisponible;
	}

	public void setCreditoDisponible(int creditoDisponible) {
		this.creditoDisponible = creditoDisponible;
	}

	@Override
	public boolean sosAdministrador() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean sosResponsable() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean sosUsuario() {
		// TODO Auto-generated method stub
		return true;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public List<Sugerencia> getSugerencias() {
		return sugerencias;
	}

	public void setSugerencias(List<Sugerencia> sugerencias) {
		this.sugerencias = sugerencias;
	}

	public List<RegistroPago> getRegistros() {
		return registros;
	}

	public void setRegistros(List<RegistroPago> registros) {
		this.registros = registros;
	}

	public List<Compra> getCompras() {
		return compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}
	
	
}
