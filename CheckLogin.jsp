<%@ page language="java" %>
<%@ page import="Tender.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<noframe>
<body>
<%  
			String uname,pwd;
			int cuid;
			boolean ans;
			uname=request.getParameter("uname");
			pwd=request.getParameter("pwd");
			Tender.DataFunctions obj = new Tender.DataFunctions();
			ans=obj.checkLogin(uname,pwd);
			if(ans==true)
			{
				try
				{
					Class.forName(obj.getDriver());
					Connection con=DriverManager.getConnection(obj.getConnectionString(),obj.getUserName(),obj.getPassword());
					String s="SELECT uid FROM users WHERE uname=? and pwd=?";
					PreparedStatement prep=con.prepareStatement(s);
					prep.setString(1,uname);
					prep.setString(2,pwd);
					ResultSet reset=prep.executeQuery();
					reset.next();
					cuid=reset.getInt("uid");
					String cuid1=Integer.toString(cuid);
					session=request.getSession(true);
					session.setAttribute("cusername",uname);
					session.setAttribute("cuserid",cuid1);
					response.sendRedirect("mainpage.jsp");
				}
				catch(Exception e)
				{
					out.println(e.toString());
				}
			}
			else
			{
				response.sendRedirect("errorLogin.htm");
				
			}
			
		%>
</body>
</noframe>

