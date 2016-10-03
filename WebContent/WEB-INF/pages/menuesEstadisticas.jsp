<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="headerAdministrador.jsp"/>
<div class="container">
<fieldset><legend>Estadistica de Menúes</legend></fieldset>
<div class="progress">
  <div  id="p1" class="progress-bar progress-bar-striped active" role="progressbar"
  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:50%">
   Menú 4: Fiambres- Milanesas con papas fritas-Helado-Coca cola (50%)
  </div>
</div>
<div class="progress">
  <div  id="p2" class="progress-bar progress-bar-striped active" role="progressbar"
  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:30%">
   Menú 2: Sandwich de miga-Medallones de pescado con puré-Gelatina-Agua (30%)
  </div>
</div>
<div class="progress">
  <div  id="p1" class="progress-bar progress-bar-striped active" role="progressbar"
  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
   Menú 3: Tartitas de verdura-Ensalada de varias verduras-Budin de pan- Agua (40%)
  </div>
</div>
<div class="progress">
  <div  id="p2" class="progress-bar progress-bar-striped active" role="progressbar"
  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:30%">
   Menú 1: Empanaditas de carne- Arroz con pollo- Flan con dulce de leche- Coca cola (30%)
  </div>
</div>


</div>
<jsp:include page="footer.jsp"/>
</body>
</html>