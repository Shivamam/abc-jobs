<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">

</head>
<style type="text/css">
.bs-example {
	margin: 50px;
}
button {
color: white;
}
</style>
<body>
	<%@include file="Header.jsp"%>


<br>
	<br>
	<s:iterator value="beanList">
		<div class="bs-example">
		<div class="container">
		<div class="card">
			<div class="card-body">
			<table class="table">
				<tr>

					<th>First Name:</th>
					<td><s:property value="fname" /></td>
				</tr>
				<tr>
					<th>Last Name:</th>
					<td><s:property value="lname" /></td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><s:property value="email" /></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><s:property value="password" /></td>
				</tr>
				<tr>
					<th>Contact no:</th>
					<td><s:property value="phone" /></td>
				<tr>
					<th>Gender:</th>
					<td><s:property value="gender" /></td>
				</tr>

			</table>
				<a href="UserUpdate"><button class="btn btn-primary">Update</button></a>
			
		</div>
		</div></div></div>
	</s:iterator>
</body>
</html>