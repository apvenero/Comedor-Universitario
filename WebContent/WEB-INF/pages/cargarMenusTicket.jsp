<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerUsuario.jsp"/>
<div class="container">
<fieldset><legend>Compra de Ticket semanal</legend></fieldset>

<form:form modelAttribute="compra" class="form-horizontal" action="guardarCompra" method="POST">
		
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Precio general de cada menú</label>
			<div class="col-md-4">
					<form:select path="monto" class="form-control">
						<form:option value="0">Seleccione valor</form:option>
			      	    <form:option value="10">$10</form:option>
					</form:select>
			  </div>
		</div>
		<form:input type="hidden" path="semana" value="${semana}"/>
		<form:input type="hidden" path="usuario.idPerfil" value="${idPerfil}"/>
		<form:input type="hidden" path="sede.idSede" value="${idSede}"/>
		<div class="form-group">
			<h4 id="tit"><b>LUNES</b></h4>
			<form:checkboxes  items="${menu}" path="menu_lunes_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MARTES</b></h4>
			<form:checkboxes  items="${menu}" path="menu_martes_ids" itemLabel="nombre" itemValue="idMenu"/>
			
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MIERCOLES</b></h4>
			<form:checkboxes  items="${menu}" path="menu_miercoles_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>JUEVES</b></h4>
			<form:checkboxes  items="${menu}" path="menu_jueves_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>VIERNES</b></h4>
			<form:checkboxes  items="${menu}" path="menu_viernes_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<div class="col-md-8">
				<button id="aceptar" name=aceptar class="btn btn-success">Aceptar</button>
			    <a href="listarCartilla" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
			</div>
		</div>

	</form:form>
		
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>