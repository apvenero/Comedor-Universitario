<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<form:form class="form-horizontal" id="formEditar" modelAttribute="admin" method="post" action="guardarAdministrador">

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Administrador</legend>
		</fieldset>
			<form:hidden path="idPerfil"  value="${adminObject.idPerfil}" /><br>
			
		
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" value="${adminObject.nombre}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Apellido:</label>
				<div class="col-md-4">
					<form:input path="apellido" type="text" value="${adminObject.apellido}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Dni:</label>
				<div class="col-md-4">
					<form:input path="dni" type="text" value="${adminObject.dni}" class="form-control input-md" />
				</div>
			</div>			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Contraseña:</label>
				<div class="col-md-4">
					<form:input path="contrasenia" type="text" value="${adminObject.contrasenia}" class="form-control input-md" />
				</div>
			</div>			
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" class="btn">Modificar</button>
      				<a href="listarAdmin" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
	</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>