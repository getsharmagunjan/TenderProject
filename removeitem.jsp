<%@ page import="Tender.*, java.sql.*, java.util.*" %>
<link rel="stylesheet"  href="style.css">
<center>
<%
     String itemid = request.getParameter("itemid");
     Tender.DataFunctions tdf=new Tender.DataFunctions();
     int id=Integer.parseInt(itemid);
     int flag=0;
     Connection con = null;
     CallableStatement cs = null;
     try
     {
     	Class.forName(tdf.getDriver());
        con = DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
        cs = con.prepareCall("CALL removeitem(?)");
        cs.setInt(1,id);
        cs.execute();
        flag=1;
     }
     catch(Exception ex)
     {
   		out.println(ex.toString());
   	 }
     finally
     {
		try
		{  
			cs.close();
            con.close();
	    }
	    catch(Exception ex) {}
     }
     if (flag==1)
         out.println("<h4>Item removed successfully.");
     else
         out.println("<h4>Error occured while removing item.");
    
 %>
 <p>
 <a href="myitems.jsp">Continue...</a> </h4>
</center>
</body>
</html>