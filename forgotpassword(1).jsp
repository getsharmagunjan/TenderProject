<%@ page import="java.sql.*,java.util.*,javax.mail.internet.*,javax.mail.*,javax.activation.*, Tender.*"%>

<html>
<head>
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
.style6 {
	color: #FF0000;
}
.style7 {
	margin-left: 0px;
}
</style>
<script language="javascript">
		function check()
		{
			var x= f1.email.value;
			var atpos=x.indexOf("@");
			var dotpos=x.lastIndexOf(".");
			
			if ( atpos < 1 )
  			{
  				alert("Not a valid e-mail address");
  				return false;
  			}
  			
  			if ( dotpos < atpos+2 )
  			{
  				alert("Not a valid e-mail address");
  				return false;
  			}
  			if ( dotpos + 2 >= x.length )
  			{
  				alert("Not a valid e-mail address");
  				return false;
  			}
			

		}
		</script>
</head>

<body bgcolor="#66CCFF">

<img src="etender.gif" width="969" height="155" /><br />
<div style="position: absolute; width: 260px; height: 650px; z-index: 5; left: 983px; top: 4px" id="layer8">
	<iframe name="I1" id="I1" style="height: 685px; width: 285px" src="login2.htm" class="style9">Your browser does not support inline frames or is currently configured not to display inline frames.
			</iframe></div>

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


	<div style="position: absolute; width: 380px; height: 43px; z-index: 2; left: 318px; top: 177px; font-family: sans-serif; font-size: xx-large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #0066CC; bottom: 370px;" id="layer8">
&nbsp; Forgot Password</div>
<br />
<form method="post" style="height: 358px; font-size: medium; font-weight: bold; color: #FF0000;" action="forgotpassword(1).jsp" name="f1" onsubmit="return check()">
	<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
	Email Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="email" type="text" style="width: 200px; height: 30px" /><br />
	<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
	<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="first.htm">
	<input name="Button1" type="button" value="Back" style="width: 80px; height: 30px" src="first.htm" onclick="first.htm" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="Submit1" type="submit" value="Submit" style="width: 80px; height: 30px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="Reset1" type="reset" value="Reset" style="width: 80px; height: 30px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<%
  			String  email = request.getParameter("email");
  			if ( email  == null ) return;
			Tender.DataFunctions tdf=new Tender.DataFunctions();
  			Connection con = null;
  			PreparedStatement  ps  = null;
  			ResultSet rs = null;
  			try
  			{
  				Class.forName(tdf.getDriver());
  				con = DriverManager.getConnection(tdf.getConnectionString(),tdf.getUserName(),tdf.getPassword());
  				ps = con.prepareStatement("SELECT uname, pwd FROM users WHERE email = ?");
  				ps.setString(1,email);
  				rs = ps.executeQuery();
				if ( ! rs.next() )
  				{
      				out.println("<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry! Email Address Not Found In Our Database. <a href=login.html>Login Page</a>");
      				return;
   				}
				String  uname = rs.getString("uname");
   				String  pwd = rs.getString("pwd");
   				String body = "Dear Subscriber,\n\tUse the following details to login.\n\n\t Login Name : " + uname + "\n\t Password:"+ pwd + "\n\n\t: Administrator,\n\t  E-Tendering Portal";
   				//Properties props = System.getProperties();
   				Properties props=new Properties();
   				props.put("mail.smtp.host","smtp.gmail.com");
   				props.put("mail.smtp.starttls.enable","true");
   				props.put("mail.from","divyanshkumargupta@gmail.com");
   				//Session msession = Session.getDefaultInstance(props, null);
   				Authenticator auth = new javax.mail.Authenticator() 
   				{
					protected PasswordAuthentication getPasswordAuthentication()
					{
						return new PasswordAuthentication("divyanshkumargupta@gmail.com", "mobile9414372446");
					}
				};
   				Session msession=Session.getInstance(props,auth);
   				try
   				{
   					
   					//Message msg = new MimeMessage(msession);
   					MimeMessage msg=new MimeMessage(msession);
   					msg.setFrom(new InternetAddress("gunjannnsharma@gmail.com"));
   					//msg.setFrom();
   					msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email,false));
  					//msg.setDataHandler(new DataHandler(body,"text/html"));
  					msg.setSubject("Account Information");
  					//msg.setSentDate(new java.util.Date());
  					msg.setText(body);
   					// send message
  					//Transport.send(msg);
  					Transport transport = msession.getTransport("smtp");
					transport.connect("smtp.gmail.com","divyanshkumargupta@gmail.com","mobile9414372446");
					transport.sendMessage(msg,msg.getAllRecipients());
					transport.close();
  					out.println("<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Account details are sent to email address. Please use those details to login. <a href=first.htm>Login Page</a>");
  				}
  				catch(Exception e)
  				{
  					out.println("<br>"+e.toString());
  				}
  				
  			} // end of try
  			catch ( Exception ex)
 			{
     			out.println("<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry! Error : " + ex.getMessage() + "<p> <a href=first.htm>Login Page</a>");
  			}
 			finally
			{  
    			rs.close();
    			ps.close();
    			con.close();
 			}
		%>



</form>
<br />
<br />

</body>

</html>

