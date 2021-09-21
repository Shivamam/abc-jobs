<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">


<style>
    .bs-example{
        margin: 20px;        
    }
</style>
</head>

<body>
<center>
<%@include file="Navbar.jsp" %>
<br><br><br><br>
<div class="bs-example">
<div class="container">
<div class="card">
<div class="card-body">
<h1>Welcome Back!</h1>

<s:form action="Loginuser.action" method="post">
        <div class="form-group">
<s:textfield label="Email Address" name="email" placeholder="Enter your Email" class="form-control" id="inputEmail" />
</div>
        <div class="form-group">
<s:password label="Password" name="password" placeholder="Enter your password" class="form-control" id="inputPassword" />
</div>
<s:submit class="btn btn-primary" value="Login" />
</s:form>
<s:url value="ConfirmEmail.jsp" var="CEmailURL" />
<s:a href="ForgetPass.jsp">Forgot Password?</s:a><br>
<s:a href="AdminLogin.jsp">Admin Login</s:a>

<s:if test="ctr>0">
<span style="color: green;"><s:property value="messages" /></span>
</s:if>
<s:else>
<div style="color: red;"><s:property value="messages" /></div>
</s:else>
</center>
</div>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>

</body>
</html>