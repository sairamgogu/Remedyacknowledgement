<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home Page</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url("http://www.guilfordparalegalassociation.org/wp-content/uploads/2019/02/alps-scene-desktop-wallpapers-1440x900-widescreen-hd-wallpaper-likeable-modest-3.jpg");
  background-repeat: no-repeat;
  background-size: 1600px 800px;
}
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
.topright1 {
  position: left;
  top: 8px; 	
  right: 16px;
  font-size: 18px;
}
* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
  
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
<script type="text/javascript">
var req1;
function myfun1()
{
	//document.writeln("Hello F1()");
	var url="Add_Issue.jsp";
	if(window.XMLHttpRequest) 
		{
		req1=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
		req1=new ActiveXObject("Microsoft.XMLHTTP");
		}
	try
	{
		req1.onreadystatechange=function()
        {
               if(req1.readyState==4)
                     {
                     var val=req1.responseText;
                     document.getElementById("id").innerHTML=val;
                     }
        }
        req1.open("GET", url, true);
        req1.send();

	}
	catch(e)
	{
		alert("Unable to Connect Server");
	}
}

var req2;
function myfun2()
{
	//document.writeln("Hello F1()");
	var url="Track_Remedy.jsp";
	if(window.XMLHttpRequest) 
		{
		req2=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
		req2=new ActiveXObject("Microsoft.XMLHTTP");
		}
	try
	{
		req2.onreadystatechange=function()
        {
               if(req2.readyState==4)
                     {
                     var val=req2.responseText;
                     document.getElementById("id").innerHTML=val;
                     }
        }
        req2.open("GET", url, true);
        req2.send();

	}
	catch(e)
	{
		alert("Unable to Connect Server");
	}
}

function fun1()
{
	window.history.forward();
}
setTimeout("fun1()",10);
</script>
</head>
<body>

<h1 style="color:white">Welcome <%=application.getAttribute("user_email").toString().substring(0,application.getAttribute("user_email").toString().indexOf('@')) %></h1>
<a href="Client_SignIn.jsp"><button onclick="fun1()" style="float: right">LOGOUT</button></a>
<form name="form1" id="form1" >
<input type="button"   onclick='myfun1()'  value="Add Issue">
<input type="button"   onclick='myfun2()'  value="Track Remedy">
</form>

<br>
<span id="id"></span>
</body>
</html>