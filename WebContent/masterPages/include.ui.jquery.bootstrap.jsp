<title>Clinica</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
     <link rel="stylesheet" type="text/css" href="Resources/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="Resources/css/jquery.ui.tooltip.css"> 
    <link rel="stylesheet" type="text/css" href="Resources/css/metro-bootstrap.css">
    <link rel="stylesheet" type="text/css" href="Resources/css/jquery.ui.datepicker.min.css">
    <script type="text/javascript" src="Resources/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Resources/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="Resources/images/iconokinal.png">
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
	<script src="Resources/js/efects/jquery.ui.effect-slide-right.js"></script>
	<script src="Resources/js/efects/jquery.ui.effect-transfer.js"></script>
	<script src="Resources/js/efects/jquery.ui.core.js"></script>
	<script src="Resources/js/efects/jquery.ui.widget.js"></script>
	<script src="Resources/js/efects/jquery.ui.position.js"></script>
	<script src="Resources/js/efects/jquery.ui.tooltip.js"></script>
	<script src="Resources/js/jquery.ui.datepicker.js"></script>
	<script src="Resources/js/validations.js"></script>
	<script>
	$(function() {
		
		$( document ).tooltip({
			position: {
				my: "center bottom-20",
				at: "center top",
				using: function( position, feedback ) {
					$( this ).css( position );
					$( "<div>" )
						.addClass( "arrow" )
						.addClass( feedback.vertical )
						.addClass( feedback.horizontal )
						.appendTo( this );
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