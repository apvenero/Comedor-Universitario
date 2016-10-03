<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<fieldset><legend>Gestion de Menúes</legend></fieldset><br>
<fieldset><legend><strong>Componentes</strong></legend></fieldset>

<c:if test="${empty compList}">
                No hay componentes  
 </c:if><br>
  
 <c:if test="${not empty compList}"><br>
 
<table class="table" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre</th>
        <th>Apto Celiaco</th>
        <th>Apto Diabético</th>
        <th>Apto Intolerante a la Lactosa</th>
        <th>Apto Hipertenso</th>
        <th>Opciones</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${compList}" var="c">
	  				<tr>
						<td><c:out value="${c.nombre}"/></td>
						<td><c:out value="${c.aptoCeliaco_}" /></td>
						<td><c:out value="${c.aptoDiabetico_}" /></td>
						<td><c:out value="${c.aptoLactosa_}" /></td>
						<td><c:out value="${c.aptoHipertenso_}" /></td>
						<td><a href="editarComponente?id=${c.idComponente}"><img src="resources/imagenes/modificar.jpg"></a>
	 					<a href="eliminarComponente?id=${c.idComponente}"><img src="resources/imagenes/eliminar.jpg"></a></td>
 				
					</tr>
         </c:forEach>
    </tbody>
  </table><br><br>
  </c:if>
<a href="nuevaEntradaPP" type="button" id="boton" class="btn active">Agregar Entrada/Plato Principal</a>
<a href="nuevoPostre" type="button" id="boton" class="btn active">Agregar Postre</a>
<a href="nuevaBebida" type="button" id="boton" class="btn active">Agregar Bebida</a><br><br>

	<a href="listarMenues" type="button" class="btn btn-success">Volver</a><br>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>