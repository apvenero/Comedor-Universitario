package ttps.clases;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Inheritance (strategy= InheritanceType.JOINED)
public class Cartilla {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idCartilla;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date fechaInicio;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date fechaFin;
	private int precio;


	@OneToMany(mappedBy="cartilla",cascade=CascadeType.ALL)
	private List<MenuDiario> listaMenuDiario;
	
	private int cantSemDisponibles;
	
	private String[] menu_lunes_ids;
	private String[] menu_martes_ids;
	private String[] menu_miercoles_ids;
	private String[] menu_jueves_ids;
	private String[] menu_viernes_ids;
	
	public String[] getMenu_martes_ids() {
		return menu_martes_ids;
	}

	public void setMenu_martes_ids(String[] menu_martes_ids) {
		this.menu_martes_ids = menu_martes_ids;
	}

	public String[] getMenu_miercoles_ids() {
		return menu_miercoles_ids;
	}

	public void setMenu_miercoles_ids(String[] menu_miercoles_ids) {
		this.menu_miercoles_ids = menu_miercoles_ids;
	}

	public String[] getMenu_jueves_ids() {
		return menu_jueves_ids;
	}

	public void setMenu_jueves_ids(String[] menu_jueves_ids) {
		this.menu_jueves_ids = menu_jueves_ids;
	}

	public String[] getMenu_viernes_ids() {
		return menu_viernes_ids;
	}

	public void setMenu_viernes_ids(String[] menu_viernes_ids) {
		this.menu_viernes_ids = menu_viernes_ids;
	}

	public String[] getMenu_lunes_ids() {
		return menu_lunes_ids;
	}

	public void setMenu_lunes_ids(String[] menu_lunes_ids) {
		this.menu_lunes_ids = menu_lunes_ids;
	}

	public Cartilla(){}

	public Long getIdCartilla() {
		return idCartilla;
	}

	public void setIdCartilla(Long idCartilla) {
		this.idCartilla = idCartilla;
	}

	
	public Date getFechaInicio() {
		return fechaInicio;
	}
	
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaFin() {
		return fechaFin;
	}
	
	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public List<MenuDiario> getListaMenuDiario() {
		return listaMenuDiario;
	}

	public void setListaMenuDiario(List<MenuDiario> listaMenuDiario) {
		this.listaMenuDiario = listaMenuDiario;
	}

	public int getCantSemDisponibles() {
		return cantSemDisponibles;
	}

	public void setCantSemDisponibles(int cantSemDisponibles) {
		this.cantSemDisponibles = cantSemDisponibles;
	}

	@Override
	public String toString() {
		return "Cartilla [idCartilla=" + idCartilla + ", fechaInicio="
				+ fechaInicio + ", fechaFin=" + fechaFin + ", precio=" + precio
				+ ", cantSemDisponibles=" + cantSemDisponibles
				+ ", menu_lunes_ids=" + Arrays.toString(menu_lunes_ids)
				+ ", menu_martes_ids=" + Arrays.toString(menu_martes_ids)
				+ ", menu_miercoles_ids=" + Arrays.toString(menu_miercoles_ids)
				+ ", menu_jueves_ids=" + Arrays.toString(menu_jueves_ids)
				+ ", menu_viernes_ids=" + Arrays.toString(menu_viernes_ids)
				+ "]";
	}



	
	
	
}
