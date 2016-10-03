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
<title>Gestión de Menúes</title>
</head>
<body>
<jsp:include page="headerResponsableSede.jsp"/>
<div class="container">

<fieldset><legend>Listado usuarios dia 16/11/2015</legend></fieldset><br>

<form class="navbar-form navbar-right">
	  <div class="form-group">
	  	Mostrar segun tipo menu:
		<select id="selectbasic" name="selectbasic" class="form-control">
						<option value="0">--Seleccione--</option>
						<option value="1">Sin menu especial</option>
						<option value="2">Vegetariano</option>
						<option value="3">Celiaco</option>
						<option value="3">Intolerante a la lactosa</option>
						
					</select>	
						Mostrar según lugar :
		<select id="selectbasic" name="selectbasic" class="form-control">
						<option value="0">--Seleccione--</option>
						<option value="2">Comedor</option>
						<option value="3">Retira vianda</option>
					</select>	  </div>
	  <button type="submit" class="btn btn-success">Filtrar</button><br><br>
	  
	</form>
<table class="table center" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre</th>
        <th>Apellido</th>
        <th>DNI</th>
        <th>Tipo Menu</th>
        <th>Lugar</th>
        
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>Pedro</td>
        <td>Lopez</td>
        <td>34213243</td>
        <td>Vegetariano</td>
        <td>Comedor</td>

      </tr>
      <tr class="danger">
        <td>Maria</td>
        <td>Ruiz</td>
        <td>32613243</td>
        <td>Celiaco</td>
        <td>Retira vianda</td>

      </tr>
  	<tr class="success">
        <td>Luis</td>
        <td>Sanchez</td>
        <td>32453423</td>
        <td>Sin menu especial</td>
        <td>Comedor</td>
      </tr>
        
    </tbody>
  </table><br>
<nav>
  <ul class="pager">
    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Anterior</a></li>
    <li class="next"><a href="#">Siguiente <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
 	

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>