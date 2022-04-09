<%@ page import="java.sql.*, Tender.*" %>

<html>
	<link rel="stylesheet"  href="style.css">
	<script language="javascript">

	function check()
	{
   		if ( f1.oldpwd.value == "") 
   		{
            	alert("Old Password Must Be Entered");
            	f1.oldpwd.focus()
            	return false;
   		}
   
   		if ( f1.newpwd.value == "") 
      	{
       			alert("New Password Must Be Entered");
       			f1.newpwd.focus()
       			return false;
   		}
   		
   		if ( f1.newpwd.value == f1.oldpwd.value )
   		{
   			alert("New password must be different from old password.");
   			f1.newpwd.focus()
   			return false;
   		}
   		
   		if( f1.newpwd.value.length < 8)
   		{
   			alert("New password must be 8 to 32 characters long.");
   			f1.newpwd.focus()
   			return false;
   		}
   		
   		if( f1.newpwd.value.length > 32)
   		{
   			alert("New password must be 8 to 32 characters long.");
   			f1.newpwd.focus()
   			return false;
   		}
   
   		if ( f1.newpwd.value !=  f1.confirmpwd.value )
   		{
    		alert("New password and confirm password are not matching.");
    		f1.confirmpwd.focus()
    		return false;
   		}
   		return true;
	}

	</script>

  
	<body leftmargin=0 topmargin=0 rightmargin=0> 
	<center>
	<h1>Change Password</h1>

	<form name=f1  onsubmit="return check()" action="changepassword.jsp" method="post">
	<table>
		<tr>
			<td>Old Password<ness> * </ness>
			<td>
			<input type=password name=oldpwd size=40>
		</tr>

		<tr>
			<td>New Password<ness> *</ness>
			<td>
			<input type=password name=newpwd  size=40><ness1>(8-32 characters)
		</tr>

		<tr>
			<td>Confirm New Password<ness> *</ness>
			<td>
			<input type=password name=confirmpwd  size=40>
		</tr>
		
	</table>
	<p><center><ness1>* fields are mandetory.</ness1>
	<p>
	<input type=submit value="Change">
	</form>

	<%
    	// process input 
 
   		String oldpwd = request.getParameter("oldpwd");
   		String newpwd = request.getParameter("newpwd");
   		session=request.getSession(false);
   		Tender.DataFunctions tdf=new Tender.DataFunctions();
 
   		if (oldpwd == null ) return;
   		if ((newpwd.length()>=8) && (newpwd.length()<=32))
   		{
   
   			if (  oldpwd.equals( tdf.getUserPwd(session.getAttribute("cusername").toString().trim())) )
   			{
            		if ( tdf.updatePassword(newpwd,session.getAttribute("cusername").toString())==true ) 
           	         	 	out.println("<B>Password Changed Successfully!</B>");
            		else
                     	 	out.println("<B>Sorry! Some problem occurred while changing pasword!</B>");
   			}
   			else
   			{
   				out.println("<B>Old password is wrong.</B>");
   			}
   		}
 
   		else
        		 out.println("<B>Sorry! Old password is not valid!</B>");
           
 	%>

</center>
</body>
</html>   