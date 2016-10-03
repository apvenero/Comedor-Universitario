<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<form:form class="form-horizontal" id="formEditar" method="post" action="actualizarResponsable" modelAttribute="resp">

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Responsable</legend>
		</fieldset>
			
					<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Seleccione Sede:</label>
				<div class="col-md-4">
					<form:select path="sede.idSede" class="form-control" >
						<form:option  value="${respObject.sede}" itemValue="idSede" itemLabel="nombre" />
						<form:options items="${sedesss}" itemValue="idSede" itemLabel="nombre" />
		
					</form:select>
				</div>
			</div>
			<div class="form-group">
	
					<form:input path="idPerfil" type="hidden" value="${respObject.idPerfil}" class="form-control input-md" />
			
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" value="${respObject.nombre}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Apellido:</label>
				<div class="col-md-4">
					<form:input path="apellido" type="text" value="${respObject.apellido}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Dni:</label>
				<div class="col-md-4">
					<form:input path="dni" type="text" value="${respObject.dni}" class="form-control input-md" />
				</div>
			</div>			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Contraseña:</label>
				<div class="col-md-4">
					<form:input path="contrasenia" type="text" value="${respObject.contrasenia}" class="form-control input-md" />
				</div>
			</div>	
			
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" class="btn">Modificar</button>
      				<a href="listarResp" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
	</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>