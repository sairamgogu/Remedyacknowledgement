<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Issue</title>
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
<body >

<form action="Save_Issue_Servlet" method="post">
  <div class="container">
  
    <center><font size=8><b>Register Your Remedy here</b></font></center>
    <b>Ticket Id:<input type="text" name="tid" style="border: 1px solid black"></b><br>

<b>Select Your Type of Issue</b><br><br>
<select name="issue" style="border: 2px solid black">
  <option value="Login issues">Login Issues</option>
  <option value="Notification issue">Notification issues</option>
  <option value="passwor issue">Password issues</option>
  <option value="Data entry issue">Data Entry Issues</option>
</select><br><br>
<b>Describe your Issue</b><br><br>
<input type="textbox" name="description" style="border: 2px solid black"><br><br>
    <button type="submit" class="registerbtn">Submit</button>
  </div>
  
  <div class="container signin">
  </div>
</form>


</body>
</html>