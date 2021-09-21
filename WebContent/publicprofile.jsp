<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
	<%@include file="Header.jsp"%>
<div class="container">
<div class="card">
<div class="card-body">
  
  <s:iterator value="beanl">

	 
<tr>
<td>
<th><h1>Name:</h1> </th>
<td><h3><s:property value="fname"/> <s:property value="lname"/></h3></td>
</tr>
<tr>
<th><h3>Gender:</h3> </th>
<td><h3><s:property value="gender"/></h3></td>
</tr>
<tr>
<th><h3>Email:</h3> </th>
<td><h3><s:property value="email" /></h3></td>

	    
	
	    


</s:iterator>
	</div></div></div>
<br><br><br><br><br><br><br><br><br><br><br><br>
	<%@include file="Footer.jsp"%>


</body>
</html>