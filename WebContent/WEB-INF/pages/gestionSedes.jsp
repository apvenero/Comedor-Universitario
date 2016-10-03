<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<fieldset><legend>Gestión de Sedes</legend></fieldset>

 <c:if test="${empty sedeList}">
                No hay Sedes  
 </c:if>
 
 <c:if test="${not empty sedeList}">
 
	<table class="table" id="tabla">
	    <thead>
	        <tr class="warning">
		        <th>Nombre Sede</th>
		        <th>Ubicación</th>
		        <th>E-mail</th>
		        <th>Teléfono</th>
		        <th></th>
		        <th></th>
	       </tr>
	   </thead>
	   <tbody>
	   <c:forEach items="${sedeList}" var="s">
	  				<tr>
						<td><c:out value="${s.nombre}" /></td>
						<td><c:out value="${s.ubicacion}" /></td>
						<td><c:out value="${s.email}" /></td>
						<td><c:out value="${s.telefono}" /></td>
						<td><a href="editar?id=${s.idSede}"><img src="resources/imagenes/modificar.jpg"></a></td>
	 					<td><a href="eliminar?id=${s.idSede}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 				
					</tr>
         </c:forEach>
         </tbody>
         </table>
</c:if>
	     
	<div id="espacio"><a href="nuevaSede" type="button" id="bot" class="btn active">Nueva Sede</a></div>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>