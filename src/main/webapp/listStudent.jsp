<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All students</title>
<script type="text/javascript">
	function oninit() {
		var htttp = new XMLHttpRequest();
		http.get("GET","", false);
		http.send(null);
		return http.responseText();
	}
</script>
</head>
<body onload="oninit()">
	<table border="1" cellspacing="0" cellpadding="6">
		<thead>
			<tr>
				<th>Student ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th colspan="3">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${liststudents}" var="student">
				<tr>
					<td name="id"><c:out value="${student.sid}" /></td>
					<td><c:out value="${student.firstname}" /></td>
					<td><c:out value="${student.lastname}" /></td>
					<td><c:out value="${student.age}" /></td>
					<td><c:out value="${student.gender}" /></td>
					<td><form
							action="webapi/student/update/<c:out value="${student.sid}"/>"
							method="post">
							<input type="hidden" name="firstName"
								value="${student.firstname}"> <input type="hidden"
								name="lastName" value="${student.lastname}"> <input
								type="hidden" name="age" value="${student.age}"> <input
								type="hidden" name="gender" value="${student.gender}">
							<button value="submit">Update</button>
						</form></td>
					<td><form
							action="webapi/student/delete/sid/<c:out value="${student.sid }"/>"
							method="post" name="<c:out value="${student.sid }"/>">
							<button value="submit">Delete</button>
						</form></td>
					<td><form
							action="webapi/student/courses/sid/<c:out value="${student.sid }"/>"
							method="post" name="<c:out value="${student.sid }"/>">
							<button value="submit">Courses</button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
	<form action="webapi/student/allStudent/insert" method="post">
		<button value="submit">Add Student</button>
	</form>
	</p>
</body>
</html>