<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>ABCjobs</title>
</head>
<body>
	<%@include file="Navbar.jsp"%>
<br><br><br><br>
		<div class="container">
		<div class="card">
			<div class="card-body">
			<center>
			<h1>Login</h1>
			
				<s:form action="adminLogin" method="post">
					<s:textfield name="email" label="Email ID"></s:textfield>

					<s:password name="password" label="Password"></s:password>
					<s:submit class="btn btn-primary" value="login"></s:submit>
				</s:form>
			</center>
	</div></div></div>
	<br><br><br><br><br><br><br><br><br><br><br>
		<%@include file="Footer.jsp" %>
</body>
</html>