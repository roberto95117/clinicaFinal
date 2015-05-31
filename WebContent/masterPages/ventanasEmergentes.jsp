    
      <!-- VENTANA EMERGENTE PARA AGREGAR Paciente -->
		<div class="modal fade bs-example-modal-sm" id="agregarPaciente" tabindex="-1" role="dialog" aria-labelledby="Agregar Paciente" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="agregarActividad-1" >Agregar Paciente</h4>
      </div>
      <div class="modal-body">
                
         <form action="ServletAddPaciente.do" method="post" class="form-horizontal" role="form">
                     
        	<div class="input-group">
				<input  name="nombres" class="form-control" type="text" placeholder="Nombres" required>
	        	<span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
        	</div>             

				<br/>
        	<div class="input-group">
				<input name="apellidos" class="form-control" type="text" placeholder="Apellidos" required> 				
				<span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
        	</div>             
				<br/>
        	<div class="input-group">
				<input name="direccion" class="form-control" type="text" placeholder="Direccion" required>				
				<span class="input-group-addon"><span class="glyphicon glyphicon-tower"></span></span>
        	</div>   
				<br/>
        	<div class="input-group">
				<input onkeypress="return justNumbers(event);" maxlength="8"  name="telefono" class="form-control" type="text" placeholder="Telefono" required>				
				<span class="input-group-addon"><span class="glyphicon glyphicon-earphone"></span></span>
        	</div>				
				<br/>
        	<div class="input-group">
				<select name="sexo" class="form-control" >
					<option>Masculino</option>
					<option>Femenino</option>
				</select>
				<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        	</div>
				
				<br/>
            <input  name="fecha" class="form-control"  placeholder="fecha de nacimiento"   type="text" id="datepicker" size="30"required>				
						
        	    
             <script>
             	$(function() {
            		$( "#datepicker" ).datepicker({
            			changeMonth: true,
            			changeYear: true
            		});
            		$( "#datepicker" ).datepicker( "option", "mm/dd/yy", $( this ).val() );
            	});
	</script>
              <br />
              <div class="modal-footer">
        <button  id="btnadd" style="font-family:space age" data-toggle="tooltip" data-placement="bottom" title="Agregar" type="submit" class="btn btn-success btn-sm "><span class="glyphicon glyphicon-ok"></span></button>
                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span></button>
      </div>
          </form>
      </div>
    </div>
  </div>
</div><!-- Termina Ventana Emergente-->



