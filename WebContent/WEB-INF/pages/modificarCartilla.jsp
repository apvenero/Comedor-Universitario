<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<form:form class="form-horizontal" id="formEditar" modelAttribute="cartilla" method="post" action="guardarCartillaModificada" >

		<fieldset>
			<!-- Form Name -->
			<legend>Modificar Cartilla</legend>
		</fieldset>
		<input name="idCartilla" id="idCartilla" type="hidden" value="${cartillaObject.idCartilla}" class="form-control input-md" />
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Fecha de inicio de vigencia de la cartilla<small>(Opcional)</small></label>  
			<div class="col-md-4">
			 	<input style="width:170px;" name="fechaInicio" value="${cartillaObject.fechaInicio}" type="date" class="form-control input-md" >
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Fecha de fin de vigencia de la cartilla<small>(Opcional)</small></label>  
			<div class="col-md-4">
				<input style="width:170px;" name="fechaFin" type="date" value="${cartillaObject.fechaFin}" class="form-control input-md">
			 </div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="selectbasic">Precio general del menú</label>
			<div class="col-md-4">
				<select class="form-control" name="precio" id="select" >
							<option value="10" >10</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Ingrese cantidad de semanas que el menú seleccionado estará disponible</label>  
			<div class="col-md-4">
				<input style="width:230px;" name="cantSemDisponibles" value="${cartillaObject.cantSemDisponibles}" type="text" placeholder="Ingrese cantidad de semanas" class="form-control input-md">
			</div>
		</div>
		
			<div id="cartilla">
		<div class="form-group">
			<h4 id="tit"><b>LUNES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_lunes_ids" itemLabel="nombre" itemValue="idMenu"/> 
			
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MARTES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_martes_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MIERCOLES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_miercoles_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>JUEVES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_jueves_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>VIERNES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_viernes_ids" itemLabel="nombre" itemValue="idMenu"/> 
		</div>
	
	</div>
		
		<div class="form-group">
 			<div class="col-sm-offset-2 col-sm-10">
   				<button id="boton" type="submit" class="btn">Modificar</button>
   				<a href="listarCartilla" id="cancelar"  class="btn btn-danger"  role="button">Cancelar</a>
 			</div>
 		</div>
		</form:form>
		
		<script>
		function marcar(dia, arreglo) {
			//console.log(arreglo);
			$("[name='menu_"+dia+"_ids']").each(function() {
				if (arreglo.indexOf($(this).val() + "") != -1)
					$(this).prop("checked", true)
			})
		}
		
		
			marcar('lunes', [
			         		<c:forEach var="id" items="${cartillaObject.menu_lunes_ids}">
			     		   
			     		   "${id}",
			     		</c:forEach> ]);
			
			marcar('martes', [
				         		<c:forEach var="id" items="${cartillaObject.menu_martes_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			marcar('miercoles', [
				         		<c:forEach var="id" items="${cartillaObject.menu_miercoles_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			
			marcar('jueves', [
				         		<c:forEach var="id" items="${cartillaObject.menu_jueves_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			marcar('viernes', [
				         		<c:forEach var="id" items="${cartillaObject.menu_viernes_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
		</script>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>