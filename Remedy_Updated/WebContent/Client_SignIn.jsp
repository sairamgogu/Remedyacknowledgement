<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Sign In</title>
<link href="Styling.css" rel="stylesheet" id="bootstrap-css">

<script>
function validatesignin()
{
	var email=document.getElementById("1").value;
	var pwd=document.getElementById("2").value;
	
	if(email=="")
	{
		alert("Enter Email")
		return false;
	}
	if(email.matches("[a-zA-Z]{1,}[@]{1}[a-zA-Z]{1,}[.]{1}[a-zA-Z]{1,}"))
	{
		alert("Email Must in Format abc@abc.abc");
		return false;
	}
	if(pwd=="")
		{
		alert("Enter Password");
		return false;
		}
	return true;
}
</script>

</head>
<body>

<div class="col-md-6">
    <div id="logbox">
      <form id="signup" onsubmit="return validatesignin(this)" action="Validate_Client" method="post">
        <h1>Sign In</h1>
        <input name="email" type="email" placeholder="Enter your email" class="input pass" id="1"/>
        <input name="psw" type="password" placeholder="Enter your password" required="required" class="input pass" id="2"/>
        <input type="submit" value="Sign In!" class="inputButton"/>        
      </form>
      <div class="text-center">
           <center><b>Create Account</b> <a href="Client_SignUp.jsp" id="login_id"><button>Sign Up</button></a></center> 
        </div>
</div>
</div>

</body>
</html>