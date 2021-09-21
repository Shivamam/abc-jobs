<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">

</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container">
<div class="card">
<div class="card-body">
	<h2>Thank you for registering!! <s:property value="email"/></h2>
    <a class="btn btn-primary btn-lg" href="UserLogin.jsp" role="button">Login now</a>
	</div>
	</div>
	</div>
</body>
</html>