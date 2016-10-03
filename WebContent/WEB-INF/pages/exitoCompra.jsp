<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="headerUsuario.jsp"/>
<div class="container">
	<h3>Su compra se realizó correctamente. ¡Muchas gracias!</h3><br>

	<a href="nuevaCompra" type="button" id="aceptar" class="btn active">Realizar otra compra</a>

</div>

<jsp:include page="footer.jsp"/>
</body>
</html>