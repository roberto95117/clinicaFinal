<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head >
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
    <meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link type="text/css" rel="stylesheet" href="Resources/css/bootstrap.css">
    	<link rel="stylesheet" href="Resources/css/bootstrap-theme.css">
		<link rel="stylesheet" href="Resources/css/signin.css">
        <script type="text/javascript" src="Resources/js/jquery-1.11.1.min.js"></script>
    	<script type="text/javascript" src="Resources/js/bootstrap.min.js"></script>
    	<script src="Resources/js/efects/jquery.ui.effect.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-blind.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-bounce.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-clip.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-drop.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-explode.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-fade.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-fold.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-highlight.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-pulsate.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-scale.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-shake.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-slide.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-transfer.js"></script>
	<script src="Resources/js/efects/jquery.ui.core.js"></script>
	<script src="Resources/js/efects/jquery.ui.widget.js"></script>
	<script src="Resources/js/efects/jquery.ui.position.js"></script>
	<script src="Resources/js/efects/jquery.ui.tooltip.js"></script>
    <script>
        $(document).ready(function () {
            $("#effect").effect("bounce", "width: 200, height: 60", 1000);
        });
	</script>
	<script>
	    $(function () {
	        $(document).tooltip({
	            position: {
	                my: "center bottom-20",
	                at: "center top",
	                using: function (position, feedback) {
	                    $(this).css(position);
	                    $("<div>")
                            .addClass("arrow")
                            .addClass(feedback.vertical)
                            .addClass(feedback.horizontal)
                            .appendTo(this);
	                }
	            },
	            show: {
	                effect: "explode",
	                delay: 250
	            },
	            hide: {
	                effect: "explode",
	                delay: 250
	            }
	        });

	    });
	</script>
    <style type="text/css">

    body
    {
    	background-image: url("Images/fondo3.jpg");
    	background-repeat: no-repeat;background-position: center center;background-attachment: fixed;
	}

	.ui-tooltip {
	padding: 8px;
	position: absolute;
	z-index: 9999;
	max-width: 300px;
	-webkit-box-shadow: 0 0 5px #aaa;
	box-shadow: 0 0 5px #aaa;
}
body .ui-tooltip {
	border-width: 2px;
}
.ui-tooltip, .arrow:after {
		background: #5cb85c;
		border: 2px solid white;
	}
	.ui-tooltip {
		padding: 5px 5px;
		color: white;
		border-radius: 15px;
		font: bold 10px "Helvetica Neue", Sans-Serif;
		text-transform: uppercase;
		box-shadow: 0 0 7px black;
	}
	.arrow {
		width: 70px;
		height: 16px;
		overflow: hidden;
		position: absolute;
		left: 50%;
		margin-left: -35px;
		bottom: -16px;
	}
	.arrow.top {
		top: -16px;
		bottom: auto;
	}
	.arrow.left {
		left: 20%;
	}
	.arrow:after {
		content: "";
		position: absolute;
		left: 20px;
		top: -20px;
		width: 25px;
		height: 25px;
		box-shadow: 6px 5px 9px -9px black;
		-webkit-transform: rotate(45deg);
		-moz-transform: rotate(45deg);
		-ms-transform: rotate(45deg);
		-o-transform: rotate(45deg);
		tranform: rotate(45deg);
	}
	.arrow.top:after {
		bottom: -20px;
		top: auto;
	}
	</style>
</head>
<body>
			
			<div  class="container">
<center id="effect">
	<div   style="margin-top: 5%;position: center center" class="panel panel-primary form-signin" >
		  <div class="panel-heading">
               <h3 class="panel-title" style="font-family: space-age"></h3>
		  </div>
		  <div class="panel-body">
				<form   action="ServletLogin.do" method="POST"  role="form">
         <img height="200" width="200" class="img img-responsive" alt="" src="Images/logo 1.jpg">
		<br>
		<br>
		<div class="input-group">
        	<input name="txtUser" type="text" class="form-control " title="Por favor ingresa tu usuario" required/>
        	<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        </div>
        <br>
        <br>
        <div class="input-group">
        	<input  name="txtPass" type="password"  class="form-control " title="Por favor ingresa tu contraseña" required/>
        	<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
        </div>	
<br>
		<br>
        <div class="panel panel-footer panel-primary" />
        <button style="font-family: space-age" class="btn btn-lg btn-primary btn-block" type="submit"  >Iniciar</button>
        
      </form>				    
		  </div>
	</div>
     
      </center>
      

    </div> <!-- /container -->
	</body>
</html>