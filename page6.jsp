<%@ page import="java.sql.*, java.util.*, Tender.*" %>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Tendering System</title>
<style type="text/css">
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
.style9 {
	margin-top: 0px;
}
</style>
</head>

<body bgcolor="#66CCFF">

<img src="etender.gif" width="969" height="155" /><br />
<div style="position: absolute; width: 260px; height: 650px; z-index: 5; left: 983px; top: 4px" id="layer8">
	<iframe name="I1" id="I1" style="height: 685px; width: 285px" src="login2.htm" class="style9">Your browser does not support inline frames or is currently configured not to display inline frames.
			</iframe></div>

<br />
<div style="position: absolute; width: 974px; height: 100px; z-index: 2; left: 5px; top: 594px; background-color: #0066FF; font-family: verdana; font-size: small; font-weight: 600;" id="layer3">
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
	<a href="page1.jsp">
	<input name="Button1" type="button" value="Download Latest Tenders" style="width: 240px; height: 30px; font-weight: bold;" /></a><br />
&nbsp;&nbsp; <br />
&nbsp;
<a href="page2.jsp">
	<input name="Button2" type="button" value="Tenders By Name" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page3.jsp">
	<input name="Button3" type="button" value="Tenders By Value" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page4.jsp">
	<input name="Button4" type="button" value="Tenders Status" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page5.jsp">
	<input name="Button5" type="button" value="Downloads" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;&nbsp;<a href="page6.jsp"><input name="Button6" type="button" value="Sitemap" style="width: 240px; height: 30px; font-weight: bold; background-color: #B9B9FF; " /></a></div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="position: absolute; width: 556px; height: 333px; z-index: 6; left: 286px; top: 189px" id="layer9">
	<br>
&nbsp;<a href="first.htm">First Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="first.htm">Logged In</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page1.jsp">
	Download Latest Tenders</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="mainpage.jsp">Main Page (Home)</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page2.jsp">
	Tenders By Name</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="additem.jsp">Add Items</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page3.jsp">
	Tenders By Value</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="myitems.jsp">My Items</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page4.jsp">
	Tenders Status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="search.jsp">Search Items</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page5.jsp">
	Downloads</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="changepassword.jsp">Change Password</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt; <a href="page6.jsp">
	Sitemap</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	|--------&gt; <a href="logout.jsp">Logout</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt;
	<a href="Registration(1).htm">Registration</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |--------&gt;
	<a href="forgotpassword(1).jsp">Forgot Password</a></div>

</body>

</html>
