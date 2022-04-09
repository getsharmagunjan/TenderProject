<html>
<%
	session=request.getSession(false);
	String cuid= session.getAttribute("cuserid").toString();
 %>	
	<head>
		<title>User : <%=cuid%></title>
	</head>

<frameset cols="22%,*" frameborder="0" framespacing="0">
   <frame src="links.html" scrolling="yes">
   <frame name="details" src="home.jsp">
</frameset>

</html>