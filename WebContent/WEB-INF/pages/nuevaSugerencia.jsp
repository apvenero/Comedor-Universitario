<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerUsuario.jsp"/>
<div class="container">
<form:form class="form-horizontal" action="guardarSugerencia" modelAttribute="sugerencia" method="post">
		<fieldset>
			<!-- Form Name -->
			<legend>Buzon Sugerencias</legend>
		</fieldset>

			<input name="usuario.idPerfil" type="hidden" value="${u.idPerfil}" class="form-control input-md" >
			<input name="fecha" type="hidden" value="2016-12-12" class="form-control input-md" >
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Tipo de Sugerencia:</label>
				<div class="col-md-4">
					<select id="tipo" name="tipo" class="form-control">
						<option value="">--Seleccione--</option>
						<option value="alimento">Alimento</option>
						<option value="atencion">Atención</option>
						<option value="infraestructura">Infraestructura</option>
						
					</select>
				</div>
			</div>
		
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Seleccione Sede:</label>
				<div class="col-md-4">
					<form:select path="sede.idSede" class="form-control">
						<form:options items="${allsedes}" itemValue="idSede" itemLabel="nombre" />
				
					</form:select>
				</div>
			</div>
		
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Mensaje:</label>
				<div class="col-md-4">
					<form:textarea path="mensaje" type="text" placeholder="Ingrese acá la sugerencia" class="form-control input-md" />
				</div>
			</div>
			
	
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" class="btn">Agregar</button>
      				<a href="listarResp" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
 		 	
 		 	
		</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>