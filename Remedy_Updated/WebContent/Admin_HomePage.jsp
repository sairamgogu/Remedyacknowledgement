<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Admin.*,java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>

<script>
function function1()
{
	window.history.forward();
}
setTimeout("function1()",10);
</script>

<style>

button {
  background-color: green;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
body{
background-image: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ0NDQ0NBw0HDQ0NDQ8IDQgNFREWFhURExUYHSggGBolGxUTITEhJSk3OjouFx8zODMsNygtLisBCgoKDQ0NDg0NDysZFRkrKysrKy0rNzctKysrKysrKysrKy0tKy0rKystNysrKysrLS0rKysrKzcrKysrKysrK//AABEIAKgBLAMBIgACEQEDEQH/xAAZAAEAAwEBAAAAAAAAAAAAAAACAAEEAwb/xAAaEAEBAQADAQAAAAAAAAAAAAAAAQIDEhMR/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECBAP/xAAWEQEBAQAAAAAAAAAAAAAAAAAAEQH/2gAMAwEAAhEDEQA/APUQoMKOuOHShQYSxnShQYUIxpQoMKKxpQoMKEZ1cXEi4sZ1cKRUIZRFrIyr4v4ixFfE+LRQfiEpFFRKItGwTo0XBsEqojQ0aVGpGsGjSo0jeDQp0akbwaNKjSNYIlRqRvElKOcpytxDhQYUWM6UOBChGNOFBhQjGnCCHCM6uFBhRWdXCiosY1cWkWREWiDKIiApFqFUpaqKNVSo0awaNKjRrFUaVCpGsGjSoUjeKoUqNI3iqFKjUjWDaP1doWkaVDlcocbiO0pRzlOEQ4cCFCM6cKBDhGNOFAhwjGkUGLixnTi4MIY0osYQi0RBlaIgKVVqFUpahRqqujRrFUaVGpGsGjV0aRvBo0qFI3g0aVCkbxVC0q52kaVaH1dCkEhxylOVsdYcrlKcpEdoUc804RDhxzlOUjGnDjnKcRjTKDFwY04UCF9GdKLVKsZWtX1Poi0V9T6ItSKFQVqtFxVGrtGjeKo0gtGsVQpULVjeKoVdo2kbxQapWueqRtVrnStc7SCqH1doWkVJTlcZTlaR2lOOMpyg75pyuMp5ojtDjlmnKJrpDjnKUqRjcdIUc5TlIxuHFwZV/Rg4sZVwSFFj9X9RmLRSfVFqV9T6hEo1LVfVjWYlGoq0axKFXaNpGswaNXaNqx6Zg0aloao0mq52paFoqWudXaFoqrQqWjaAynK4zRyqzXaU81xlOUK7ynK4SukoldpTlcZTlUrvKcrjKc0I7Qo5SnKkZ10hRzlKUjG4a4EpfUQvqfRX9EJKP1PpEi/qvqfVfRUqqlqrVipRqWjaRrMSjVXQXSxvF6rnaloWipqudq7XO0WpaFqaoWotS1ztXa52hUtG1Vo3QUJXSVwlKUYrRKcrhNHKFd5TlcJo5pUrvK6Ss80c0FaJTmmeaOaCtE0U04TRzSpXeaOaZ5o5oSu80uVwmimhHb6v649l9gdfqfXLsnYHX6r65dk7A6XQ3TndDdCndDdBdDdC0roLoboLoKV0FqroLpFq7QtVdBdBUtC1V0FoVdoWqtC1Fq7QtVaPYKEpys80c0Mu8pzTPNHNKjTnRzTLNHNg1TRzTLNnNg1TRzTLNnNiNM0c0yzZTajVNFNM02U2I0zRTTNNrmwaey+zN3X6A0dk7M/dPQHfsnZn7p3B2uhunG7Vdg63Q3Tldjdg6XQ3Tldjdiul0F053Y3aB3QXQXYXYp3QXQXYXQHdBaF0N0inaH0boLoHGbObZJsptVjXNnNsc2c2pGubKbZJyFOQSNk2U2yTkKcijZOQ5yMU5CnIDbOQpyMU5CnII2zkKcjFORc5VG6ci5yMXqucoNvov0YvVPUG30T0YvVPUhGz0T0Y/VXqEbLyDeRk9VXlBqvIN5GW8iryINN5BvIzXkG8gNF5BvIz3kG8grvdjduF5AvIDvdjduF5BvIix2uxu3C7G7CO92Hdxux7osZ5sptkmym1ajXNlORjmymxI2TkKcjHNlNqRsnIU5GKbKbEjbOQpyMU5CnIpG2ci5yMU5C9AjbORc5WKci/RUjb6l6sPov0CNvqv0YvRPQI2+qerF6J6BG31V6sfor0CNnqq8rJ6K9AjXeQbyMvcbyIRqvIq8jLeQbyCxqvIN5Ga8g3kCNN5BvIzXY3aEabyDeRnuxuxY0XY3bPdjdoRoux7uF2PdFjjNFNKQaKaKaRFRc0ubWgLmimlIqFNLmkQCm190RUXNr7ogL7r7oii+6d0QE7p3RATundEBXdXdEBXdV2iIDdqu0QFdh7IiKq7G7WgDdDdIiKrsN0iAq6V2REV//Z");
background-repeat: no-repeat;
background-size: 2000px 1500px;
}
p {
  text-shadow: -2px 0 black, 0 2px black, 2px 0 black, 0 -2px black;
}
h1{
text-align:center;
text-shadow: -2px 0 black, 0 2px black, 2px 0 black, 0 -2px black;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.topright {
  position: absolute;
  top: 10px;
  right: 20px;
  font-size: 22px;
  
}
.topright1 {
  position: center;
  top: 6px;
  right: 14px;
  font-size: 16px;
 
}

</style>
</head>
<body>
<%!
String ticketid;
String email;
%>
<%
ServletContext sc=request.getServletContext();
%>
<div class="topright"><a href="Mainpage.html"><input type="button" value="Home"></a></div>
    <div class="topright1"><a href="Admin_Login.jsp"><button onclick="funciton1()">LOGOUT</button></a></div>
<h1><font color=white>Welcome Sairam Gogu</font>-</h1>
<p><font size=5 color=white><i><b>Details of Tickets raised by Users.</b></i></font></p>
<table>
  <tr>
  	<th>client mail</th>
    <th>Ticket Id</th>
    <th>Ticket Issue</th>
    <th>Ticket Description</th>
    <th>Issue Status</th>
    <th>Update Status</th>
  </tr>
<%
ArrayList<Issue> list=AdminDAO.GetAllIssues("resolved");
for(Issue i:list)
{
	sc.setAttribute("email_to_update",i.getEmail());
	sc.setAttribute("ticketid_to_update",i.getTicketid());
%>
  <form action="Update_Issue_Status.jsp">
    <td><%= i.getEmail() %></td> 
    <td><%= i.getTicketid() %></td>
    <td><%= i.getIssue() %></td>
    <td><%= i.getDescription() %></td>
    <td><%= i.getStatus() %></td>
    <td>
    <select name="status">
  <option selected disabled>Select Status</option>
  <option value="underprocess">Under Process</option>
  <option value="unresolved">Un Resolved</option>
  <option value="resolved">Resolved</option>
  </select></td>
  <td><button type="submit" value="update">Update</button></a></td>
  </tr>
  </form>

<%
}
%> 
</table>

</body>
</html>