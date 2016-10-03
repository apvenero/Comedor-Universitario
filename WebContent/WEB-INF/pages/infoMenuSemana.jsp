<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">
	<fieldset><legend>Información Menues de la semana: <strong><c:out value="${compraObject.semana}"/></strong></legend></fieldset>

	<form:form class="form-horizontal" modelAttribute="compra" method="post" action="">

	<div class="col-md-6 col-md-offset-3">
		<div class="form-group">
			<h4 id="tit"><b>LUNES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_lunes_ids" itemLabel="nombre" itemValue="idMenu" disabled="true" /> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MARTES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_martes_ids" itemLabel="nombre" itemValue="idMenu" disabled="true"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>MIERCOLES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_miercoles_ids" itemLabel="nombre" itemValue="idMenu" disabled="true"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>JUEVES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_jueves_ids" itemLabel="nombre" itemValue="idMenu" disabled="true"/> 
		</div>
		<div class="form-group">
			<h4 id="tit"><b>VIERNES</b></h4>
			<form:checkboxes  items="${listaMenus}" path="menu_viernes_ids" itemLabel="nombre" itemValue="idMenu" disabled="true"/> 
		</div>
		<br>
		<a href="listarCompras" type="button" class="btn btn-success">Volver</a><br>
		
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
			         		<c:forEach var="id" items="${compraObject.menu_lunes_ids}">
			     		   
			     		   "${id}",
			     		</c:forEach> ]);
			
			marcar('martes', [
				         		<c:forEach var="id" items="${compraObject.menu_martes_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			marcar('miercoles', [
				         		<c:forEach var="id" items="${compraObject.menu_miercoles_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			
			marcar('jueves', [
				         		<c:forEach var="id" items="${compraObject.menu_jueves_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
			
			marcar('viernes', [
				         		<c:forEach var="id" items="${compraObject.menu_viernes_ids}">
				     		   
				     		   "${id}",
				     		</c:forEach> ]);
		</script>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>