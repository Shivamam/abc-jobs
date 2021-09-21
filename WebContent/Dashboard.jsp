<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">

</head>
<body>
<%@include file="Header.jsp" %>
<div class="jumbotron">
  <h1 class="display-3">Welcome! <s:property value="email"/></h1>
    <a class="btn btn-primary btn-lg" href="UserView" role="button">My Profile</a>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>
</body>
</html>