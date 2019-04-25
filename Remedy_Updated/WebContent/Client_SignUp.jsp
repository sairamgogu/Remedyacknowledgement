<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Sign Up</title>
<link href="Styling.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<div class="container">
    <div class="col-md-6">
    <div id="logbox">
      <form id="signup" method="post" action="Save_Client">
        <h1>Sign Up</h1>
        <input name="fn" type="text" placeholder="Enter First Name" autofocus="autofocus" required="required" class="input pass"/>
        <input name="ln" type="text" placeholder="Enter Last Name" autofocus="autofocus" required="required" class="input pass"/>
        <select name="gender" class="select class">
  		<option selected disabled>Select Gender</option>
  		<option value="male">Male</option>
  		<option value="female">Female</option>
 		</select>
    	<input name="email" type="email" placeholder="Email address" class="input pass"/>
    	<input name="contact" type="text" placeholder="Enter Contact" autofocus="autofocus" required="required" class="input pass"/>
        <input name="psw1" type="password" placeholder="Choose a password" required="required" class="input pass"/>
        <input name="psw2" type="password" placeholder="Confirm password" required="required" class="input pass"/>        
        <input type="submit" value="Sign Up!" class="inputButton"/>        
      </form>
      <div class="text-center">
           <center><b>Already have an Account?</b> <a href="Client_SignIn.jsp" id="login_id"><button>Sign In</button></a></center> 
        </div>
    </div>
   </div>
</body>
</html>