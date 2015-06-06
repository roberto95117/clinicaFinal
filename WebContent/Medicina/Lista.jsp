<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica</title>
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
			    	  Medicinas </a>
			    	
			    	</h3>
			  	</div>
			  	<div id="collapseAlumnos" class="panel-collapse collapse in">
  				<div class="panel-body">
	  				<div class="table-responsive">
	    			
    					
		            	<table id="mainTable" class="table table-hover table-responsive table-bordered">
		            		<thead>
		            			<tr style="background-color:#f0ad4e;cursor: pointer;">
				                    <th>Nombre</th>
				                    <th>Precio</th>
			                    	<th>Cantidad Disponible</th>
			                    	<th></th>
			                    </tr>
		            		</thead>
		            		<c:forEach items="${medicinas }" var="med">
<!--
 Ventana Emergente
Para eliminar medicina-->	
        <div class="modal fade bs-example-modal-sm" id="eliminar${med.getIdMedicina() }" tabindex="-1" role="dialog" aria-labelledby="eliminar${paciente.getIdPaciente() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="eliminar${med.getIdMedicina() }-1" >Eliminar </h4>
      </div>
      
                
         <form action="ServletEliminarMedicina.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
               <input type="hidden" name="idmedicina" value="${med.getIdMedicina()}">
               
                
               <h3>¿Eliminar medicina ${med.getNombre()}? </h3 >
               
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
		                    <!--Para editar medicina-->	
        <div class="modal fade bs-example-modal-sm" id="editar${med.getIdMedicina() }" tabindex="-1" role="dialog" aria-labelledby="editar${med.getIdMedicina() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="editar${med.getIdMedicina() }-1" >EDITAR</h4>
      </div>
      
                
         <form action="ServletModificarMedicina.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
                <input type="hidden" name="idMedicinaE" value="${med.getIdMedicina()}">
                
        		 <label>Nombre:</label>       	
        	<div class="input-group">
				<input  name="nombremedicinaE" class="form-control" type="text" placeholder="${med.getNombre() }" >
	        	<span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
        	</div>             
			<br/>
			<label>Precio:</label>       	
        	<div class="input-group">
				<input onkeypress="return justNumbers(event);"  maxlength="6"  name="preciomedicinaE" class="form-control" type="text" placeholder="${med.getPrecio() }" >
	        	<span class="input-group-addon"><span class="glyphicon glyphicon-usd"></span></span>
        	</div>             
			<br/>
			<label>Cantidad Disponible:</label>       	
        	<div class="input-group">
				<input onkeypress="return justNumbers(event);" maxlength="5"  name="cantidadmedicinaE" class="form-control" type="text" placeholder="${med.getCantDisp() }" >
	        	<span class="input-group-addon"><span class="glyphicon glyphicon-plus"></span></span>
        	</div>             
			<br/>
            
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
	  								<th>${med.getNombre() }</th>
	  								<th>${med.getPrecio() }</th>
	  								<th>${med.getCantDisp()}</th>
	  								
	  								
	  								<th>
	  									<div class="row">
	  										<div class="col-lg-6">
		  										<div style="margin-right:10px;margin-left:10px;margin-bottom:10px" class="col-lg-2">
		  											<form >
		  												<a  class="btn btn-sm btn-danger" data-toggle="modal" data-target="#eliminar${med.getIdMedicina() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="eliminar"><span class="glyphicon glyphicon-remove"> </span></a> 										  												  										
		  											</form>		  											
		  										</div>
		  										<div style="margin-left:10px;margin-right:10px;margin-bottom:10px" class="col-lg-2">
	  												<form>
	  													<a  class="btn btn-sm btn-success" data-toggle="modal" data-target="#editar${med.getIdMedicina() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="editar"><span class="glyphicon glyphicon-edit"> </span></a>		  											  										
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