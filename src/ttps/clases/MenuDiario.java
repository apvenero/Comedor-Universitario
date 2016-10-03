package ttps.clases;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.ManyToOne;



@Entity
public class MenuDiario {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idMenuDiario;
	private Date dia;
	
	@ManyToOne
	private Menu menu;
	
	@ManyToOne
	private Cartilla cartilla;
	
	public MenuDiario(){}

	public Long getIdMenuDiario() {
		return idMenuDiario;
	}

	public void setIdMenuDiario(Long idMenuDiario) {
		this.idMenuDiario = idMenuDiario;
	}

	public Date getDia() {
		return dia;
	}

	public void setDia(Date dia) {
		this.dia = dia;
	}

	public Menu getMenues() {
		return menu;
	}

	public void setMenues(Menu menues) {
		this.menu = menues;
	}
	
	
}
