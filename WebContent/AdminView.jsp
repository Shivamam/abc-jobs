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
	<%@include file="Header.jsp"%>

	<s:if test="noData==true">
	<div class="container">
		<div class="card">
			<div class="card-body">
		<table border="1px solid #000">

			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Phone</th>

					<th>Delete</th>
				</tr>
			</thead>
			<s:iterator value="beanList">
				<tr>
					<td><s:property value="fname" /> <s:property value="lname" /></td>
					<td><s:property value="lname" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="gender" /></td>
					<td><s:property value="phone" /></td>

					<td><a href="deleteUser.action?bean.email=<s:property value="email"/>"><button class="btn btn-primary"></button>Delete</a></td>
				</tr>
			</s:iterator>
		</table>
		</div>
		</div>
		</div>
		
	</s:if>
	<s:else>
		<div style="color: red;">No Data Found.</div>
	</s:else>
</body>
</html>