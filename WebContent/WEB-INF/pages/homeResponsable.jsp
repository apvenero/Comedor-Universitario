<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerResponsableSede.jsp"/>

<div class="container">
<section> 
		<header><h3>Te damos la bienvenida a la web del <strong>COMEDOR UNIVERSITARIO UNLP</strong></h3></header><br>
			<article><h3 class="text-danger">Como Responsable usted podrá tener: </h3></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Acceso a información de usuarios habilitados para compra de tickets.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Acceso a información de las compra de tickets de su sede.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Acceso a información de registro de pagos realizados en la sede del comedor que administra.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Administración del buzón virtual de sugerencias generales o destinadas a su sede.</span></h4></article> 
	</section> 
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>