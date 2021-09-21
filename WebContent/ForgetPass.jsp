<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">

</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="container">
		<div class="card">
			<div class="card-body">
			<h1>Forget Password</h1>
<s:form name = "resetForm" action="reset_password" theme="simple" >

<s:label>Email address</s:label>
<br>
<br>
<s:textfield name="email" type="user.email" placeholder="Email Address" />
<br><br>


<s:submit class="btn btn-primary" value="Submit"/>

</s:form>
</div></div></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>
</body>
</html>