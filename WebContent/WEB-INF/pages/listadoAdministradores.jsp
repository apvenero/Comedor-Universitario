<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<fieldset><legend>Listado Administradores </legend></fieldset>

 <c:if test="${empty adminList}">
                No hay otros Administradores  
 </c:if>
 
 <c:if test="${not empty adminList}">
 
	<table class="table" id="tabla">
	    <thead>
	        <tr class="warning">
		        <th>Nombre</th>
		        <th>Apellido</th>
		        <th>DNI</th>
		        <th></th>
		        <th></th>
		        <th></th>
	       </tr>
	   </thead>
	   <tbody>
	   <c:forEach items="${adminList}" var="a">
	  				<tr>
						<td><c:out value="${a.nombre}" /></td>
						<td><c:out value="${a.apellido}" /></td>
						<td><c:out value="${a.dni}" /></td>
						<td><a href="editarAdmin?id=${a.idPerfil}"><img src="resources/imagenes/modificar.jpg"></a></td>
	 					<td><a href="eliminarAdmin?id=${a.idPerfil}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 						
					</tr>
         </c:forEach>
         </tbody>
         </table>
</c:if>
	     
	<div id="espacio"><a href="nuevoAdmin" type="button" id="bot" class="btn active">Nuevo Administrador</a></div>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>