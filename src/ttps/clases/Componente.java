package ttps.clases;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;


@Entity
@Inheritance (strategy= InheritanceType.JOINED)
public class Componente {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long idComponente;
	private String nombre;
	private boolean aptoCeliaco;
	private boolean aptoDiabetico;
	private boolean aptoLactosa;
	private boolean aptoHipertenso;
	private String aptoCeliaco_;
	private String aptoDiabetico_;
	private String aptoLactosa_;
	private String aptoHipertenso_;
	
	public Componente (){}

	public Long getIdComponente() {
		return idComponente;
	}

	public void setIdComponente(Long idComponente) {
		this.idComponente = idComponente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
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
	
	public boolean tipoPostre() {
		return false;
	}
	public boolean tipoEntradaPlatoPrincipal() {
		return false;
	}
	public boolean tipoBebida() {
		return false;
	}
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

	
	@Override
	public String toString() {
		return ""+ nombre + "";
	}
	
	
}
