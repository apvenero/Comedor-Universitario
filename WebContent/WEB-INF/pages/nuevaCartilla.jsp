<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<fieldset><legend>Cartilla de menú semanal</legend></fieldset>
<form:form modelAttribute="cartilla" id="formEditar" class="form-horizontal" action="guardarCartilla" method="POST">
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Fecha de inicio de vigencia de la cartilla<small>(Opcional)</small></label>  
			<div class="col-md-4">
			 	<input style="width:170px;" name="fechaInicio" type="date" class="form-control input-md">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Fecha de fin de vigencia de la cartilla<small>(Opcional)</small></label>  
			<div class="col-md-4">
				<input style="width:170px;" name="fechaFin" type="date" class="form-control input-md" >
			 </div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Precio general del menú</label>
			<div class="col-md-4">
				<select id="precio" name="precio" class="form-control-cartilla">
			  		<option value="0">Seleccione valor</option>
			      	<option value="10">$10</option>
			    </select>
			  </div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Ingrese cantidad de semanas que el menú seleccionado estará disponible</label>  
			<div class="col-md-4">
				<input style="width:230px;" name="cantSemDisponibles" type="text" placeholder="Ingrese cantidad de semanas" class="form-control input-md">
			</div>
		</div>
		<div id="cartilla">
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
		</div>
	</form:form>
		
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>