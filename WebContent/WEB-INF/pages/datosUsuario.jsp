<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Usuario</title>
</head>
<body>
<jsp:include page="headerUsuario.jsp"/>
<div class="container">
	<fieldset>
			<!-- Form Name -->
			<legend>Mis Datos Personales</legend>
		</fieldset>
	
	<div class="miTabla">
	<table class="table table-bordered">
    <thead>
        <tr class="danger">
        <th id="tamth">Nombre</th>
        <td><strong>${u.nombre}</strong></td>
        </tr>
         <tr class="warning">
         <th>Apellido</th>
        <td><strong>${u.apellido}</strong></td>
        </tr>
         <tr class="danger"><th>Facultad</th>
         <td><strong>${u.facultad}</strong></td></tr>
         <tr class="warning">
         <th>Tipo</th>
        <td><strong>${u.tipo}</strong></td>
        </tr>
      
    </thead>
</table>
	
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>