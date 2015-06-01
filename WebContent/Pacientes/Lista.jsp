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
		            			<tr style="background-color:#f0ad4e;cursor: pointer;">
				                    <th >Nombres</th>
				                    <th>Apellidos</th>
			                    	<th>Direccion</th>
			                    	<th>Telefono</th>
			                    	<th>Sexo</th>
			                    	<th>Fecha De Nacimiento</th>
			                    	<th></th>
			                    </tr>
		            		</thead>
		            		<c:forEach items="${pacientes }" var="paciente">
		                    	<!--
 Ventana Emergente
Para eliminar actividad-->	
        <div class="modal fade bs-example-modal-sm" id="eliminar${paciente.getIdPaciente() }" tabindex="-1" role="dialog" aria-labelledby="eliminar${paciente.getIdPaciente() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="eliminar${paciente.getIdPaciente() }-1" >Eliminar </h4>
      </div>
      
                
         <form action="ServletEliminarPaciente.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
               <input type="hidden" name="idPaciente" value="${paciente.getIdPaciente()}">
               
                
               <h3>¿Eliminar a ${paciente.getNombres() } ${paciente.getApellidos() }? </h3 >
               
               <br />
               
             
      </div>
       <div class="modal-footer">
        <button  data-toggle="tooltip" data-placement="bottom" title="eliminar" type="submit" class="btn btn-success btn-sm "><span class="glyphicon glyphicon-ok"></span></button>
                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span></button>
      </div>
          </form>
      
    </div>
  </div>
</div><!-- Termina Ventana Emergente-->

<!--Ventana Emergente -->
		                    <!--Para editar paciente-->	
        <div class="modal fade bs-example-modal-sm" id="editar${paciente.getIdPaciente() }" tabindex="-1" role="dialog" aria-labelledby="editar${paciente.getIdPaciente() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="editar${paciente.getIdPaciente() }-1" >EDITAR</h4>
      </div>
      
                
         <form action="ServletModificarPaciente.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
                <input type="hidden" name="idPacienteE" value="${paciente.getIdPaciente()}">
                <label>Nombres</label>
              	<div class="input-group">
				<input  name="nombresE" class="form-control" type="text" placeholder="${paciente.getNombres() }" >
	        	<span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
        	</div>             

				<br/>
				<label>Apellidos</label>
        	<div class="input-group">
				<input name="apellidosE" class="form-control" type="text" placeholder="${paciente.getApellidos() }" > 				
				<span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
        	</div>             
				<br/>
				<label>Direccion</label>
        	<div class="input-group">
				<input name="direccionE" class="form-control" type="text" placeholder="${paciente.getDireccion() }" >				
				<span class="input-group-addon"><span class="glyphicon glyphicon-tower"></span></span>
        	</div>   
				<br/>
				<label>Telefono</label>
        	<div class="input-group">
				<input name="telefonoE" onkeypress="return justNumbers(event);" maxlength="8"  placeholder="${paciente.getTelefono() }" class="form-control" type="text"  >				
				<span class="input-group-addon"><span class="glyphicon glyphicon-earphone"></span></span>
        	</div>				
				<br/>
				<label>Sexo</label>
        	<div class="input-group">
				<select name="sexoE" class="form-control"  >
					<c:if test="${paciente.getSexo().equalsIgnoreCase('Masculino')}">						
						<option >Femenino</option>
						<option selected>Masculino</option>
						
											
					</c:if>
					<c:if test="${paciente.getSexo().equalsIgnoreCase('Femenino')}">
						<option selected>Femenino</option>
						<option >Masculino</option>			
					</c:if>
				</select>
				<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        	</div>
				
				<br/>
				<label>Fecha de Nacimiento</label>
            <input  name="fechaE" class="form-control"  placeholder="${paciente.getFechaNac() }"   type="text" id="datepicker2" size="30">				
						
        	    
             <script>
             	$(function() {
            		$( "#datepicker2" ).datepicker({
            			changeMonth: true,
            			changeYear: true
            		});
            		$( "#datepicker2" ).datepicker( "option", "mm/dd/yy", $( this ).val() );
            	});
	</script>
              <br />
               	
               
             
      </div>
       <div class="modal-footer">
        <button  data-toggle="tooltip" data-placement="bottom" title="editar" type="submit" class="btn btn-success btn-sm "><span class="glyphicon glyphicon-ok"></span></button>
                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span></button>
      </div>
          </form>
      
    </div>
  </div>
</div><!-- Termina Ventana Emergente-->
	
		                    	
		                    	<tr style="cursor: pointer;">
	  								<th>${paciente.getNombres() }</th>
	  								<th>${paciente.getApellidos() }</th>
	  								<th>${paciente.getDireccion() }</th>
	  								<th>${paciente.getTelefono() }</th>
	  								<th>${paciente.getSexo() }</th>
	  								<th>${paciente.getFechaNac() }</th>
	  								<th>
	  									<div class="row">
	  										<div class="col-lg-6">
		  										<div style="margin-right:10px;margin-bottom:10px" class="col-lg-3">
		  											<form >
		  												<a  class="btn btn-sm btn-danger" data-toggle="modal" data-target="#eliminar${paciente.getIdPaciente() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="eliminar"><span class="glyphicon glyphicon-remove"> </span></a> 										  												  										
		  											</form>		  											
		  										</div>
		  										<div class="col-lg-3">
	  												<form>
	  													<a  class="btn btn-sm btn-success" data-toggle="modal" data-target="#editar${paciente.getIdPaciente() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="editar"><span class="glyphicon glyphicon-edit"> </span></a>		  											  										
	  												</form>	  												
		  										</div>		  										
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