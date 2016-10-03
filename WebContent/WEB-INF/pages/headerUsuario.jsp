<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
    <script type="text/javascript" src="resources/js/jquery-1.11.0.min.js"></script>
	<!-- Bootstrap CSS -->
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap JS -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<link href="resources/jqueryBootgrid/jquery.bootgrid.css" rel="stylesheet" />
	
	
	
<meta charset="ISO-8859-1">
<style>
.navbar-inverse { background-color:#B40404; }
.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus { color:white;background-color:#A96161}
.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus{ color:white; background-color:#A96161}
.navbar-inverse .navbar-nav>li>a {color:white;}
.footer{background-color:#BDBDBD; margin-top:30%;}
.card-container.card {max-width: 350px; padding: 40px 40px;}
.card {background-color: #A96161;padding: 20px 25px 30px;margin: 0 auto 25px;margin-top: 50px;border-radius: 2px;box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);}
.profile-img-card {width: 96px;height: 96px;margin: 0 auto 10px;display: block;border-radius: 50%;}
.datos{color:white;}
#modificar{margin-left:500px; display:inline;border-color:#ac2925;background-color:#ac2925; color:#fff}
#cancelar{display:inline; border-color:#ac2925;background-color:#ac2925; color:#fff}
#aceptar{margin-left:500px; display:inline;border-color:#ac2925;background-color:#ac2925; color:#fff}

.alert-success{background-color: #77B15F; margin-top:2%}
#imagen{ width:135px; float:left; padding-left:2.5%; }
#texto{float:right; width:86%; height: 87px;font-size:xx-large; color:white; margin-bottom:5%}
.contenido{margin-left:10%; margin-right:10%}
#titulo{font-size:xx-large; width:20%; height:2%; color:#B40404}
#boton{background-color:#8E0909; float:right; color:white; }
#tabla{font-size:medium;}
#espacio{margin-bottom:10%}
.miTabla{margin-left:20%; margin-right:35%}
</style>

<title>Usuario</title>
</head>
<body>
<img alt="" src="resources/imagenes/encabezado.jpg" width="100%"><br><br>
	<nav id="navi" class="navbar navbar-inverse">
  		<div class="container">
    		 <div>
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="viewHomeUsuario">Home</a></li>
        			<li><a href="nuevaCompra">Comprar Ticket y Pago</a></li>
        			<li><a href="newSugerencia">Comentar y sugerir</a></li>
        			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Perfil<span class="caret"></span></a>
            			<ul class="dropdown-menu">
            				<li><a href="infoPerfil">Ver Perfil</a></li>
            				<li><a href="editarPerfil">Modificar Perfil</a></li>
            			</ul>
            		</li>	
        		
        			
        		</ul>	
     	 		<ul class="nav navbar-nav navbar-right">
     	 			<li><a href="#"><span class="glyphicon glyphicon-user"></span> Bienvenido/a <b><c:out value="${u.nombre}"/></b></a></li>
        			<li><a href="cerrar"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesión</a></li>
      			</ul>
      			
    		</div>
  		</div>
</nav>

</body>
</html>
