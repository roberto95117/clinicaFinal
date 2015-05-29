<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - Pacientes</title>
<%@ include file="../masterPages/include.ui.jquery.bootstrap.jsp" %>
	<script>
	$(document).ready(function (){
			$( "#effect" ).effect( "slide", "width: 100%, height: 100%", 900, "10000" );
	});
	</script>
</head>
<body>

	<%@ include file="../masterPages/menu.jsp"%>
	<%@ include file="../masterPages/ventanasEmergentes.jsp" %>
<div id="effect" class="container">
<div  class="row">
		<div class="panel-group" id="accordion2">
		<div class="panel panel-primary">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">
			    		<a data-toggle="collapse" data-parent="#accordion2" href="#collapseAlumnos">
			    	  Pacientes </a>
			    	
			    	</h3>
			  	</div>
			  	<div id="collapseAlumnos" class="panel-collapse collapse in">
  				<div class="panel-body">
	  				<div class="table-responsive">
	    			
    					
		            	<table id="mainTable" class="table table-hover table-responsive table-bordered">
		            		<thead>
		            			<tr  style="background-color:#f0ad4e;">
				                    <th>Nombres</th>
				                    <th>Apellidos</th>
			                    	<th>Direccion</th>
			                    	<th>Telefono</th>
			                    	<th>Sexo</th>
			                    </tr>
		            		</thead>
		            		<c:forEach items="${pacientes }" var="paciente">
		                    	<tr >
	  								<th>${paciente.getNombres() }</th>
	  								<th>${paciente.getApellidos() }</th>
	  								<th>${paciente.getDireccion() }</th>
	  								<th>${paciente.getTelefono() }</th>
	  								<th>${paciente.getSexo() }</th>
	  								<th>
	  									<div class="row">
	  										<div class="col-lg-6">
		  									<form action="ServletEliminarPaciente.do">
		  										<input type="button" class="btn btn-sm btn-primary" value="Eliminar">
		  									</form>	  									
	  									</div>
		  									<div class="col-lg-6">
		  										<a class="btn btn-sm btn-success">Modificar</a>
		  									</div>
	  									</div>
	  									

	  								</th>
	  									  							
	  							</tr>		            			
		            		
		            		</c:forEach>
		            		

	  									
	  						
		            	</table>
	  				
  
				</div>
  				</div>
  				</div>
		</div>
		</div>
			
		</div>
</div>
</body>
</html>