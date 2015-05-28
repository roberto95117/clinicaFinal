<%@ page session="true" %>
<%
	HttpSession sesion=request.getSession();
	Object usr=sesion.getAttribute("usuario");
	if(usr!=null){
		
		 
	}else{
		%>
		<jsp:forward page="/index.jsp">
			<jsp:param value="Inicie sesion..." name="error"/>
		</jsp:forward>
		<%
	}
%>