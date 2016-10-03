<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">

<fieldset><legend>Listado sugerencias destinadas a su sede</legend></fieldset><br>

<c:if test="${empty listasedes}">
                No hay Sugerencias
 </c:if>
 
 <c:if test="${not empty listasedes}">
 
<table class="table center" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre usuario</th>
        <th>Tipo sugerencia</th>
        <th>Mensaje</th>
        <th>Fecha</th>
        <th>Sede</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
         <c:forEach items="${listasedes}" var="s">
	  				<tr>
						<td><c:out value="${s.getUsuario().getNombre()}" /></td>
						<td><c:out value="${s.tipo}" /></td>
						<td><c:out value="${s.mensaje}" /></td>
						<td><c:out value="${s.fecha}" /></td>
						<td><c:out value="${s.getSede().getNombre()}" /></td>
	 					<td><a href="eliminarAdmin?id=${s.getSede().getIdSede()}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 						
					</tr>
         </c:forEach>
         </tbody>
         </table>
</c:if>


 	

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>