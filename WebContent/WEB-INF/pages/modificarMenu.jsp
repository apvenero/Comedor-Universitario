<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<form:form class="form-horizontal" id="formEditar" modelAttribute="menu" method="post" action="actualizarMenu" >

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Menú</legend>
		</fieldset>
			<input name="idMenu" id="idMenu" type="hidden" value="${menu.idMenu}" class="form-control input-md" />
			<input name="nombre" id="nombre" type="hidden" value="${menu.nombre}" class="form-control input-md" />
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Entrada:</label>
				<div class="col-md-4">
					<form:select path="entrada.idComponente" class="form-control" >
						<form:option  value="${menu.entrada}" itemValue="idComponente" itemLabel="nombre" />
						<form:options items="${selectEntradaPP}" itemValue="idComponente" itemLabel="nombre" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Plato Principal:</label>
				<div class="col-md-4">
					<form:select path="platoPrincipal.idComponente" class="form-control" >
						<form:option  value="${menu.platoPrincipal}" itemValue="idComponente" itemLabel="nombre" />
						<form:options items="${selectEntradaPP}" itemValue="idComponente" itemLabel="nombre" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Postre:</label>
				<div class="col-md-4">
					<form:select path="postre.idComponente" class="form-control" >
						<form:option  value="${menu.postre}" itemValue="idComponente" itemLabel="nombre" />
						<form:options items="${selectPostre}" itemValue="idComponente" itemLabel="nombre" />
					</form:select>
				</div>
			</div>
				<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Bebida:</label>
				<div class="col-md-4">
					<form:select path="bebida.idComponente" class="form-control" >
						<form:option  value="${menu.bebida}" itemValue="idComponente" itemLabel="nombre" />
						<form:options items="${selectBebida}" itemValue="idComponente" itemLabel="nombre" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Vegetariano:</label>
				<div class="col-md-4">
				<select class="form-control" id="vegetariano"  name="vegetariano" >
						<option value="${menu.vegetariano}" >${menu.vegetariano_}</option>
						<option value="1" >Si</option>
						<option value="0" >No </option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Celiaco:</label>
				<div class="col-md-4">
					<select class="form-control" id="aptoCeliaco" name="aptoCeliaco" >
						<option value="${menu.aptoCeliaco}" >${menu.aptoCeliaco_}</option>
						<option value="1" >Si </option>
						<option value="0" >No </option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Diabético:</label>
				<div class="col-md-4">
					<select id="aptoDiabetico" name="aptoDiabetico" class="form-control">
						<option value="${menu.aptoDiabetico}" >${menu.aptoDiabetico_}</option>
						<option value="1" >SI </option>
						<option value="0" >NO </option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto tolerante a la Lactosa:</label>
				<div class="col-md-4">
					<select id="aptoLactosa" name="aptoLactosa" class="form-control">
						<option value="${menu.aptoLactosa}" >${menu.aptoLactosa_}</option>
						<option value="1" >SI </option>
						<option value="0" >NO </option>
					</select>
				</div>
			</div><div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Hipertenso:</label>
				<div class="col-md-4">
					<select id="aptoHipertenso" name="aptoHipertenso" class="form-control">
						<option value="${menu.aptoHipertenso}" >${menu.aptoHipertenso_}</option>
						<option value="1" >SI </option>
						<option value="0" >NO </option>
					</select>
				</div>
			</div>
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton" type="submit" class="btn">Modificar</button>
      				<a href="listarMenues" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
	</form:form>
</div>
<jsp:include page="footer.jsp"/></body>
</body>
</html>