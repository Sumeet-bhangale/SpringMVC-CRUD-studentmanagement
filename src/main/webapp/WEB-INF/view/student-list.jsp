<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1" isELIgnored="false" %>
	 
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>

<style>
	h1 {
	color: red;
}


body {
	font-size: 40px;
}

</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<!-- 	 <link rel="stylesheet" type="text/css" href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
 -->
 </head>
<body class="p-3 mb-2 bg-light text-dark">

<div class="container">
	<h1 align="center" style="color: red;">Student List</h1>

	
		<form action="showAddStudentPage">
			<input  type="submit" value="Add " class="btn btn-primary" >



		</form>
<br/>
		<table class="table table-striped" border="1" >
			<thead>
				<tr>
					<td><b>ID</b></td>
					<td><b>NAME</b></td>
					<td> <b>MOBILE</b></td>
					<td> <b>COUNTRY</b></td>
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