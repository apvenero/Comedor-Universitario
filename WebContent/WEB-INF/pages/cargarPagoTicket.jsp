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
	
<meta charset="ISO-8859-1">
<style>
.alert-success{background-color: #77B15F; margin-top:2%}
#imagen{ width:135px; float:left; padding-left:2.5%; }
#texto{float:right; width:86%; height: 87px;font-size:xx-large; color:white; margin-bottom:5%}
.contenido{margin-left:10%; margin-right:10%}
#titulo{font-size:xx-large; width:20%; height:2%; color:#B40404}
#boton{background-color:#8E0909; float:right; color:white; }
#tabla{font-size:medium;}
#espacio{margin-bottom:10%}
</style>

<title>Usuario</title>
</head>
<body>
<jsp:include page="headerUsuario.jsp"/>
<div class="container">
	<form class="form-horizontal">

	<fieldset><legend><strong>Pago</strong></legend></fieldset>
	
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Créditos Disponible: </label>
				<div class="col-md-1">
						100
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Créditos Total: </label>
				<div class="col-md-1">
						50
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-7 control-label">
					<a href=""><button type="button" class="btn btn-success">Finalizar Compra</button></a>	
					<a href="cargarMenusTicket.jsp"><button id="cancelar" name="volver" class="btn btn-danger">Volver</button></a>
				</div>
			</div>
	
	</form>
	
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>