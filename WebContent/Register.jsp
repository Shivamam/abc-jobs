<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<style>
    .bs-example{
        margin: 20px;        
    }
</style>
</head>
<body>
<center>
<%@include file="Navbar.jsp" %>
<div class="container">
<div class="card">
<div class="card-body">
<s:form action="Registeruser" method="post">
<div class="bs-example">
               <h1>Create Your Account!!</h1>
                <div class="form-group">
<s:textfield label="First name" name="fname" required="true"/>
</div><div class="form-group">
<s:textfield label="Last name" name="lname" required="true"/>
</div><div class="form-group">
<s:textfield label="Email" name="email" type="email" required="true"/>
</div><div class="form-group">
<s:password label="Password" name="password" required="true" />
</div><div class="form-group">
<s:textfield label="Contact Number" name="phone" pattern="[0-9]{10}" required="true" />
</div><div class="form-group">
<s:radio label = "Gender" name = "gender" list="{'Male','Female','Other'}" required="true" />
</div>
</div>
</div>
</div>
</div>
<p>Already have an account? <s:a href="UserLogin.jsp">Login here</s:a>.</p>
<s:submit class="btn btn-primary" />
</s:form>
</center>

<s:if test="ctr>0">
<span style="color: green"><s:property value="msg" /></span>
</s:if>
<s:else>
<span style="color: red;"><s:property value="msg" /></span>
</s:else>
<br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>

</body>
