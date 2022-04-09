<%@ page import="java.sql.*, Tender.*, java.util.*"%>
<html>
	<link rel="stylesheet"  href="style.css">
	<body>
	<style>
		td.head {background-color:gray;color:white}
		a {font:10pt verdana}
	</style>
	<%
 		
 		String query = request.getAttribute("query").toString();
		Tender.DataFunctions tdf=new Tender.DataFunctions();
		try
		{
 			Class.forName(tdf.getDriver());
 			Connection con = DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
 			//Statement st = con.createStatement();
 			//ResultSet  rs = st.executeQuery(query);
 			PreparedStatement pst=con.prepareStatement(query);
 			ResultSet rs=pst.executeQuery();
 			

	%>
	<%
		java.util.Date udate=new java.util.Date();
		long tday=udate.getTime();
		java.sql.Date sdate;
		int date;
		int month;
		int year;
		String sdate_to_string;
		Calendar cal=Calendar.getInstance();
		long oday;
   		while ( rs.next())
  		{
  			sdate=rs.getDate("closeson");
			sdate_to_string=sdate.toString();
			year=Integer.parseInt(sdate_to_string.substring(0,4));
			month=Integer.parseInt(sdate_to_string.substring(5,7));
			date=Integer.parseInt(sdate_to_string.substring(8,10));
			cal.set(Calendar.DATE, date);
			cal.set(Calendar.MONTH, month);
			cal.set(Calendar.YEAR, year);
			oday=cal.getTimeInMillis();
												
			if(oday<tday)
			{
				
	%>
		<br>
		<br>
		<table border=1 cellpadding=3>

		<tr>
			<td class="head" width="20%"><B><span class="custom_tag">Category</span></B>
			<td><%= tdf.getCatname(rs.getString("catcode")) %> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Item Name</span></B>
			<td><%= rs.getString("itemname")%> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Item Description</span></B>
			<td><%= rs.getString("itemdesc")%> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Seller</span></B>
			<td><a href=userinfo.jsp?uname=<%=rs.getString("seller")%>> <%=rs.getString("seller")%>  </a> </td>
		</tr>
		
		<tr>
			<td class="head"><B><span class="custom_tag">Initial Price</span></B>
			<td><%= rs.getInt("initprice")%> </td>
		</tr>
		
		<tr>
			<td class="head"><B><span class="custom_tag">Highest Bid</span></B>
			<td><%= rs.getInt("highestbid")%> </td>
		</tr>
	</table>
	<center>||</center>
	<center>\/</center>
	<center><B>Bid Closed</B></center>


	<%
   		} // end of if
   		else
   		{
   	%>
   		<br>
		<br>
		<table border=1 cellpadding=3>

		<tr>
			<td class="head" width="20%"><B><span class="custom_tag">Category</span></B>
			<td><%= tdf.getCatname(rs.getString("catcode")) %> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Item Name</span></B>
			<td><%= rs.getString("itemname")%> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Item Description</span></B>
			<td><%= rs.getString("itemdesc")%> </td>
		</tr>

		<tr>
			<td class="head" bgcolor="#3399FF"><B><span class="custom_tag">Seller</span></B>
			<td><a href=userinfo.jsp?uname=<%=rs.getString("seller")%>> <%=rs.getString("seller")%>  </a> </td>
		</tr>
		
		<tr>
			<td class="head"><B><span class="custom_tag">Initial Price</span></B>
			<td><%= rs.getInt("initprice")%> </td>
		</tr>
		
		<tr>
			<td class="head"><B><span class="custom_tag">Highest Bid</span></B>
			<td><%= rs.getInt("highestbid")%> </td>
		</tr>
	</table>
	<center>||</center>
	<center>\/</center>
	<center><a href=bid.jsp?itemid=<%=rs.getInt("itemid")%>><B>Bid For It </B></a></center>

   	
   	
   	<%	
   			} //end of else.
   		} //end of while.
   		if(rs.first()==false)
 		{
 			out.println("<B>Sorry, No item(s) are available.</B>");
 		}
    }  //end of try
    catch(Exception e)
    {
    	out.println(e.toString());
    }
	%>
</table>
</body>
</html>