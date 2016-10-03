<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">
<fieldset><legend>Informacion Compras</legend></fieldset>

 <c:if test="${empty compList}">
          No hay Compras  
 </c:if>
  <c:if test="${not empty compList}">
 
  <table class="table" id="tabla">
    <thead>
      <tr>
        <th>Usuario</th>
        <th>Sede</th>
        <th>Semana</th>
        <th>Informaci&oacute;n menues</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${compList}" var="c">
      <tr>
        <td><c:out value="${c.getUsuario().getNombre()}" /></td>
        <td><c:out value="${c.getSede().getNombre()}" /></td>
        <td><c:out value="${c.semana}" /></td>
        <td><a href="listarMenuCompra?id=${c.idCompra}"><button type="button" class="btn btn-danger">Ver pedido</button></a></td>
      </tr>
    </c:forEach>

    </tbody>
  </table><br>
  </c:if>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>