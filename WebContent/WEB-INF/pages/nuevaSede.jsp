<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<form:form id="formAltaSede" modelAttribute="sede" class="form-horizontal" action="guardarSede" method="POST">
		<fieldset>
			<!-- Form Name -->
			<legend>Nueva Sede</legend>
		</fieldset>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre de la Sede:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" placeholder="Ingrese el nombre de la sede" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Ubicacion:</label>
				<div class="col-md-4">
					<form:input path="ubicacion" type="text" placeholder="Ingrese la ubicacion de la sede" class="form-control input-md"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">E-mail:</label>
				<div class="col-md-4">
					<form:input path="email" type="text"	placeholder="Ingrese el mail de la sede" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Teléfono:</label>
				<div class="col-md-4">
					<form:input path="telefono" type="text"	placeholder="Ingrese el telefono de la sede" class="form-control input-md"/>
				</div>
			</div>
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton" type="submit" class="btn">Agregar</button>
      				<a href="listar" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
		</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>