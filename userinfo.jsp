<%@page import="java.sql.*, Tender.*"%>
<html>
	<body>
	<link rel="stylesheet"  href="style.css">
	<%
    	String uname=request.getParameter("uname");
    	Tender.DataFunctions tdf=new Tender.DataFunctions();
    	try
    	{
    		Class.forName(tdf.getDriver());
    		Connection con = DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
    		PreparedStatement ps = con.prepareStatement("select * from users where uname = ?");
    		ps.setString(1,uname);
    		ResultSet rs = ps.executeQuery();
    		rs.next();
	%>
	<table>
	<tr>
		<td valign="top">
		<h3>Seller Details</h3>
		<table border=1 cellpadding=5>
		<tr>
			<td><B>Name</B>
			<td><%=rs.getString("uname")%>
		</tr>

		<tr>
			<td><B>Email Address</B>
			<td><%=rs.getString("email")%>
		</tr>
	
		<tr>
			<td><B>Mailing Address</B>
			<td><%=rs.getString("address")%>
		</tr>

		<tr>
			<td><B>Phone Number</B>
			<td><%=rs.getString("ph")%>
		</tr>
	<% 
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	 %>
	</table>
	<p>
	<a href="javascript:history.back()">Back</a>
</body>
</html>
