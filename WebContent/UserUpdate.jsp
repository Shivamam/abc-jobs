<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Update</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">

</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h1>Update Details</h1>
				<div class="line">
					<s:iterator value="beanList">
						<form action="update" method="post">
						<table>
						<tr>
							<th>First Name </th>
							<td><input type="text" Placeholder="First Name" name="fname" value="<s:property value='fname'/>" /></td> 
							</tr><tr>
							<th>Last Name </th>	
								<td><input type="text" Placeholder="Last Name" name="lname"	value="<s:property value='lname'/>" /> </td>
								</tr><tr>
								<th>Email </th>
								<td><input type="text" Placeholder="Email" name="email"	value="<s:property value='email'/>" /> </td>
								</tr><tr>
								<th>Password</th>
								<td><input type="text" Placeholder="Password" name="password" value="<s:property value='password'/>" /></td>
								</tr><tr>
								 <th>Contact no. </th>
								 <td><input type="text" Placeholder="Contact No." name="phone" value="<s:property value='phone'/>" /> </td>
								</tr><tr>
								<th>Gender </th>
								<td><input type="text" Placeholder="Gender" name="gender" value="<s:property value='gender'/>" /> </td><br>
</tr>
</table>

							<button class="btn btn-primary" type="submit" class="registerbtn"
								value="update">Submit</button>
						</form>
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%@include file="Footer.jsp"%>

</body>
</html>
