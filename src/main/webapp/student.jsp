<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update a Student</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/cerulean/bootstrap.min.css"
	rel="stylesheet">
</head>
<script>
	function validateform() {
		var age = document.myform.age.value;
		
         if (age <0 & age>100) {
			alert("Age can't be greater than 100");
			return false;
		}
	}
</script>
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

	<form action="webapi/student/update/sid/${student.sid}" method="post" name="myform">
		<fieldset>
			<table border="1" cellspacing="0" cellpadding="6"
				class="table table-bordered table-striped">
				<caption>Updating Student Records</caption>
				<tbody>
					<tr>
						<td><label for="studentId">Student ID</label></td>
						<td><input type="text" name="studentId" readonly="readonly"
							value="<c:out value="${student.sid}" />" placeholder="Student ID" /></td>
					</tr>
					<tr>
						<td><label for="firstName">First Name</label></td>
						<td><input type="text" name="firstName"
							value="<c:out value="${student.firstname}" />"
							placeholder="First Name" /></td>
					</tr>
					<tr>
						<td><label for="lastName">Last Name</label></td>
						<td><input type="text" name="lastName"
							value="<c:out value="${student.lastname}" />"
							placeholder="Last Name" /></td>
					</tr>
					<tr>
						<td><label for="age">Age</label></td>
						<td><input type="text" name="age"
							value="<c:out value="${student.age}" />" placeholder="Age" /></td>
					</tr>
					<tr>
						<td><label for="gender">Gender</label></td>
						<td><input type="radio" name="gender" value="Male" checked>
							Male<br> <input type="radio" name="gender" value="Female">
							Female <%-- <input type="text" name="gender"
							value="<c:out value="${student.gender}" />" placeholder="gender" />  --%>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" /></td>
					</tr>
					
				</tbody>
			</table>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>

		</fieldset>
	</form>

</body>
</html>