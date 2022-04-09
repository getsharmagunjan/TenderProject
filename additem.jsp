
<%@ page import="java.sql.*, java.io.*, java.util.*, Tender.*"%>

<html>
	<link rel="stylesheet"  href="style.css">
	<head>
	<title>Add Item</title>
	<script language="javascript">
	function check()
	{
		var x = f2.closeson.value;
		var firstpos = x.indexOf("-");
		var secondpos = x.lastIndexOf("-");
		if(f2.name.value == "")
		{
			alert("Item name must not be left blank.");
			f2.name.focus();
			return false;
		}
		if(f2.initprice.value == "")
		{
			alert("Initial Price must not be left blank.");
			f2.initprice.focus();
			return false;
		}
		if(f2.closeson.value == "")
		{
			alert("Closing Date must not be left blank.");
			f2.closeson.focus();
			return false;
		}
		if(firstpos != 4)
		{
			alert("Date entered is invalid. Please check.");
			f2.closeson.focus();
			return false;
		}
		if(secondpos != 7)
		{
			alert("Date entered is invalid. Please check.");
			f2.closeson.focus();
			return false;
		}
		
	} 
	</script>
	<body>
		<center>
		<h1>Add Item </h1>
		<form action="additem.jsp" method=post name="f2" onsubmit="return check()">
		<table cellpadding=3>
			<tr>
				<td>Category<ness>* 
				<td>
				<select  name=catcode><option  value=b>Books & Stationary <option  value=e>Electronics<option  value=g>Garments<option  value=s>Sports Goods<option value=o>Others
				</select>
			</tr>

			<tr>
				<td>Item Name<ness>*
				<td><input type=text name=name size=30>
			</tr>

			<tr>
				<td>Item Description
				<td><textarea  name=desc  rows=3 cols=50></textarea>
			</tr>

			<tr>
				<td>Initial Price<ness>*
				<td><input type=text name=initprice size=10>
			</tr>

			<tr>
				<td>Tender Closes On<ness>*
				<td><input type=text name=closeson size=10><ness1>(YYYY-MM-DD)</ness1>
			</tr>
			<tr>
				<ness><center>* fields are mandetory.
			</tr>
			<tr>
				&nbsp;
				&nbsp;
				<td><p><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type=submit value="Add Item" size=50>
			<tr>
		</table>
		<%
   			int itemid=0;
   			Tender.DataFunctions df=new Tender.DataFunctions();
   			session=request.getSession(false);
   			//out.println(session.getId());
   			try
   			{
   				itemid=df.insertDataToItems(request.getParameter("catcode"), request.getParameter("name"), request.getParameter("desc"), Integer.parseInt(request.getParameter("initprice")), request.getParameter("closeson"), session.getAttribute("cusername").toString().trim());
   				if(itemid>0)
   				{ %>
   					<script type="text/javascript">
					window.alert("Item added successfully. Item ID : <%=itemid%>");
					</script>
		<%		}
   			}
   			catch(Exception e)
   			{
   		
   			}
   			
		%>
   				
		
		<h4>
		<%--
			int  itemid = item.addItem(member.getUname());
  			if ( itemid > 0  ) 
      		out.println("Item Is Added Successfully. Item Id = " + itemid);
  			else
      		out.println("An Error Occured While Adding Item!");
 		--%>
		</h4>

		</center>  
	</body>
</html>
     
    
   
