<%@ page language="java" %>
<%@ page import="Tender.*, java.sql.*, java.io.*, java.util.*"%>

<html>
	<head>
	<title>Home</title>
	</head>
	<body>
	<link rel="stylesheet" href="style.css">
	<p>                           
	&nbsp;
	&nbsp;
	&nbsp;
	</p>
	<p><h4>Welcome, 
	<% 
		Tender.DataFunctions tdf=new Tender.DataFunctions();
		String user="";
		String cuid;
		session=request.getSession(false);
		try
		{
			
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lastentry","root","kota");
			String sql="SELECT * FROM lastusers WHERE date = (SELECT MAX(date) FROM lastusers)";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery(); 
			if(rs.next())
			{
				user=rs.getString("uname");
			}*/
			user=session.getAttribute("cusername").toString();
			cuid=session.getAttribute("cuserid").toString();
			//out.println(session.getId());
			out.println(user.trim().toUpperCase());
			out.println(" (");
			out.println(cuid);
			out.println(")");
			out.println("</h4>");
			out.println("<h3>");
			out.println("New Arrivals");
			out.println("</h3>");
	  		
			Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/tender","root","kota");
			String s="select itemid, seller, catcode, itemname, itemdesc, addedon, closeson, initprice, highestbid from items where seller <> '"+user.trim()+"' order by seller, itemid desc";
			PreparedStatement pst1=cn1.prepareStatement(s);
			//pst1.setString(1,user.trim());
			ResultSet rs1=pst1.executeQuery();
			ResultSetMetaData rsmd=rs1.getMetaData();
			int colcount=rsmd.getColumnCount();
			out.println("<table align=center border=1 cellpadding=2>");
			out.println("<tr>");
			//for(int j=1;j<=colcount;j++)
			//{
				//out.println("<th>"+rsmd.getColumnLabel(j)+"</th>");
				out.println("<th><B>Item ID</B></th>");
				out.println("<th><B>Seller Name</B></th>");
				out.println("<th><B>Category</B></th>");
				out.println("<th><B>Item Name</B></th>");
				out.println("<th><B>Item Description</B></th>");
				out.println("<th><B>Addition Date</B></th>");
				out.println("<th><B>Closing Date</B></th>");
				out.println("<th><B>Initial Price</B></th>");
				out.println("<th><B>Highest Bid</B></th>");
				out.println("<th><B>Actions</B></th>");
			//}
			out.println("</tr>");
			int tempid;
			java.util.Date udate=new java.util.Date();
			long tday=udate.getTime();
			java.sql.Date sdate;
			int date;
			int month;
			int year;
			int row;
			String sdate_to_string;
			Calendar cal=Calendar.getInstance();
			long oday;
			while(rs1.next())
			{
				sdate=rs1.getDate("closeson");
				sdate_to_string=sdate.toString();
				year=Integer.parseInt(sdate_to_string.substring(0,4));
				month=Integer.parseInt(sdate_to_string.substring(5,7));
				date=Integer.parseInt(sdate_to_string.substring(8,10));
				cal.set(Calendar.DATE, date);
				cal.set(Calendar.MONTH, month);
				cal.set(Calendar.YEAR, year);
				oday=cal.getTimeInMillis();
				row=rs1.getRow();
				if( row%2 != 0 )
				{
					if(oday<tday)
					{
						out.println("<tr>");
						out.println("<td>"+rs1.getInt("itemid")+"</td>");
						out.println("<td>"+rs1.getString("seller")+"</td>");
						out.println("<td>"+tdf.getCatname(rs1.getString("catcode"))+"</td>");
						out.println("<td>"+rs1.getString("itemname")+"</td>");
						out.println("<td>"+rs1.getString("itemdesc")+"</td>");
						//out.println("<td>"+rs1.getDate("addedon")+"</td>");
						out.println("<td>"+rs1.getDate("addedon").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("addedon").toString().substring(5,7))+"-"+rs1.getDate("addedon").toString().substring(0,4)+"</td>");
						//out.println("<td>"+rs1.getDate("closeson")+"</td>");
						out.println("<td>"+rs1.getDate("closeson").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)+"</td>");
						out.println("<td>"+rs1.getInt("initprice")+"</td>");
						out.println("<td>"+rs1.getInt("highestbid")+"</td>");
						tempid=rs1.getInt("itemid");
						out.println("<td>"+"<B>Bid Closed</B>"+"</td>");
						out.println("</tr>");
					}
					else
					{
						out.println("<tr>");
						out.println("<td>"+rs1.getInt("itemid")+"</td>");
						out.println("<td>"+rs1.getString("seller")+"</td>");
						out.println("<td>"+tdf.getCatname(rs1.getString("catcode"))+"</td>");
						out.println("<td>"+rs1.getString("itemname")+"</td>");
						out.println("<td>"+rs1.getString("itemdesc")+"</td>");
						//out.println("<td>"+rs1.getDate("addedon")+"</td>");
						out.println("<td>"+rs1.getDate("addedon").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("addedon").toString().substring(5,7))+"-"+rs1.getDate("addedon").toString().substring(0,4)+"</td>");
						//out.println("<td>"+rs1.getDate("closeson")+"</td>");
						out.println("<td>"+rs1.getDate("closeson").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)+"</td>");
						out.println("<td>"+rs1.getInt("initprice")+"</td>");
						out.println("<td>"+rs1.getInt("highestbid")+"</td>");
						tempid=rs1.getInt("itemid");
						out.println("<td>"+"<a href=bid.jsp?itemid="+tempid+"><B>Make Bid</B></a>"+"</td>");
						out.println("</tr>");
					}
				}
				else
				{
					if(oday<tday)
					{
						out.println("<tr bgcolor=");
						out.println("#CCCCFF");
						out.println(">");
						out.println("<td>"+rs1.getInt("itemid")+"</td>");
						out.println("<td>"+rs1.getString("seller")+"</td>");
						out.println("<td>"+tdf.getCatname(rs1.getString("catcode"))+"</td>");
						out.println("<td>"+rs1.getString("itemname")+"</td>");
						out.println("<td>"+rs1.getString("itemdesc")+"</td>");
						//out.println("<td>"+rs1.getDate("addedon")+"</td>");
						out.println("<td>"+rs1.getDate("addedon").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("addedon").toString().substring(5,7))+"-"+rs1.getDate("addedon").toString().substring(0,4)+"</td>");
						//out.println("<td>"+rs1.getDate("closeson")+"</td>");
						out.println("<td>"+rs1.getDate("closeson").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)+"</td>");
						out.println("<td>"+rs1.getInt("initprice")+"</td>");
						out.println("<td>"+rs1.getInt("highestbid")+"</td>");
						tempid=rs1.getInt("itemid");
						out.println("<td>"+"<B>Bid Closed</B>"+"</td>");
						out.println("</tr>");
					}
					else
					{
						//out.println("<tr bgcolor="rgb(80, 180, 239)">");
						out.println("<tr bgcolor=");
						out.println("#CCCCFF");
						out.println(">");
						out.println("<td>"+rs1.getInt("itemid")+"</td>");
						out.println("<td>"+rs1.getString("seller")+"</td>");
						out.println("<td>"+tdf.getCatname(rs1.getString("catcode"))+"</td>");
						out.println("<td>"+rs1.getString("itemname")+"</td>");
						out.println("<td>"+rs1.getString("itemdesc")+"</td>");
						//out.println("<td>"+rs1.getDate("addedon")+"</td>");
						out.println("<td>"+rs1.getDate("addedon").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("addedon").toString().substring(5,7))+"-"+rs1.getDate("addedon").toString().substring(0,4)+"</td>");
						//out.println("<td>"+rs1.getDate("closeson")+"</td>");
						out.println("<td>"+rs1.getDate("closeson").toString().substring(8,10)+"-"+tdf.getMonth(rs1.getDate("closeson").toString().substring(5,7))+"-"+rs1.getDate("closeson").toString().substring(0,4)+"</td>");
						out.println("<td>"+rs1.getInt("initprice")+"</td>");
						out.println("<td>"+rs1.getInt("highestbid")+"</td>");
						tempid=rs1.getInt("itemid");
						out.println("<td>"+"<a href=bid.jsp?itemid="+tempid+"><B>Make Bid</B></a>"+"</td>");
						out.println("</tr>");
					}
				}
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
		}
		catch(Exception e1)
		{
			out.println(e1.toString());
		}
	%>



    
<%--jsp:include page="listitems.jsp"--%>

	</center>
	</body>
</html>
 