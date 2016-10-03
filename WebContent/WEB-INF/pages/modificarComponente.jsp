<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<form:form class="form-horizontal" id="formEditar" modelAttribute="componente" method="post" action="guardarComponente" >

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Componente</legend>
		</fieldset>
		<input name="idComponente" id="idComponente" type="hidden" value="${compObject.idComponente}" class="form-control input-md" />
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre Componente:</label>
				<div class="col-md-4">
					<input name="nombre" id="nombre" type="text" value="${compObject.nombre}" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Celiaco:</label>
				<div class="col-md-4">
				
					<select class="form-control" name="select" id="select" >
						<option value="${compObject.aptoCeliaco}" >${compObject.aptoCeliaco}</option>
						<option value="SI" >SI </option>
						<option value="NO" >NO </option>
					</select>
					
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Diabético:</label>
				<div class="col-md-4">
					<select class="form-control" name="select" id="select" >
						<option value="${compObject.aptoDiabetico}" >${compObject.aptoDiabetico}</option>
						<option value="SI" >Si </option>
						<option value="NO" >No </option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto tolerante a la Lactosa:</label>
				<div class="col-md-4">
					<select class="form-control" name="select" id="select" >
						<option value="${compObject.aptoLactosa}" >${compObject.aptoLactosa}</option>
						<option value="SI" >Si </option>
						<option value="NO" >No </option>
					</select>
				</div>
			</div><div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Hipertenso:</label>
				<div class="col-md-4">
					<select class="form-control" name="select" id="select" >
						<option value="${compObject.aptoHipertenso}" >${compObject.aptoHipertenso}</option>
						<option value="SI" >Si </option>
						<option value="NO" >No </option>
					</select>
				</div>
			</div>
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton" type="submit" class="btn">Modificar</button>
      				<a href="listadoComponentes" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
		</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>