<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>

<div class="container">
<section> 
		<header><h3>Te damos la bienvenida a la web del <strong>COMEDOR UNIVERSITARIO UNLP</strong></h3></header><br>
			<article><h3  class="text-danger">Como Administrador usted podrá tener: </h3></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Gestión de las sedes (incluyendo opcionalmente la visualización gráfica en Google Maps.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Administración de los menús ofrecidos por la UNLP.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Administración del buzón virtual de sugerencias, enviadas por los usuarios.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Acceso a estadísticas sobre menúes más pedidos, sugerencias, etc.</span></h4></article> 
			
			<article><h4 class="text-warning"><span class="glyphicon glyphicon-ok" aria-hidden="true"> Administración de usuarios (Administrador General y Responsable de Sede).</span></h4></article> 
	</section> 
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>