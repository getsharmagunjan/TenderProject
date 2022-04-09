<%@ page import="java.sql.*, Tender.*" %>
<html>
	<body>
	<link rel="stylesheet"  href="style.css">
	<center>

	<h4>
	<%
  		int itemid = Integer.parseInt( request.getParameter("itemid") );
  		int bidprice = Integer.parseInt( request.getParameter("bidprice") );
  		Tender.DataFunctions tdf=new Tender.DataFunctions();
  		session=request.getSession(false);
  		//out.println(session.getId());
  		String luser=session.getAttribute("cusername").toString().trim();
  		try
  		{
  			String msg = tdf.bidForItem(luser,itemid,bidprice);
  			if (msg == null)
     		{
     			out.println("Bid has been accepted.");
  			}
  			else
    		{
    			out.println("Bid cannot be accepted because of an error --> : " + msg);
   			}
   		}
   		catch(Exception e)
   		{
   			out.println(e.toString());
   		}
%>
<br>
<br>
<br>
<a href="home.jsp">home</a>
</h4>
</body>
</html>
