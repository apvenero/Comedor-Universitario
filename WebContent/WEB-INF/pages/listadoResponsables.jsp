<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<fieldset><legend>Listado Responsables de Sede</legend></fieldset>

 <c:if test="${empty respList}">
                No hay Responsables
 </c:if>
 
 <c:if test="${not empty respList}">
 
	<table class="table" id="tabla">
	    <thead>
	        <tr class="warning">
		        <th>Nombre</th>
		        <th>Apellido</th>
		        <th>DNI</th>
		        <th>Sede</th>
		        <th></th>
		        <th></th>
	       </tr>
	   </thead>
	   <tbody>
	   <c:forEach items="${respList}" var="r">
	  				<tr>
						<td><c:out value="${r.nombre}" /></td>
						<td><c:out value="${r.apellido}" /></td>
						<td><c:out value="${r.dni}" /></td>
						<td><c:out value="${r.getSede().getNombre()}" /></td>
						<td><a href="editarResp?id=${r.idPerfil}"><img src="resources/imagenes/modificar.jpg"></a></td>
	 					<td><a href="eliminarResp?id=${r.idPerfil}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 				
					</tr>
         </c:forEach>
         </tbody>
         </table>
</c:if>
	     
	<div id="espacio"><a href="nuevoResp" type="button" id="bot" class="btn active">Nuevo Responsable</a></div>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>