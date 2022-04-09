<%@ page import="java.sql.*, Tender.*"%>
<html>
	<body>
	<link rel="stylesheet"  href="style.css">
	<%
	String itemid =  request.getParameter("itemid");
	int id=Integer.parseInt(itemid);
	%>
	<h2>Bidders Of Item : <%=itemid%></h2>
	
	<%
     	Tender.DataFunctions tdf=new Tender.DataFunctions();
     	try
     	{
     		Class.forName(tdf.getDriver());
     		Connection con=DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
     		PreparedStatement ps = con.prepareStatement("select bidder, db, bidprice from biddings where itemid = ? order by bidprice desc");
     		ps.setInt(1,id);
     		ResultSet rs = ps.executeQuery();
    		if(rs.first()==false)
    		{
    			out.println("<B>Sorry, The bid has not made for item ID : "+id+" yet.</B>");
    		}
    		else
    		{
    			rs.beforeFirst();
    			while ( rs.next())
     			{

	%>
					<table border=1 cellpadding=5 width=50%>
						<tr>&nbsp;&nbsp;&nbsp;
							<br>
							<br>
							<br>
							<th>Bidder Name</th>
							<th>Bidding Date</th>
							<th>Bid Price</th>
						</tr>
						<tr>
							<td><a href=userinfo.jsp?uname=<%=rs.getString("bidder")%>> <%=rs.getString("bidder")%></a></td>
							<td><%=rs.getDate("db").toString().substring(8,10)+"-"+tdf.getMonth(rs.getDate("db").toString().substring(5,7).trim())+"-"+rs.getDate("db").toString().substring(0,4)%></td>
							<td><%=rs.getInt("bidprice")%></td>
						</tr>
					</table>

 	<%
      		}
      	}
      	}
      	catch(Exception e)
      	{	out.println(e.toString());	}
%>

<p>
<br>
<a href="javascript:history.back()">Back</a>
</body>
</html>