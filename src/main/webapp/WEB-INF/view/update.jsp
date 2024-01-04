<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="updatedata" method="post">
		First Name<input type="text" name="firstName" value="${rec.firstName}">
		Last Name<input type="text" name="lastName" value="${rec.lastName}">
		City<input type="text" name="city" value="${rec.City}">
		Mobile<input type="text" name="mobile" value="${rec.Mobile}">
		Email<input type="text" name="email" value="${rec.email}"/>
		<input type="submit" value="update"/>
	</form>
</body>
</html>