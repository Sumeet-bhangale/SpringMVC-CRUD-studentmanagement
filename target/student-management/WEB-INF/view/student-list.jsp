<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


	<link rel="stylesheet" type="text/css" href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">


</head>
<body>


	<h1 align="center">Spring MVC</h1>

	<div align="center">
		<form action="showAddStudentPage">
			<input type="submit" value="Add ">



		</form>

		<table border="1">
			<thead>
				<tr>
					<td>id</td>
					<td>name</td>
					<td>mobile</td>
					<td>country</td>
				</tr>
			</thead>



			<!-- Model Attribute : students -->
			<c:forEach var="student" items="${students}">

				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.mobile}</td>
					<td>${student.country}</td>
					<td><a href="/student-management/updateStudent?userId=${student.id}"> Update </a></td>
					<td><a href="/student-management/deleteStudent?userId=${student.id}"  onclick="if(!(confirm('Are You Sure You Want to DELETE this Student ?'))) return false"> Delete </a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>