<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html >
<html>
<head>
	<%@ include file="../masterPages/include.ui.jquery.bootstrap.jsp" %>
	<script>
	$(document).ready(function (){
			$( "#effect" ).effect( "slide", "width: 100%, height: 100%", 900, "10000" );
	});
	</script>

</head>
<body>
	<%@ include file="../masterPages/menu.jsp"%>
</body>
</html>