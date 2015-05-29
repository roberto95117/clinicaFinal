      <!-- VENTANA EMERGENTE PARA AGREGAR Paciente -->
		<div class="modal fade bs-example-modal-sm" id="agregarPaciente" tabindex="-1" role="dialog" aria-labelledby="Agregar Paciente" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="agregarActividad-1" >Agregar Paciente</h4>
      </div>
      <div class="modal-body">
                
         <form action="ServletAddActivityFinal.do" method="post" class="form-horizontal" role="form">
               <input type="hidden" name="grupo" value="${grupo }">
               <input type="hidden" name="idGrupo" value="${idGrupo }">
               <input type="hidden" name="nameAsignatura" value="${ nameAsignatura}">
               <input type="hidden" name="idbimestre" value="${idbimestre }">
               <input type="hidden" name="idCab" value="${idCab }">
                     
				<input type="text">
               <h6>Actividad:</h6>
               
               <input type="text" class="form-control" name="txtactividad" required>
               <br />
               <h6>Valor:</h6>
               
                    <br>
               <h6>Fecha De Entrega:  </h6>
                <input class="form-control" name="f_entrega" type="text" id="datepicker" size="30" required/>
              <br />
              <div class="modal-footer">
        <button  id="btnadd" style="font-family:space age" data-toggle="tooltip" data-placement="bottom" title="asignar nota" type="submit" class="btn btn-success btn-sm "><span class="glyphicon glyphicon-ok"></span></button>
                    <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span></button>
      </div>
          </form>
      </div>
    </div>
  </div>
</div><!-- Termina Ventana Emergente-->