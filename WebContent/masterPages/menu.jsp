 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<nav class="navbar nnavbar-static-top navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
    <div class="container">
  <div class="navbar-header">
    <button title="pulsame" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a>
    		<img  src="assets/images/logo-kinal-small.png" class="img img-responsive"> 		
    </a>
    
  </div>


  	<div class="collapse navbar-collapse navbar-ex1-collapse" style="margin-top:15px">
    <form action="ServletBuscar.do" method="POST" class="navbar-form navbar-right" role="search">
      <div class="form-group">
        <input  name="txtCarne" type="text" class="form-control" placeholder="Buscar paciente"  required>
      </div>
      <button title="buscar" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>  </button>
    </form>
    <ul class="nav navbar-nav navbar-right">
    <li  title="pagina principal"><a href="IndexCoordinador.do"><span  class="glyphicon glyphicon-home"></span> Inicio</a></li>
    <li  title="Citas"><a href="ServletListarForSearch.do?llenar=vacio&DarNotas=vacio"><span  class="glyphicon glyphicon-align-left"></span> Citas</a></li>
    <li   class="dropdown">
    	<a title="Pacientes" href="#" class="dropdown-toggle" data-toggle="dropdown"> <span  class="glyphicon glyphicon-th-list"></span> Pacientes <b class="caret"></b></a>
   		<ul class="dropdown-menu">
   			<li><a href="ServletVerPacientes.do"><span>Ver Pacientes</span></a></li>
   			<li><a data-toggle="modal" data-target="#agregarPaciente" style="cursor: pointer;"><span>Agregar</span></a></li>
   		</ul>
   	</li>
    <li title="Medicamentos"><a  href="ListarGrupos.do" ><span  class="glyphicon glyphicon-download-alt"></span> Stock Medicamentos</a></li>
      <li class="dropdown">
        <a  title="mira tu perfil" href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${usuario.getNombreCompleto()}  <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a  href="ServletViewChangePass.do"><span class="glyphicon glyphicon-pencil"></span> Cambiar Contraseña</a></li>
          <li><a  href="ServletViewChangePass.do"><span class="glyphicon glyphicon-pencil"></span> Cambiar Login</a></li>
        </ul>
      </li>
      <li > <a title="cierra tu sesion"  href="ServletCerrarSesion.do"><span class="glyphicon glyphicon-off"></span> Salir</a></li>
    </ul>
  </div><!-- /.navbar-collapse -->
  </div>
</nav>