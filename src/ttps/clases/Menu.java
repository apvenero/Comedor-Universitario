package ttps.clases;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity

@Inheritance (strategy= InheritanceType.JOINED)
public class Menu {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idMenu;
	private String nombre;
	@ManyToOne(optional=false)
	private EntradaPlatoPrincipal platoPrincipal;
	
	@ManyToOne(optional=false)
	private EntradaPlatoPrincipal entrada;
	
	@ManyToOne(optional=false)
	private Postre postre;
	
	@ManyToOne(optional=false)
	private Bebida bebida;
	
	@OneToMany(mappedBy="menu",cascade=CascadeType.ALL)
	private List<MenuDiario> menuesDiario;
	
	private boolean aptoCeliaco;
	private boolean aptoDiabetico;
	private boolean aptoLactosa;
	private boolean aptoHipertenso;
	private boolean vegetariano;
	private String aptoCeliaco_;
	private String aptoDiabetico_;
	private String aptoLactosa_;
	private String aptoHipertenso_;
	private String vegetariano_;
	
	public String getAptoCeliaco_() {
		if(aptoCeliaco == true){
			return "Si";
		}else
		return "No";
	}

	public void setAptoCeliaco_(String aptoCeliaco_) {
		this.aptoCeliaco_ = aptoCeliaco_;
	}

	public String getAptoDiabetico_() {
		if(aptoDiabetico == true){
			return "Si";
		}else
		return "No";
	}

	public void setAptoDiabetico_(String aptoDiabetico_) {
		this.aptoDiabetico_ = aptoDiabetico_;
	}

	public String getAptoLactosa_() {
		if(aptoLactosa == true){
			return "Si";
		}else
		return "No";
	}
	

	public void setAptoLactosa_(String aptoLactosa_) {
		this.aptoLactosa_ = aptoLactosa_;
	}

	public String getAptoHipertenso_() {
		if(aptoHipertenso == true){
			return "Si";
		}else
		return "No";
	}
	

	public void setAptoHipertenso_(String aptoHipertenso_) {
		this.aptoHipertenso_ = aptoHipertenso_;
	}

	public String getVegetariano_() {
		if(vegetariano == true){
			return "Si";
		}else
		return "No";
	}

	public void setVegetariano_(String vegetariano_) {
		this.vegetariano_ = vegetariano_;
	}

	public Menu(){}

	public Long getIdMenu() {
		return idMenu;
	}

	public void setIdMenu(Long idMenu) {
		this.idMenu = idMenu;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public EntradaPlatoPrincipal getPlatoPrincipal() {
		return platoPrincipal;
	}

	public void setPlatoPrincipal(EntradaPlatoPrincipal platoPrincipal) {
		this.platoPrincipal = platoPrincipal;
	}

	public EntradaPlatoPrincipal getEntrada() {
		return entrada;
	}

	public void setEntrada(EntradaPlatoPrincipal entrada) {
		this.entrada = entrada;
	}

	public Postre getPostre() {
		return postre;
	}

	public void setPostre(Postre postre) {
		this.postre = postre;
	}

	public Bebida getBebida() {
		return bebida;
	}

	public void setBebida(Bebida bebida) {
		this.bebida = bebida;
	}

	public List<MenuDiario> getMenuesDiario() {
		return menuesDiario;
	}

	public void setMenuesDiario(List<MenuDiario> menuesDiario) {
		this.menuesDiario = menuesDiario;
	}

	public boolean isAptoCeliaco() {
		return aptoCeliaco;
	}

	public void setAptoCeliaco(boolean aptoCeliaco) {
		this.aptoCeliaco = aptoCeliaco;
	}

	public boolean isAptoDiabetico() {
		return aptoDiabetico;
	}

	public void setAptoDiabetico(boolean aptoDiabetico) {
		this.aptoDiabetico = aptoDiabetico;
	}

	public boolean isAptoLactosa() {
		return aptoLactosa;
	}

	public void setAptoLactosa(boolean aptoLactosa) {
		this.aptoLactosa = aptoLactosa;
	}

	public boolean isAptoHipertenso() {
		return aptoHipertenso;
	}

	public void setAptoHipertenso(boolean aptoHipertenso) {
		this.aptoHipertenso = aptoHipertenso;
	}

	public boolean isVegetariano() {
		return vegetariano;
	}

	public void setVegetariano(boolean vegetariano) {
		this.vegetariano = vegetariano;
	}


	
	
	
}
