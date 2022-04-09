<%@ page import="java.sql.*, Tender.*" %>
<html>
	<link rel="stylesheet"  href="style.css">
	<head>
	<body>
	<%
    	int initprice=0;
    	int highbid=0;
    	String itemid=request.getParameter("itemid");
    	int id=Integer.parseInt(itemid);
    	Tender.DataFunctions tdf=new Tender.DataFunctions();
    	try
    	{
    		Class.forName(tdf.getDriver());
    		Connection con = DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
    		PreparedStatement ps = con.prepareStatement("select itemid, itemname, itemdesc, catcode, initprice, highestbid, addedon, closeson, seller from items where itemid = ?");
    		ps.setInt(1,id);
    		ResultSet rs = ps.executeQuery();
    		rs.next();
        	initprice=rs.getInt("initprice");
        	highbid=rs.getInt("highestbid");
 	%>
 	
    <br>
    <h3><center>Item Details</h3>
	<center>
	<br>
	<br>
	<table border=1 cellpadding=5>
	<tr>
		<td class="head" style="font:700" width="50%"><B>Item Id</B>
		<td><%=rs.getInt("itemid")%>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Item Name</B>
		<td><%=rs.getString("itemname")%>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Item Description</B>
		<td><%=rs.getString("itemdesc")%>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Category</B>
		<td><%=tdf.getCatname(rs.getString("catcode"))%></td>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Seller</B>
		<td><a href=userinfo.jsp?uname=<%=rs.getString("seller")%>><%=rs.getString("seller")%></a></td>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Added On</B>
		<td><%=rs.getDate("addedon")%></td>
	</tr>
	
	<tr>
		<td style="font:700" class="head"><B>Initial Price</B>
		<td><%=rs.getInt("initprice")%></td>
	</tr>

	
	<tr>
		<td style="font:700" class="head"><B>Highest Bid</B>
		<td><%=rs.getInt("highestbid")%></td>
	</tr>

	<tr>
		<td style="font:700" class="head"><B>Closes On</B>
		<td><%=rs.getDate("closeson")%></td>
	</tr>
	<% 
		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	%>

	<script language="javascript">
	function check()
	{
		if(f3.bidprice.value < <%=initprice%>)
		{
			alert("Bid Price must not less than Initial Price.");
			f3.bidprice.focus();
			return false;
		}
		if(f3.bidprice.value <= <%=highbid%>)
		{
			alert("Bid Price must be greater than Highest Bid.");
			f3.bidprice.focus();
			return false;
		}
		if(f3.bidprice.value > <%=highbid%>)
		{
			return true;
		}
	}
	</script>
	<tr>
		<td style="font:700" class="head"><B>Enter Bid Price</B>
		<td>
		<form action=bidforitem.jsp method="post" name="f3" onsubmit="return check()">
		<input type=hidden value=<%=id%> name="itemid">
		<input type=text size=10 name=bidprice>
	</tr>
	</table>
	<br>
	<br>
	<input type=submit value="Bid For It">
	

	

</form>
</body>
</html>
