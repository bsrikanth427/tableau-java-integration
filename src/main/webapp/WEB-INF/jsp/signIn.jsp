<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title>
</head>
<body>
<form:form name="submitForm" action= "dashboard" method="GET">
<div align="center">
<table>
<tr>
<td>User Name</td>
<td><input type="text" name="userName" /></td>
</tr>
<tr>
<td><input type="submit" value="Dashboard" /></td>
</tr>
</table>
</div>
</form:form>
</body>
</html>