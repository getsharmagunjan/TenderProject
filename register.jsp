<%@ page import="java.sql.*, Tender.*" %>
<html>
	<body>
<h4>
<%
	 String uname=request.getParameter("uname");
	 String pwd=request.getParameter("pwd");
	 String email=request.getParameter("email");
	 String ph=request.getParameter("phone").trim();
	 String add=request.getParameter("address");
	 Tender.DataFunctions df=new Tender.DataFunctions();
     int flag=df.registerUser(uname,pwd,email,ph,add);
     if(flag==1)
     {
          session=request.getSession(true);
          session.setAttribute("cusername",uname);
          int uid=df.getUserId(uname);
          String uids=Integer.toString(uid);
          session.setAttribute("cuserid",uids);
          out.println("<h4>");
          out.println("User Registration Is Sucessful. Please click ");
          out.println("<a href=mainpage.jsp>");
          out.println("here");
          out.println("</a>");
          out.println(" to continue..");
          out.println("</h4>");
	}
     else if(flag==2)
     {
     	  out.println("<h4>");
          out.println("User already Registered with provided User name OR Email ID. Please Login ");
          out.println("<a href=login.jsp>");
          out.println("here");
          out.println("</a>");
          out.println(" to continue..");
          out.println("</h4>");
     	 // out.println("<h4>User already Registered. Please Login <a href=login.jsp>here</a> to continue..</h4>");
     }
     else          
     { 
         out.println("<h4>Error Occurred During User Creation. <a href=login.jsp>Continue...</a> </h4>");
   	 }
%>

</h4>
</body>
</html>




