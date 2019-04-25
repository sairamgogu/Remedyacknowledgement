<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,Admin.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function fun2()
{
	window.history.forward();	
}
//setTimeout("fun2()",10);
</script>

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
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
<% application.setAttribute("user_email",application.getAttribute("user_email")); %>
<a href="Client_HomePage.jsp"><button>Home Page</button></a>
<a href="Client_SignIn.jsp"><button onclick="fun2()">Logout</button></a>
<br>
<br>
<center><font size=8><b>Your Remedy Status</b></font></center>
<%
ServletContext sc=request.getServletContext();
ArrayList<Issue> list=AdminDAO.GetIssue(request.getParameter("email"));
%>
<table style="border: 2px solid black; width:300px;">
<tr style="border: 2px solid black; width:300px;"><th style="border: 2px solid black; width:300px;">Ticket Id</th><th style="border: 2px solid black; width:300px;">Ticket Status</th></tr>
<%
for(Issue i:list)
{
%>
<tr style="border: 2px solid black"><td style="border: 2px solid black; width:300px;"><%=i.getTicketid() %></td><td style="border: 2px solid black; width:300px;"><%=i.getStatus() %></td></tr>
<%
}
%>
</table>
</div>
</body>
</html>