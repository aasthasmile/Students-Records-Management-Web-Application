<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a New Student</title>
</head>
<body>
	<form action="webapi/student/update/sid/${student.sid}" method="post">
		<fieldset>
			<div>
				<label for="studentId">Student ID</label> <input type="text"
					name="studentId" value="<c:out value="${student.sid}" />"
					 placeholder="Student ID" /> <!-- readonly="readonly"-->
			</div>
			<div>
				<label for="firstName">First Name</label> <input type="text"
					name="firstName" value="<c:out value="${student.firstname}" />"
					placeholder="First Name" />
			</div>
			<div>
				<label for="lastName">Last Name</label> <input type="text"
					name="lastName" value="<c:out value="${student.lastname}" />"
					placeholder="Last Name" />
			</div>
			<div>
				<label for="age">Age</label> <input type="text" name="age"
					value="<c:out value="${student.age}" />" placeholder="Age" />
			</div>
			<div>
				<label for="gender">Gender</label> <input type="text" name="gender"
					value="<c:out value="${student.gender}" />" placeholder="gender" />
			</div>
			<div>
				<input type="submit" value="Submit" />
			</div>
		</fieldset>
	</form>

</body>
</html>