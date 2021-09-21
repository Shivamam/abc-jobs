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
								<s:form action="SearchUser" method="search" theme="simple">
									<div class="form-group">
										<div class="input-group">
											<div class="input-group-prepend"></div>
											<s:textfield name="Search" class="form-control"
												style="width=30px" placeholder="Find People..." />
											<s:submit value="Find"
												class="btn btn-primary text-white ml-2" />

										</div>
									</div>
								</s:form>

								<s:if test="noData==true">

									<s:iterator value="beanList">

										<div class="coxtainer">

											<a href="UserProfile.action?email=<s:property value="email"/>">



												<table>
												

														<td>
															<h5>
																<s:property value="fname" />
																<s:property value="lname" />
															</h5>
														</td>

														<td></td>

													
													</tr>
													<hr>

												</table>


											</a>

										</div>
									</s:iterator>




								</s:if>
								<s:else>
									<div style="color: red;"></div>
								</s:else>
								<s:if test="insert>0">
									<span style="color: red;"><s:property value="msgs" /></span>
								</s:if>
								<s:else>
									<span style="color: red;"><s:property value="msgs" /></span>
								</s:else>


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
	<%@include file="Footer.jsp"%>


</body>
</html>