<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<!-- Bootstrap CSS -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap JS -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	 <link href="jqueryBootgrid/jquery.bootgrid.css" rel="stylesheet" />
	<script src="./js/jquery.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&language=es"></script>


<style>

.a{color:#B40404; }
#boton{background-color:#8E0909; float:right; color:white; }
#espacio{margin-bottom:10%}

</style>
<title>Gestion de sedes</title>
</head>
<body>
<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">
<fieldset><legend>Gestión de Sedes</legend></fieldset>
<label>Buscar Registro por fecha</label><input type="date" id="dia" name="dia"/><br><br>
<table class="table" id="tabla">
    <thead>
        <tr class="warning">
        <th>Dia del pago</th>
        <th>Cantidad de crédito</th>
        <th>Nombre y apellido</th>
        <th>DNI</th>
        <th>Opciones</th>
        
       </tr>
   </thead>
   <tbody>
      <tr class="success">
        <td>24/10/2015</td>
        <td>30</td> 
        <td>Ana Paula Venero</td>
        <th>33713210</th>
        <td><a href="modificarRegistroPago.jsp"><img src="imagenes/modificar.jpg"></a> <a><img src="imagenes/eliminar.jpg"></a></td>
	  </tr>
	  <tr class="success">
        <td>03/11/2015</td>
        <td>55</td> 
        <td>Paula Altolaguirre</td>
        <th>33713210</th>
        <td><a href="#"><img src="imagenes/modificar.jpg"></a> <a><img src="imagenes/eliminar.jpg"></a></td>
	  </tr>
	 </tbody>
	 </table>
	<div id="espacio"><a href="nuevoRegistro.jsp" type="button" id="boton" class="btn active">Nuevo registro de pago</a></div>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>