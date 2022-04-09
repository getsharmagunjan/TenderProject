<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="Tender.*"%>
<html>
	<link rel="stylesheet"  href="style.css">
	<body>
	<center>
		<h1>My Items</h1>
		<br>
		<br>
		<br>
		<br>
		<table cellpadding=3 border=1 width=90%>
		<tr>
			<th>Actions </th>
			<th>Category</th>
			<th>Item Name</th>
			<th>Initial Price</th>
			<th>Closing Date </th>
			<th>Highest Bid </th>
		</tr>

		<%
   			session=request.getSession(false);
   			//out.println(session.getId());
   			int itemid;
   			ResultSet rs1=null;
   			String luser="";
   			Tender.DataFunctions df1=new Tender.DataFunctions();
   			luser=session.getAttribute("cusername").toString().trim();
   			String sql5="select itemid, catcode, itemname, initprice, closeson, highestbid from items where seller = '"+luser.trim()+"'";
   			try
   			{
   				Class.forName(df1.getDriver());
   				Connection cn=DriverManager.getConnection(df1.getConnectionString(),df1.getUserName(),df1.getPassword());
   				PreparedStatement pst=cn.prepareStatement(sql5);
   				//rs1=df1.fetchData(sql5);
   				rs1=pst.executeQuery();
   				while (rs1.next())
   				{
    				
    				itemid = rs1.getInt("itemid");
 					if(rs1.getRow()%2 != 0)
 					{
 		%>
 
 		<tr>
 			<td>
 			<a href="removeitem.jsp?itemid=<%=itemid%>">Remove</a> <br>
 			<br><a href="bidders.jsp?itemid=<%=itemid%>">Bidders</a>
 			<td>
 			<%= df1.getCatname(rs1.getString("catcode"))%>
 			<td>
 			<%= rs1.getString("itemname")%>
 			<td>
 			<%= rs1.getInt("initprice")%>
 			<td>
 			<%= rs1.getDate("closeson").toString().substring(8,10)+"-"+df1.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)%>
 			<td>
  			<%= rs1.getInt("highestbid")%>
 		</tr>
 
		<%
   					}
   					else
   					{
   		%>
   		<tr bgcolor="#CCCCFF">
 			<td>
 			<a href="removeitem.jsp?itemid=<%=itemid%>">Remove</a> <br>
 			<br><a href="bidders.jsp?itemid=<%=itemid%>">Bidders</a>
 			<td>
 			<%= df1.getCatname(rs1.getString("catcode"))%>
 			<td>
 			<%= rs1.getString("itemname")%>
 			<td>
 			<%= rs1.getInt("initprice")%>
 			<td>
 			<%= rs1.getDate("closeson").toString().substring(8,10)+"-"+df1.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)%>
 			<td>
  			<%= rs1.getInt("highestbid")%>
 		</tr>
 
   		
   		
   		<%
   					}
   				}
   			}
   			catch(Exception e)
   			{
   				out.println(e.toString());
   			}   
		%>
	</table>
	<p>
	</center>  
	</body>
</html>
        
   
