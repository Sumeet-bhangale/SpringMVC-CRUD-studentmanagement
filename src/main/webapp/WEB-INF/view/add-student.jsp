<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- style="background-image: url('https://codeshoppy.com/shop/wp-content/uploads/2020/07/School-Management.png');
 -->
</head>
<body  style=" background-image: url('https://static.vecteezy.com/system/resources/previews/003/557/257/original/abstract-blue-and-gray-wave-background-free-vector.jpg');" >
<br/> <br> <br> <br> <br>
<br/><br/>
<div align="center" >
<h2>Add New Student</h2>



<!-- Create a HTML where User can Enter the Data -->
<form:form action="save-student" modelAttribute="student" method="POST">
 	
 	
<form:hidden path="id"/>
 
 
 	<label>Name : </label>
	<form:input path="name"/>
	<br>
	
	<label>Mobile : </label>
	<form:input path="mobile"/>
	<br>
	
	<label>Country : </label>
	<form:input path="country"/>
	
	<br>
	<input type="submit" value="Submit">
	
</form:form>
</div>
</body>
</html>