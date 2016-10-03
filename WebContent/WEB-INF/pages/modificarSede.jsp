<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<form:form class="form-horizontal" id="formEditar" modelAttribute="sede" method="post" action="actualizarSede">

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Sede</legend>
		</fieldset>
			<form:hidden path="idSede"  value="${sedeObject.idSede}" /><br>
			
		
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre de la Sede:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" value="${sedeObject.nombre}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Ubicacion:</label>
				<div class="col-md-4">
					<form:input path="ubicacion" type="text" value="${sedeObject.ubicacion}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Teléfono:</label>
				<div class="col-md-4">
					<form:input path="telefono" type="text" value="${sedeObject.telefono}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Email:</label>
				<div class="col-md-4">
					<form:input path="email" type="text" value="${sedeObject.email}" class="form-control input-md" />
				</div>
			</div>			
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" onclick="return submitgestionSedes();" class="btn">Modificar</button>
      				<a href="listar" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
	</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>