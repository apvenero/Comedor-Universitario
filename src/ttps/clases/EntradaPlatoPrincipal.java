package ttps.clases;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="idComponente" , referencedColumnName="idComponente")

public class EntradaPlatoPrincipal extends Componente {
	@OneToMany(mappedBy="platoPrincipal",cascade=CascadeType.ALL)
	private List<Menu> menuesPP;
	
	@OneToMany(mappedBy="entrada",cascade=CascadeType.ALL)
	private List<Menu> menuesEntrada;

	/*@Override
	public boolean tipoPostre() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean tipoEntradaPlatoPrincipal() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean tipoBebida() {
		// TODO Auto-generated method stub
		return false;
	}*/
}
