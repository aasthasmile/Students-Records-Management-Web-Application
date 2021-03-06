<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Tab</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/cerulean/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- ---Navbar Header -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Student Records Management </a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
		</ul>

	</div>
	</nav>
	<!-- --Navbar end here -->
	
	<form action="listStudent.jsp" method="post">

		<table border="1" cellspacing="0" cellpadding="6"  class="table table-bordered table-striped">
		<caption>Course Details </caption>
			<tr>
				<th>Course Number</th>
				<th>Course Name</th>
				<th>Course Quarter</th>
			</tr>
			<c:forEach var="listcourses" items="${course}">
				<tr>
					<td><c:out value="${listcourses.cNumber}" /></td>
					<td><c:out value="${listcourses.cName}" /></td>
					<td align="center"><c:out value="${listcourses.quarter}" /></td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<br /> <input type="submit" value="Back" />
		</div>


	</form>
</body>
</html>