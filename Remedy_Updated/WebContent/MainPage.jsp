<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Page</title>
<script type="text/javascript">
var req1;
function myfun1()
{
	//document.writeln("Hello F1()");
	var url="Client_SignUp.jsp";
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
	var url="Client_SignIn.jsp";
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
</script>
</head>
<body>
<center><font size="15"><b>Welcome to Remedy Acknowledgement Portal</b></font></center>
<form name="form1" id="form1">
<input type="button" onclick="myfun1()" value="SignUp">
<input type="button" onclick="myfun2()" value="Sign In">
</form>
<span id="id"></span>
</body>
</html>