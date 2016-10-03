<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
	<fieldset><legend>Gestion de Menúes</legend></fieldset><br><br>
	<a href="listadoComponentes" type="button" class="btn btn-success">Administración Componentes</a><br><br>
<br>
<br>

<fieldset><legend><strong>Menúes</strong></legend></fieldset>

<c:if test="${empty menuList}">
                No hay menues   
 </c:if><br><br>
 
 <c:if test="${not empty menuList}">
 
<table class="table" id="tabla">
    <thead>
      <tr class="warning text-center" id="tit">
        <th><strong>Menú del dia</strong></th>
        <th><strong>Entrada</strong></th>
        <th><strong>Plato Principal</strong></th>
        <th><strong>Postre</strong></th>
        <th><strong>Bebida</strong></th>
        <th><strong>Vegetariano</strong></th>
        <th><strong>Apto Celiaco</strong></th>
        <th><strong>Apto Diabético</strong></th>
        <th><strong>Apto Intolerante a la Lactosa</strong></th>
        <th><strong>Apto Hipertenso</strong></th>
        <th>Opciones</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${menuList}" var="m">
	  				<tr>
						<td><c:out value="${m.nombre}"/></td>
						<td><c:out value="${m.entrada}" /></td>
						<td><c:out value="${m.platoPrincipal}" /></td>
						<td><c:out value="${m.postre}" /></td>
						<td><c:out value="${m.bebida}" /></td>
						<td><c:out value="${m.vegetariano_}" /></td>
						<td><c:out value="${m.aptoCeliaco_}" /></td>
						<td><c:out value="${m.aptoDiabetico_}" /></td>
						<td><c:out value="${m.aptoLactosa_}" /></td>
						<td><c:out value="${m.aptoHipertenso_}" /></td>
						<td><a href="editarMenu?id=${m.idMenu}"><img src="resources/imagenes/modificar.jpg"></a>
	 					<a href="eliminarMenu?id=${m.idMenu}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 				
					</tr>
         </c:forEach>
    </tbody>
  </table><br>
  </c:if>
	<a href="newMenu" type="button" id="boton" class="btn active">Agregar Menu</a><br><br>


</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
