<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - Citas</title>
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
			    	  Citas </a>
			    	
			    	</h3>
			  	</div>
			  	<div id="collapseAlumnos" class="panel-collapse collapse in">
  				<div class="panel-body">
	  				<div class="table-responsive">
	    			
    					
		            	<table id="mainTable" class="table table-hover table-responsive table-bordered">
		            		<thead>
		            			<tr style="background-color:#f0ad4e;cursor: pointer;">
				                    <th>Paciente</th>
				                    <th>Doctor</th>
			                    	<th>Fecha</th>
			                    	<th>Hora</th>
			                    	<th></th>
			                    </tr>
		            		</thead>
		            		<c:forEach items="${citas }" var="cita">
<!--
 Ventana Emergente
Para eliminar actividad-->	
        <div class="modal fade bs-example-modal-sm" id="eliminar${cita.getIdCita() }" tabindex="-1" role="dialog" aria-labelledby="eliminar${paciente.getIdPaciente() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="eliminar${cita.getIdCita() }-1" >Eliminar </h4>
      </div>
      
                
         <form action="ServletEliminarCita.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
               <input type="hidden" name="idCita" value="${cita.getIdCita()}">
               
                
               <h3>¿Eliminar cita para ${cita.getIdPaciente().getNombres() } ${cita.getIdPaciente().getApellidos() }? </h3 >
               
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
		                    <!--Para editar cita-->	
        <div class="modal fade bs-example-modal-sm" id="editar${cita.getIdCita() }" tabindex="-1" role="dialog" aria-labelledby="editar${cita.getIdCita() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="editar${cita.getIdCita() }-1" >EDITAR</h4>
      </div>
      
                
         <form action="ServletEditarCita.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
                <input type="hidden" name="idCitaE" value="${cita.getIdCita()}">
                
              	 <label>Paciente</label>
              
        	<div class="input-group">
				<select name="pacientecitaE" class="form-control">
		              <c:forEach items="${pacientes }" var="pacienteCita">
		              	<option value="${pacienteCita.getIdPaciente() }" >${pacienteCita.getNombres() } ${pacienteCita.getApellidos() }</option>
		              </c:forEach>              	
	          	 </select>	
				 <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        	</div>	
   	         <br />              
              <label>Doctor</label>
        	<div class="input-group">
				<select name="doctorcitaE" class="form-control">
              <c:forEach items="${doctores }" var="doctor">
              	<option value="${doctor.getIdUsuario() }">${doctor.getNombreCompleto() }</option>
              </c:forEach>              	
              </select>
				<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        	</div>
				
				<br/>
				<label>Hora</label>
				<div class="input-group">
				<input  class="form-control" name="horacitaE" type="time" />
				<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
        	</div>
				<br/>
				<label>Fecha</label>
            <input  name="fechacitaE" class="form-control"    placeholder="${cita.getFecha() }"   type="text" id="datepickermodificarcita" size="30">				
						
        	    
             <script>
             	$(function() {
            		$( "#datepickermodificarcita" ).datepicker({
            			changeMonth: true,
            			changeYear: false,
            			 minDate: 0
            		});
            	});
	</script>
			   
             
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
	  								<th>${cita.getIdPaciente().getNombres() } ${cita.getIdPaciente().getApellidos() }</th>
	  								<th>${cita.getIdUsuario().getNombreCompleto() }</th>
	  								<th>${cita.getFecha()}</th>
	  								<th>${cita.getHora() }</th>
	  								
	  								<th>
	  									<div class="row">
	  										<div class="col-lg-6">
		  										<div style="margin-right:10px;margin-left:10px;margin-bottom:10px" class="col-lg-2">
		  											<form >
		  												<a  class="btn btn-sm btn-danger" data-toggle="modal" data-target="#eliminar${cita.getIdCita() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="eliminar"><span class="glyphicon glyphicon-remove"> </span></a> 										  												  										
		  											</form>		  											
		  										</div>
		  										<div style="margin-left:10px;margin-right:10px;margin-bottom:10px" class="col-lg-2">
	  												<form>
	  													<a  class="btn btn-sm btn-success" data-toggle="modal" data-target="#editar${cita.getIdCita() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="editar"><span class="glyphicon glyphicon-edit"> </span></a>		  											  										
	  												</form>	  												
		  										</div>		
		  										<div style="margin-left:10px;margin-right:10px;margin-bottom:10px" class="col-lg-2">
	  												<form method="post" action="ServletIniciarVisita.do">
	  													<input type="hidden" name="idStart" value="${cita.getIdCita() }"> 
	  													
	  													<a href="ServletIniciarVisita.do?idVisita=${cita.getIdCita() }" class="btn btn-sm btn-primary" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="Iniciar Visita"><span class="glyphicon glyphicon-play"> </span></a>		  											  										
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