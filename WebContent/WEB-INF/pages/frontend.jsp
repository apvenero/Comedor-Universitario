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
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin-top:10%;
      margin: auto;
  }
  #login{ float:right;  margin-top: 2%; margin-right:2%;}
 
  .sede{ margin-top: 2%; }
  .comedor {font-size:large; font-family:Arial; margin-bottom:2%;}
  .footer{background-color:#BDBDBD;}
  .info{ width:49%; float:left; margin-left:2%;}
  .masinfo {width:45%; float:right;margin-right:2%;}	
  #texto{padding:5%; font-family:Arial; font-size:medium;}
  #error{color:red; margin-left:58%}
  .otrainfo{margin-top:24%;}
  </style>
<title>Comedor Universitario</title>
</head>
<body>
	<div class="container">
	 	<div class="row">
	 	
		<img alt="" src="resources/imagenes/comedor.jpg"  width="100%">
			
			<form:form class="navbar-form navbar-right" action="doLogin" modelAttribute="usuarioForm">
				
                       <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <form:input id="dni" type="text" class="form-control" path="dni" placeholder="Dni del Usuario" />                                        
                        	<form:errors path="dni" cssClass="error" />
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <form:input id="contrasenia" type="password" class="form-control" path="contrasenia" placeholder="Contraseña" />                                        
                           	<form:errors path="contrasenia" cssClass="error"/>
                       
                        </div>
						
						<button type="submit" class="btn btn-danger">Entrar</button>
            </form:form>
      	</div>
		<c:if test="${not empty error}">
  			 <p id="error">${error}</p>
	   </c:if>
		<div class="sede">
		<p  class="alert alert-warning text-center"><strong>Sede Bosque en el Boulevard 120 entre 61 y 62 || Sede Centro de La Plata, en la calle 44 Nº 733 (ATULP) 
								|| Sede Bosque Oeste, en calle 50 y 116 || Sede Club Everton, Salón Planta Baja, del edificio ubicado en la calle 14 entre 63 y 64.</strong> </p>
		
		
		</div>
		
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  			<!-- Indicators -->
  			<ol class="carousel-indicators">
    			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
    			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
   		 		<li data-target="#carousel-example-generic" data-slide-to="3"></li>
   		 		<li data-target="#carousel-example-generic" data-slide-to="4"></li>
  			</ol>
  			<div class="carousel-inner" role="listbox">
    			<div class="item active">
      				<img src="resources/imagenes/comedor1.jpg" alt="">
      				<div class="carousel-caption">
        
      				</div>
    			</div>
    	
    
    			<div class="item">
      				<img src="resources/imagenes/comedor2.jpg" alt="">
      				<div class="carousel-caption">
        
      				</div>
				</div>     
     
     			<div class="item">
     	 			<img src="resources/imagenes/comedor3.jpg" alt="">
      				<div class="carousel-caption">
        
      				</div>
      			</div>
      
      			<div class="item">
      				<img src="resources/imagenes/comedor4.jpg" alt="">
      				<div class="carousel-caption">
        
      				</div> 
    			</div>
    		
    			<div class="item">
      				<img src="resources/imagenes/omedor5.jpg" alt="">
      				<div class="carousel-caption">
        
      				</div> 
    			</div>
    		</div>

   			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    			<span class="sr-only">Previous</span>
 	 		</a>
  			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    			<span class="sr-only">Next</span>
  			</a>
		</div><br>
		<div class="comedor"><p class="bg-danger text-muted  text-center"> <strong>En el Comedor Universitario se brinda un servicio de almuerzo completo a los estudiantes de la Universidad Nacional 
				de La Plata. Se preparan 10 mil raciones por día en cuatro sedes.
				<br>El Comedor Universitario de la UNLP es un servicio para todos los estudiantes, docentes y no docentes de la 
				UNLP. Desde su reapertura en el año 2004 se convirtió en un punto de encuentro para toda la comunidad universitaria. </strong></p>
		</div>
		<div class="info">
			<p id="texto"  class="bg-warning text-warning"><strong><ins>Acceso gratuito para estudiantes que lo necesiten:</ins> en cualquier momento del año vas a poder obtener el beneficio sólo 
			realizando una entrevista personal en el Dpto. de Atención Social de la UNLP. Acercate al Rectorado 
			(calle 7 entre 47 y 48) a partir del 18 de febrero, de lunes a jueves, de 9 a 12 hs., con tu Libreta Sanitaria y 
			certificado de alumno regular o, si sos ingresante, certificado de inscripción a la UNLP; en amobs casos se llevará una 
			fotocopia de DNI.</strong></p>
		</div>
		<div class="masinfo">
			<p  id="texto" class="bg-warning text-warning"> <strong><ins>Subsidio Universal:</ins>para todos los estudiantes de la UNLP, a excepción de quienes accedan gratuitamente. 
			Se pagará un ticket de un valor no mayor al 40% del costo del menú. Para todo el 2015 será de $8,50. 
			La venta de tickets será semanal o quincenal, tenés que realizarla en la sede del Comedor a la que vas a asistir en el 
			horario de venta, de 10 a 14 hs.</strong></p>
		</div>
		<div class="otrainfo"><p id="texto" class="bg-warning text-muted"><strong>El Programa Igualdad de Oportunidades para Estudiar sostiene que la Universidad Pública educando, constituye un 
		instrumento insoslayable en la construcción de un país integrado y democrático con ideales de paz, justicia y libertad. 
		La esencia del Comedor Universitario, contemplado en este Programa,  es brindar a los estudiantes el acceso a una comida 
		diaria a un costo subsidiado, de modo que aquellos que se encuentren atravesando una situación socio económica compleja, 
		puedan contar con una alimentación básica.</strong></p>
 		</div>
 		
	</div>	

	
	<div class="footer"><p class="text-danger text-center"> <strong>Altolaguirre - Venero - Leger °Comedor Universitario TTPS JAVA 2015° </strong></p></div>
</html>