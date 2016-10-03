package ttps.clases;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;


@Entity
@Inheritance (strategy= InheritanceType.JOINED)
public class Compra {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idCompra;
	private int monto;
	
	@ManyToOne(optional=false)
	private Usuario usuario;
	@ManyToOne(optional=false)
	private Sede sede;

	private String semana;
	
	private String[] menu_lunes_ids;
	private String[] menu_martes_ids;
	private String[] menu_miercoles_ids;
	private String[] menu_jueves_ids;
	private String[] menu_viernes_ids;
	
	public String[] getMenu_lunes_ids() {
		return menu_lunes_ids;
	}

	public void setMenu_lunes_ids(String[] menu_lunes_ids) {
		this.menu_lunes_ids = menu_lunes_ids;
	}

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

	public Compra(){
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

	public Long getIdCompra() {
		return idCompra;
	}

	public void setIdCompra(Long idCompra) {
		this.idCompra = idCompra;
	}

	public int getMonto() {
		return monto;
	}

	public void setMonto(int monto) {
		this.monto = monto;
	}

	public String getSemana() {
		return semana;
	}

	public void setSemana(String semana) {
		this.semana = semana;
	}
	
	
}
