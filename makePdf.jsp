<%@page import="java.io.*"%>
<%@page import="java.awt.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%
	try 
	{
		Document document=new Document();
		PdfWriter.getInstance(document,new FileOutputStream("C:/hello.pdf"));
		document.open(); 
		document.add(new Paragraph("Hello PDF"));
		document.close(); 
		out.println("pdf made successfully.")
	}
	catch (Exception e2) 
	{
		System.out.println(e2.getMessage());
	}
%>