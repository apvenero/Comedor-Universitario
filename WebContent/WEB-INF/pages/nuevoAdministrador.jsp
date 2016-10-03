<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<form:form class="form-horizontal" action="guardarAdministrador" modelAttribute="administrador" method="post">
		<fieldset>
			<!-- Form Name -->
			<legend>Nuevo Administrador</legend>
		</fieldset>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" placeholder="Ingrese el nombre del administrador" class="form-control input-md" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Apellido:</label>
				<div class="col-md-4">
					<form:input path="apellido" type="text" placeholder="Ingrese el apellido del administrador" class="form-control input-md" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="radios">DNI:</label>
					<div class="col-md-4">
					<form:input path="dni" class="form-control input-md" type="text" placeholder="Ingrese el DNI del Administrador" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Contraseña:</label>
				<div class="col-md-4">
					<form:input path="contrasenia" type="password" placeholder="Ingrese la contraseña" class="form-control input-md" />
				</div>
			</div>			
			
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" class="btn">Agregar</button>
      				<a href="listarAdmin" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
		</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>