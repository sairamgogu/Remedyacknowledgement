<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Track Remedy</title>
<script type="text/javascript">
var req3;
function myfun3()
{
	var url="Get_Remedy_Tracking.jsp";
	if(window.XMLHttpRequest) 
		{
		req3=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
		req3=new ActiveXObject("Microsoft.XMLHTTP");
		}
	try
	{
		req3.onreadystatechange=function()
        {
               if(req3.readyState==4)
                     {
                     var val=req3.responseText;
                     document.getElementById("id1").innerHTML=val;
                     }
        }
        req3.open("GET", url, true);
        req3.send();

	}
	catch(e)
	{
		alert("Unable to Connect Server");
	}
}
</script>
</head>
<body>
<div class="container">
<form name="form3" action="Get_Remedy_Tracking.jsp" method="post" id="form4">
  <center><font size=8><b>Track Your Remedy</b></font></center>
  <h1><b>Enter your email</b></h1>
  <input type="text" name="email" style="border: 2px solid black" value='<%= application.getAttribute("user_email")%>'><br><br>
  <input type="submit" value="submit1" class="registerbtn">   
</form>
<span id="id1"></span>
</div>
</body>
</html>