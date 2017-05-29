<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Tab</title>
</head>
<body>
	<form action="listStudent.jsp" method="post">

		<table border="1">
			<tr>
				<th>Course Number</th>
				<th>Course Name</th>
				<th>Course Quarter</th>
			</tr>
			<c:forEach var="listcourses" items="${course}">
				<tr>
					<td><c:out value="${listcourses.cNumber}"/></td>
					<td><c:out value="${listcourses.cName}"/></td>
					<td align="center"><c:out value="${listcourses.quarter}"/></td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<br /> <input type="submit" value="Back" />
		</div>


		</form>
</body>
</html>