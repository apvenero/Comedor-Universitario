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

<title>Administracion</title>
</head>
<body>
<jsp:include page="headerAdministrador.jsp"/>
<div class="container">

<fieldset><legend>Listado usuarios habilitados</legend></fieldset><br>

<table class="table center" id="tabla">
    <thead>
        <tr class="warning">
        <th>Nombre</th>
        <th>Apellido</th>
        <th>DNI</th>
        <th>Email</th>
        <th>Facultad</th>
        <th>Menu especial</th>
        <th></th>
        
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>Pedro</td>
        <td>Lopez</td>
        <td>34213243</td>
        <td>pedro@gmail.com</td>
        <td>Informatica</td>
        <td>Vegetariano</td>
        <td><a href="#">Ver mas</a></td>
      </tr>
      <tr class="danger">
        <td>Maria</td>
        <td>Ruiz</td>
        <td>32613243</td>
        <td>maria@gmail.com</td>
        <td>Derecho</td>
        <td>Celiaco</td>
        <td><a href="#">Ver mas</a></td>
      </tr>
  <tr class="success">
        <td>Luis</td>
        <td>Sanchez</td>
        <td>32453423</td>
        <td>pedluisro@gmail.com</td>
        <td>Ciencias Economicas</td>
        <td></td>
        <td><a href="#">Ver mas</a></td>
      </tr>
      <tr class="danger">
        <td>Ana</td>
        <td>Venero</td>
        <td>34251435</td>
        <td>ana@gmail.com</td>
        <td>Informatica</td>
        <td></td>
        <td><a href="#">Ver mas</a></td>
      </tr>
        <tr class="success">
        <td>Pedro</td>
        <td>Lopez</td>
        <td>34213243</td>
        <td>pedro@gmail.com</td>
        <td>Informatica</td>
        <td>Vegetariano</td>
        <td><a href="#">Ver mas</a></td>
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