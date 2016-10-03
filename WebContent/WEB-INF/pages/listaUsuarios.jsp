<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">


	<fieldset><legend>Listado usuarios habilitados</legend></fieldset><br>
	<c:if test="${empty usuHab}">
                No hay usuarios habilitados 
 	</c:if>
 
 <c:if test="${not empty usuHab}">

	<table class="table" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre</th>
        <th>Apellido</th>
        <th>DNI</th>
        <th>Facultad</th>
        <th>Tipo</th>
        <th>Crédito disponible</th>
        <th></th>
       </tr>
    </thead>
    <tbody>
      <c:forEach items="${usuHab}" var="u">
      	<tr>
			<td><c:out value="${u.nombre}"/></td>
			<td><c:out value="${u.apellido}"/></td>
			<td><c:out value="${u.dni}"/></td>
			<td><c:out value="${u.facultad}"/></td>
			<td><c:out value="${u.tipo}"/></td>
			<td><c:out value="${u.creditoDisponible}"/></td>
      	</tr>
      </c:forEach>
    </tbody>
  </table>
  </c:if>
    <br>


</div>
<jsp:include page="footer.jsp"/>
</body>
</html>