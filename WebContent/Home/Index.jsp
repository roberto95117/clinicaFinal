<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
  <%@ include file="../controlsesion.jsp" %> 
<!DOCTYPE html >
<html>
<head>
	<%@ include file="../masterPages/include.ui.jquery.bootstrap.jsp" %>
	<script>
	$(document).ready(function (){
			$( "#effect" ).effect( "slide", "width: 100%, height: 100%", 900, "10000" );
	});
	</script>
<title>Clinica</title>
</head>
<body>
	<%@ include file="../masterPages/menu.jsp"%>
	<%@ include file="../masterPages/ventanasEmergentes.jsp" %>
	<div id="effect" class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Clinica </h3>
			</div>
			<div class="panel-body">
				<div class="jumbotron alert alert-info">
					<h1 >Bienvenido</h1>
					
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>