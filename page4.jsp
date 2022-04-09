<%@ page import="java.sql.*, java.util.*, Tender.*" %>
<html>
<head>
<script language="javascript">
function check()
{
	if(f1.id.value=="")
	{
		alert("Please enter Item ID");
		f1.id.focus();
		return false;
	}
}
</script>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Tendering System</title>
<style type="text/css">
.style1 {
	text-align: left;
}
.style2 {
	text-decoration: underline;
}
.style3 {
	font-family: "Times New Roman";
	font-size: medium;
}
.style4 {
	font-family: "Times New Roman";
}
.style5 {
	font-family: Verdana;
}
.style6 {
	color: #FF0000;
}
.style7 {
	margin-left: 0px;
}
.style8 {
	margin-left: 284px;
	margin-top: 0px;
}
</style>
</head>

<body bgcolor="#66CCFF">

<img src="etender.gif" width="969" height="155" /><br />
<div style="position: absolute; width: 260px; height: 650px; z-index: 5; left: 983px; top: 4px" id="layer8">
	<iframe name="I1" id="I1" style="height: 685px; width: 285px" src="login2.htm" class="style9">Your browser does not support inline frames or is currently configured not to display inline frames.
			</iframe></div>

<form method="post" style="height: 394px; width: 685px" class="style8" action="page4.jsp" name="f1" onsubmit="return check()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<strong>Enter Item ID&nbsp;&nbsp;&nbsp;
	<input name="id" type="text" style="width: 160px; height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="submit" type="submit" value="Show" style="width: 110px; height: 30px">
	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</strong>
	<% 
	 	String id = request.getParameter("id");
	 	Tender.DataFunctions tdf=new Tender.DataFunctions();
	 	try
	 	{
	 		String sql="select * from items where itemid="+id;
	 		ResultSet rs = tdf.fetchData(sql);
	 		if(rs.first()==false)
	 		{
	 			//out.println("<br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B> No Result Found !</B>");
	 		
	 		}
	 		else
	 		{
	 			rs.beforeFirst();
%>
		<br><br>
		<table cellpadding="3" border="1">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<tr bgcolor="#3399FF">
			<th style="color:white; width: 90px;"><B>Item ID</B></th>
			<th style="color:white; width: 125px;"><B>Item Name</B></th>
			<th style="color:white; width: 110px;"><B>Category</B></th>
			<th style="color:white; width: 96px;"><B>Seller</B></th>
			<th style="color:white; width: 110px;"><B>Addition Date</B></th>
			<th style="color:white; width: 86px;"><B>Highest Bid</B></th>
		</tr>

<%
	 			while(rs.next())
	 			{
	 				
				
	 %>
	 	<tr>
		
			<td style="width: 90px"><%=rs.getInt("itemid")%></td>
			<td style="width: 125px"><%=rs.getString("itemname")%></td>
			<td style="width: 110px"><%=tdf.getCatname(rs.getString("catcode"))%></td>
			<td style="width: 96px"><%=rs.getString("seller")%></td>
			<td style="width: 110px"><%=rs.getDate("addedon").toString().substring(8,10)+"-"+tdf.getMonth(rs.getDate("addedon").toString().substring(5,7))+"-"+rs.getDate("addedon").toString().substring(0,4)%></td>
			<td style="width: 86px"><%=rs.getInt("highestbid")%></td>
		</tr>
		
<%  
					
				}
			}
		}
		catch(Exception e)
		{
			
		}
%>
</form>

<br />
<div style="position: absolute; width: 974px; height: 100px; z-index: 2; left: 3px; top: 594px; background-color: #0066FF; font-family: verdana; font-size: small; font-weight: 600;" id="layer3">
	<br />
	<br />
	Designed, Developed and Hosted By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="style3">©</span> 2012 E-Tendering Portal, All Rights Reserved.&nbsp;
	<br />
&nbsp;<span class="style2">GUNJAN SHARMA &amp; ABHISHEK JAIN</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	site best viewed in 1024<span class="style4"> </span><span class="style5">× 
	768 pixels.</span>&nbsp;&nbsp;&nbsp;&nbsp; </div>

<div style="border: medium solid #D6D1C7; position: absolute; width: 263px; height: 323px; z-index: 3; left: 8px; top: 179px; background-color: #158AD0;" id="layer4">
	&nbsp;<br />
&nbsp;
	<a href="page1.jsp"><input name="Button1" type="button" value="Download Latest Tenders" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
&nbsp;&nbsp; <br />
&nbsp;&nbsp;<a href="page2.jsp"><input name="Button2" type="button" value="Tenders By Name" style="width: 240px; height: 30px; font-weight: bold;" /></a><br />
	<br />
&nbsp;
<a href="page3.jsp">
	<input name="Button3" type="button" value="Tenders By Value" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page4.jsp">
	<input name="Button4" type="button" value="Tenders Status" style="width: 240px; height: 30px; font-weight: bold; background-color: #B9B9FF; " /></a><br />
	<br />
&nbsp;
<a href="page5.jsp">
	<input name="Button5" type="button" value="Downloads" style="width: 240px; height: 30px; font-weight: bold;" /></a><br />
	<br />
&nbsp;
<a href="page6.jsp"><input name="Button6" type="button" value="Sitemap" style="width: 240px; height: 30px; font-weight: bold; " /></a></div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sitemap</button></div>
<div style="position: absolute; width: 285px; height: 690px; z-index: 4; left: 985px; top: 4px; background-color: #eeeeee;" id="layer5">
	<br />
&nbsp;&nbsp;&nbsp; <br />
	</body>

</html>
