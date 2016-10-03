package ttps.clases;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="idComponente" , referencedColumnName="idComponente")

public class Bebida extends Componente {
	@OneToMany(mappedBy="bebida",cascade=CascadeType.ALL)
	private List<Menu> menues;

	/*@Override
	public boolean tipoPostre() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean tipoEntradaPlatoPrincipal() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean tipoBebida() {
		// TODO Auto-generated method stub
		return true;
	}*/
}
