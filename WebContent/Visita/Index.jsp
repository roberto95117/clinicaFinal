<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica</title>
	<%@ include file="../masterPages/include.ui.jquery.bootstrap.jsp" %>
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
			    	  Cita - ${cita.getIdPaciente().getNombres() } ${cita.getIdPaciente().getApellidos() }</a>
			</h3>
				
			</div>
			<div id="collapseAlumnos" class="panel-collapse collapse in">
			<div class="panel-body">
				<a data-toggle="modal" data-target="#finalizarVisita" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="editar"  class="btn btn-danger">Finalizar Visita</a>	  														
				<br/>
				<br/>
				
				<form method="post" action="ServletAddMedicacion.do" class="form-horizontal">
					<input type="hidden" name="idMedicacion" value="${idMedicacion}">
					<input type="hidden" name="idCita" value="${cita.getIdCita() }">
					<label>Medicina:</label>
					<select name="idMedicina"  class="form-control" style="width:300px;min-width:300px"  >
						<c:forEach items="${medicinas }" var="medicina">
							<option value="${medicina.getIdMedicina() }">${medicina.getNombre()}</option>
						</c:forEach>
						
					</select>
					<br/>
					<label>Cantidad:</label>
					<select name="cantidad" class="form-control" style="width:300px;min-width:300px">
						
						<% for(int i=1;i<=10;i++){
               			%>
               			<option value="<%=i%>"><%=i %></option>	
               				<% }%>
						
					</select>
					<br/>
					
					<label>Detalle:</label>
					<textarea maxlength="500" name="detalle" class="form-control" rows="3"></textarea>
					
					<br/>
					<button class="btn btn-success" type="submit">Agregar Medicacion</button>
				</form>
				
				
				
				
			</div>
			</div>
		</div>
		</div>
		
		<div class="panel-group" id="accordion3">
		<div class="panel panel-primary">
			<div class="panel-heading">
			<h3 class="panel-title">
			
			<a data-toggle="collapse" data-parent="#accordion3" href="#collapseAlumnos0">
			    	  Cita - ${cita.getIdPaciente().getNombres() } ${cita.getIdPaciente().getApellidos() } - Medicaciones</a>
			</h3>
				
			</div>
			<div id="collapseAlumnos0" class="panel-collapse collapse in">
			<div class="panel-body">
			
				<c:if test="${medicaciones.equalsIgnoreCase('no') }">
					<h1>No Hay Medicaciones para esta Cita</h1>
				</c:if>
				<c:if test="${medicaciones.equalsIgnoreCase('si') }">
				
				<div class="table-responsive">
		            	<table id="mainTable" class="table table-hover table-responsive table-bordered">
		            		<thead>
		            			<tr style="background-color:#f0ad4e;cursor: pointer;">
				                    <th>Medicina</th>
				                    <th>Cantidad</th>
			                    	<th>Precio</th>
			                    	<th>Detalle</th>
			                    	<th></th>
			                    </tr>
		            		</thead>
		            		<c:forEach items="${medicinaasignada }" var="masignada">		                    	
		                    	<tr style="cursor: pointer;">
	  								<th>${masignada.getIdMedicina().getNombre()}</th>
	  								<th>${masignada.getCantidad() }</th>
	  								<th>${masignada.getTotal()}</th>
	  								<th>${masignada.getDetalle() }</th>  								
	  								<th>
	  									<div class="row">
	  										<div class="col-lg-6">
		  										<div style="margin-right:10px;margin-left:10px;margin-bottom:10px" class="col-lg-2">
		  											<form >
		  												<a  class="btn btn-sm btn-danger" data-toggle="modal" data-target="#eliminar${masignada.getIdDetalleMed()}" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="eliminar"><span class="glyphicon glyphicon-remove"> </span></a> 										  												  										
		  											</form>		  											
		  										</div>
		   										<div style="margin-left:10px;margin-right:10px;margin-bottom:10px" class="col-lg-2">
	  												<form >
		  												<a  class="btn btn-sm btn-success" data-toggle="modal" data-target="#editar${masignada.getIdDetalleMed() }" style="cursor: pointer;" data-toggle="tooltip" data-placement="bottom"  title="editar"><span class="glyphicon glyphicon-edit"> </span></a> 										  												  										
		  											</form>  												
		  										</div>
		  																			
	  										</div>
	  									</div> 									
	  								</th>
	  									  							
	  							</tr>		            			
<!--
 Ventana Emergente
Para eliminar actividad-->	
        <div class="modal fade bs-example-modal-sm" id="eliminar${masignada.getIdDetalleMed() }" tabindex="-1" role="dialog" aria-labelledby="eliminar${paciente.getIdPaciente() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="eliminar${masignada.getIdDetalleMed() }-1" >Eliminar </h4>
      </div>
      
                
         <form action="ServletEliminarMedicacion.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
               <input type="hidden" name="idDetalleMedicacion" value="${masignada.getIdDetalleMed()}">
               <input type="hidden" name="idCita" value="${cita.getIdCita() }">
                
               <h3>¿Eliminar medicacion  ${masignada.getIdMedicina().getNombre()}? </h3 >
               
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
		                    <!--Para editar medicacion-->	
        <div class="modal fade bs-example-modal-sm" id="editar${masignada.getIdDetalleMed() }" tabindex="-1" role="dialog" aria-labelledby="editar${cita.getIdCita() }-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="editar${masignada.getIdDetalleMed() }-1" >EDITAR</h4>
      </div>          
         <form action="ServletEditarMedicacion.do" method="post" class="form-horizontal" role="form">
            <div class="modal-body">
                <input type="hidden" name="idDetalleMedicacionE" value="${masignada.getIdDetalleMed()}">
               <input type="hidden" name="idCitaE" value="${cita.getIdCita() }">
                
                
              	 <label>Medicamento:</label>
              	 <input type="text" class="form-control" value="${masignada.getIdMedicina().getNombre()}" disabled>          	
				<br/>  
									<br/>
					
					<label>Detalle:</label>
					<textarea placeholder="${masignada.getDetalle()}" maxlength="500" name="detalle" class="form-control" rows="3" disabled></textarea>
					          	
				<label>Cantidad:</label>
					<select name="cantidadE" class="form-control" >						
						<% for(int i=1;i<=10;i++){
               			%>
               			<option value="<%=i%>"><%=i %></option>	
               				<% }%>						
					</select> 
      </div>
       <div class="modal-footer">
        <button  data-toggle="tooltip" data-placement="bottom" title="editar" type="submit" class="btn btn-success btn-sm "><span class="glyphicon glyphicon-ok"></span></button>
                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span></button>
      </div>
          </form>      
    </div>
  </div>
</div><!-- Termina Ventana Emergente-->
		            		
		            		</c:forEach>
		            		

	  									
	  						
		            	</table>
	  				
  
				</div>
				</c:if>
				
				
				
				
			</div>
			</div>
		</div>
		</div>
		</div>
	</div>		

</body>
</html>