<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerUsuario.jsp"/>

<div class="container">

	<section> 
		<header><h3>Te damos la bienvenida a la web del <strong>COMEDOR UNIVERSITARIO UNLP</strong></h3></header>
		<br>
			<article><h3 class="text-danger">Como usuario usted podrá:</h3></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Actualizar sus datos de perfil</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Compra de tickets y pago</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Comentar y sugerir</span></h4></article> 
	</section> 

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>