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
#modificar{margin-left:120%}

</style>
<title>Gestion de sedes</title>
</head>
<body>
<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">
	<form class="form-horizontal">
		<fieldset>
			<!-- Form Name -->
			<legend>Nuevo registro de pago</legend>

			<div class="form-group">
				<label class="col-md-4 control-label" for="radios">DNI del usuario</label>
					<div class="col-md-4">
					<input id="dni" name="dni" class="form-control input-md" type="text">
				</div>
			</div>


			<!-- File Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="filebutton">Crédito a cargar:</label>
				<div class="col-md-4">
					<input id="total" name="total" class="form-control input-md" type="text">
				</div>
			</div>


			<!-- Button -->
			<div class="form-group">
				<div class="col-md-4">
					<button id="modificar" name="modificar" class="btn btn-primary">Agregar</button>
				</div>
			</div>
			
			<a href="registrodePagos.jsp"><button type="button" class="btn btn-danger">Volver</button></a>
		</fieldset>
	</form>
	
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>