<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<form:form modelAttribute="postre" class="form-horizontal" action="guardarPostre" method="POST">
		<fieldset>
			<!-- Form Name -->
			<legend>Agregar Postre</legend>
		</fieldset>
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Nombre Postre:</label>
				<div class="col-md-4">
					<form:input path="nombre" type="text" placeholder="Ingrese el nombre del postre" class="form-control input-md" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Celiaco:</label>
				<div class="col-md-4">
					<select id="aptoCeliaco" name="aptoCeliaco" class="form-control">
						<option value="">--Seleccione--</option>
						<option value="1">SI</option>
						<option value="0">NO</option>
						
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Diabético:</label>
				<div class="col-md-4">
					<select id="aptoDiabetico" name="aptoDiabetico" class="form-control">
						<option value="">--Seleccione--</option>
						<option value="1">SI</option>
						<option value="0">NO</option>
						
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto tolerante a la Lactosa:</label>
				<div class="col-md-4">
					<select id="aptoLactosa" name="aptoLactosa" class="form-control">
						<option value="">--Seleccione--</option>
						<option value="1">SI</option>
						<option value="0">NO</option>
						
					</select>
				</div>
			</div><div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Apto Hipertenso:</label>
				<div class="col-md-4">
					<select id="aptoHipertenso" name="aptoHipertenso" class="form-control">
						<option value="">--Seleccione--</option>
						<option value="1">SI</option>
						<option value="0">NO</option>
						
					</select>
				</div>
			</div>
  			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10">
      				<button id="boton"type="submit" class="btn">Agregar</button>
      				<a href="listadoComponentes" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
    			</div>
 		 	</div>
		</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>