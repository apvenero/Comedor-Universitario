<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<fieldset><legend>Generacion de Cartilla</legend></fieldset><br>
<fieldset><legend><strong>Cartillas</strong></legend></fieldset>

<c:if test="${empty cartList}">
                No hay Cartillas  
 </c:if>
 
 <c:if test="${not empty cartList}">
 
<table class="table" id="tabla">
    <thead>
        <tr class="warning">
        <th>Fecha Inicio</th>
        <th>Fecha Fin</th>
        <th>Precio</th>
        <th>Cantidad de semanas </th>
   		<th></th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${cartList}" var="c">
	  				<tr>
						<td><c:if test="${not empty c.fechaInicio}"><c:out value="${c.fechaInicio}"/></c:if>
							<c:if test="${empty c.fechaInicio}">Indefinida</c:if></td>
						<td><c:if test="${not empty c.fechaFin}"><c:out value="${c.fechaFin}"/></c:if>
							<c:if test="${empty c.fechaFin}">Indefinida</c:if></td>
						<td><c:out value="${c.precio}" /></td>
						<td><c:out value="${c.cantSemDisponibles}" /></td>
						
						<td><a href="editarCartilla?id=${c.idCartilla}"><img src="resources/imagenes/modificar.jpg"></a>
	 					<a href="eliminarCartilla?id=${c.idCartilla}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 				
					</tr>
         </c:forEach>
    </tbody>
  </table>
  </c:if>

<div id="espacio"><a href="nuevaCartilla" type="button" id="bot" class="btn active">Nueva Cartilla</a></div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>