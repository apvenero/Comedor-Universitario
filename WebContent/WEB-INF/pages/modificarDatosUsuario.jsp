<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Usuario</title>
</head>
<body>
<jsp:include page="headerUsuario.jsp"/>
<div class="container">

	<form id="formEditar" model="usu" class="form-horizontal" method="post" action="guardarUsuario">
		<fieldset>
			<!-- Form Name -->
			<legend>Modificación de datos del Usuario</legend>
		</fieldset>
			<input type="hidden" name="idPerfil" value="${u.getIdPerfil()}">
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre:</label>
				<div class="col-md-4">
					<input id="nombre" name="nombre" type="text" value="${u.nombre}" class="form-control input-md">
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Apellido:</label>
				<div class="col-md-4">
					<input id="apellido" name="apellido" type="text" value="${u.apellido}" class="form-control input-md">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">DNI:</label>
				<div class="col-md-4">
					<input id="dni" name="dni" type="text" value="${u.dni}" class="form-control input-md">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Contrasenia:</label>
				<div class="col-md-4">
					<input id="contrasenia" name="contrasenia" type="text" value="${u.contrasenia}" class="form-control input-md">
				</div>
			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Facultad:</label>
				<div class="col-md-4">
					<input id="facultad" name="facultad" type="text" value="${u.facultad}" class="form-control input-md">
				</div>
			</div>
			
			<!-- Multiple Radios -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Tipo Usuario:</label>
				<div class="col-md-4">
					<select class="form-control" name="tipo" id="tipo" >
						<option value="${u.tipo}">${u.tipo}</option>
						<option value="alumno">Alumno</option>
						<option value="docente">Docente </option>
						<option value="nodocente">No Docente </option>
					</select>
					
				</div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
				<div class="col-md-8">
					<button id="modificar" name="modificar" class="btn btn-primary">Modificar</button>
					<button id="cancelar" name="cancelar" class="btn btn-danger">Cancelar</button>
				</div>
			</div>
	</form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>