package ttps.clases;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="id" , referencedColumnName="idSugerencia")

public class Infraestructura extends Sugerencia {

}
