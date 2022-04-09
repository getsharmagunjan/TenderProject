<%@ page import="java.sql.*, Tender.*"%>
<html>
	<link rel="stylesheet" href="style.css">
	<body>
	<h1><center>Search Items </h1>
	<%
  		session=request.getSession(false);
  		String  catcode =  request.getParameter("catcode");
  		if ( catcode == null) 
  		{
  			catcode= "ALL";
		}
  		String  itemdesc =  request.getParameter("itemdesc");
  		if (itemdesc == null)  
  		{
  			itemdesc = "";
		}
  		String  bidpricefrom =  request.getParameter("bidpricefrom");
  		
  		if ( bidpricefrom == null) 
  		{
  			bidpricefrom = "";
  		}
  		String  bidpriceto =  request.getParameter("bidpriceto");
  		
  		if ( bidpriceto == null) 
  		{
  			bidpriceto = "";
  		}
	%>

	<form action="search.jsp" method="post">
	<center>
	<table celpadding="3">
		<tr>
		<td>Category
		<td>
		<select  name=catcode style="width:200px">
			<option  value="ALL"   <%=catcode.equals("ALL")?"SELECTED":""%> >ALL </option>
			<option value="b"  <%=catcode.equals("b")?"SELECTED":""%> >Books & Stationary</options>
			<option value="e"  <%=catcode.equals("e")?"SELECTED":""%> >Electronics</options>
			<option value="g" <%=catcode.equals("g")?"SELECTED":""%> >Garments</options>
			<option value="s" <%=catcode.equals("s")?"SELECTED":""%>  > Sports Goods </options>
		</select>
		</tr>

		<tr> 
			<td>Item Description Contains
			<td><input type=text size=30  style="width:200px"  value='<%=itemdesc%>' name=itemdesc>
		</tr>

		<tr> 
			<td>Bid Price From 
			<td>
			<input type=text size=10  name=bidpricefrom  value=<%=bidpricefrom%> >
			&nbsp; To &nbsp; 
			<input type=text size=10  name=bidpriceto value=<%=bidpriceto%> >
		</tr>
	</table>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;	
	<input type=submit value=Search>
	</form>

	<%
		//out.println(session.getId());
		Tender.DataFunctions tdf=new Tender.DataFunctions();
		String  cond = " seller <> '" +  session.getAttribute("cusername").toString().trim() + "'";
  		if  ( itemdesc.length() >  0 )
     	{
     		cond = cond + " and  itemdesc like '%"  + itemdesc + "%'";
		}
  		if  ( ! catcode.equals("ALL") )
     	{
     		cond = cond + " and  catcode = '"  + catcode+ "'";
		}
  		if  ( bidpricefrom.length() >  0 )
     	{
     		cond = cond + " and  initprice >= " + bidpricefrom;
     	}
  		if  ( bidpriceto.length() >  0 )
     	{
     		cond = cond + " and  highestbid  <= " + bidpriceto;
		}
  		String query = "select  * from items where" +  cond;
  		//out.println(query);
  		request.setAttribute("query",query);

 // avoid this first time 
 		if (request.getParameter("itemdesc") != null ) 
		{
	%>
	<jsp:include  page="listitems.jsp" />
	<%
  		}
	%>
</body>
</html>