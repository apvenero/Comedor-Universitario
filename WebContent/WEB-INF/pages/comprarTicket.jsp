<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="headerUsuario.jsp"/>
<div class="container">
	<form:form class="form-horizontal" id="formEditar" action="nuevaCompraContinuacion" modelAttribute="compra" method="post">
		<fieldset>
			<!-- Form Name -->
			<legend>Compra de tickets</legend>

			<!-- File Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="filebutton">Seleccione la semana:</label>
				<div class="col-md-4">
					<input id="semana" name="semana" type="week" class="form-control input-md"> <br>
					
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Seleccione Sede:</label>
				<div class="col-md-4">
				<form:select path="sede.idSede" class="form-control">
						<form:options items="${selectSede}" itemValue="idSede" itemLabel="nombre" />
					</form:select>
						
				</div>
			</div>

		<div class="form-group">
			<div class="col-md-8">
				<button id="aceptar" name=aceptar class="btn btn-success">Aceptar</button>
			    <a href="listarCartilla" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
			</div>
		
		</div>
		</fieldset>
	</form:form>
	
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>