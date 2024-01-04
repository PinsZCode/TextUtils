<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of teachers</title>
</head>
<body>
	<table>
		<tr>
			<th>id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>City</th>
			<th>Mobile</th>
			<th>Email</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		
		<c:forEach var="value" items="${listOfData}">
           <tr>
           		<td>${value.id}</td>
           		<td>${value.firstName}</td>
           		<td>${value.lastName}</td>
           		<td>${value.city}</td>
           		<td>${value.mobile}</td>
           		<td>${value.email}</td>
           		<td><a href="delete?id=${value.id}">delete</a></td>
           		<td><a href="update?id=${value.id}">update</a></td>
        </c:forEach>
		
	
	</table>

</body>
</html>