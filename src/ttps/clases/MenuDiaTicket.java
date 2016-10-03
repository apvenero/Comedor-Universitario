package ttps.clases;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;



@Entity

public class MenuDiaTicket {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idMenuDiaTicket;
	private boolean retira;
	private boolean comedor;
	private Date fecha;
	
	@ManyToOne
	private Menu menu;
	
	@ManyToOne(optional=false)
	private Sede sede;
	
	@ManyToOne
	private Compra compra;	
	public MenuDiaTicket(){}

	public Long getIdMenuDiaTicket() {
		return idMenuDiaTicket;
	}

	public void setIdMenuDiaTicket(Long idMenuDiaTicket) {
		this.idMenuDiaTicket = idMenuDiaTicket;
	}

	public boolean isRetira() {
		return retira;
	}

	public void setRetira(boolean retira) {
		this.retira = retira;
	}

	public boolean isComedor() {
		return comedor;
	}

	public void setComedor(boolean comedor) {
		this.comedor = comedor;
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
	
	
	
	
}
