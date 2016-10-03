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
.a{color:#B40404; text-decoration:none }
#espacio{margin-bottom:10%}
#otro{margin-rigth:30%}
#bot{background-color:#8E0909; color:white;float:right}
.contenido{margin-left:10%; margin-right:10%}
#linea{padding:0.7%;background-color:#B40404}
#boton{background-color:#8E0909; color:white;margin-left:15%}
#cancelar{background-color:#8E0909; color:white; margin-left:5%}
#dias{margin-right:70%; font-size:medium; background-color:#5cb85c; color:white;}
.alert-success{background-color: #77B15F; margin-top:2%}
#imagen{ width:135px; float:left; padding-left:2.5%; }
#texto{float:right; width:86%; height: 87px;font-size:xx-large; color:white; margin-bottom:5%}
#titulo{font-size:xx-large; width:20%; height:2%; color:#B40404}
#tabla{font-size:medium;}
#cartilla{margin-left:20%}
#tit{color:#8E0909; font-size:medium}

</style>
<title>Responsable de la sede</title>
</head>
<body>
<img alt="" src="resources/imagenes/encabezado.jpg" width="100%"><br><br>
	<nav id="navi" class="navbar navbar-inverse">
  		<div class="container">
    		 <div>
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="viewHomeResponsable">Home</a></li>
        			<li><a href="listaUsuariosHabilitados">Información Usuarios habilitados</a></li>
        			<li><a href="listarCompras">Información Compra de ticket</a></li>
            		<li><a href="#">Registro de pagos</a></li>	
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Buzón virtual de sugerencias<span class="caret"></span></a>
          				<ul class="dropdown-menu">
            				<li><a href="listarGenerales">General</a></li>
            				<li><a href="listarSedes">Sede</a></li>
            			</ul>
            		</li>
            	
     			 </ul>
     	 		<ul class="nav navbar-nav navbar-right">
     	 			<li><a href="#"><span class="glyphicon glyphicon-user"></span><b><c:out value="${u.nombre}"/></b></a></li>
        			<li><a href="cerrar"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesión</a></li>
      			</ul>
    		</div>
  		</div>
</nav>

</body>
</html>