<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>

<div class="container">

<fieldset><legend>Listado sugerencias Generales</legend></fieldset><br>
<c:if test="${empty sugList}">
                No hay sugerencias
 </c:if>
 
 <c:if test="${not empty sugList}">
<table class="table" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre usuario</th>
        <th>Tipo sugerencia</th>
        <th>Mensaje</th>
        <th>Sede</th>
        <th>Fecha</th>
        
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${sugList}" var="c">
      	<tr>
			<td><c:out value="${c.getUsuario().getNombre()}" /></td>
			<td><c:out value="${c.tipo}"/></td>
			<td><c:out value="${c.mensaje}"/></td>
			<td><c:out value="${c.getSede().getNombre()}" /></td>
			<td><c:out value="${c.fecha}"/></td>
    					
    	</tr>			
     </c:forEach>
    </tbody>
  </table>
  </c:if><br>

 	

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>