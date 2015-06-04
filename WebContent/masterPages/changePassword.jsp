<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
	<%@ include file="include.ui.jquery.bootstrap.jsp" %>
	<script>
	$(document).ready(function (){
			$( "#effect" ).effect( "slide", "width: 100%, height: 100%", 900, "10000" );
	});
	</script>
</head>
<body>
	<%@ include file="../masterPages/menu.jsp"%>
	<%@ include file="../masterPages/ventanasEmergentes.jsp" %>
	<div id="effect"  class="container">
	<div class="panel-group" id="accordion1">
		<div  class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><a data-toggle="collapse" data-parent="#accordion1" href="#collapseFormSelect"> ${usuario.getNombreCompleto()} <span class="glyphicon glyphicon-arrow-right"></span> Cambiar Contraseña</a> </h3>
			</div>
			<div id="collapseFormSelect" class="panel-collapse collapse in">
			<div class="panel-body">
				 <div class="col-lg-6 col-sm-12 col-xs-12">
				 	<form action="ServletChangePass.do" method="post">
				 		
						<fieldset>
							<legend>Contraseña anterior</legend>
							<div class="input-group input-sm">
								<input class="form-control input-sm" type="password" name="anterior" required>
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							</div>
						</fieldset>
						<br>
						<fieldset>
							<legend>Contraseña nueva</legend>
							<div class="input-group input-sm">
								<input  class="form-control input-sm" type="password" name="nueva" required>	
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							</div>
						</fieldset>
						<br>
						<fieldset>
							<legend>Confirmar contraseña</legend>
							<div class="input-group input-sm">
								<input class="form-control input-sm" type="password" name="confirmar" required>
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
							</div>
						</fieldset>
						<br>
						<button title="cambiar" type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-thumbs-up"></span></button>
						<br>
						<c:if test="${mensaje!=null }">
							<div class="alert alert-danger">
								<h4 class="text-center"><strong>${mensaje }</strong></h4>
							</div>
						</c:if>
					</form>
				 </div>
			</div>	 
			</div>
		</div>
		</div>
	</div>
</body>
</html>