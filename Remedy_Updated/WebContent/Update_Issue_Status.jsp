<%@page import="Admin.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update_Issue_Status</title>
</head>
<body>
<%
ServletContext sc=request.getServletContext();
String status=request.getParameter("status").toString();
if(AdminDAO.UpdateStatus(status,sc.getAttribute("email_to_update").toString(), sc.getAttribute("ticketid_to_update").toString())>0)
{
%>
<script type="text/javascript">alert('Updated Successfully')</script>
<jsp:include page="Admin_HomePage.jsp"></jsp:include>
<%
}
else
{
%>
<script type="text/javascript">alert('Error in Update process')</script>
<jsp:include page="Admin_HomePage.jsp"></jsp:include>
<%
}
%>
</body>
</html>