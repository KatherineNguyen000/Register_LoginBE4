<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box
}

/* Add padding to containers */
.container {
	padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>
		<hr>

		<form action="register" method="post">
		
			<label for="username"><b>Username</b></label> 
			<input type="text"
				placeholder="Enter Username" name="username" id="username" required>

			<label for="email"><b>Email</b></label> 
			<input type="text"
				placeholder="Enter Email" name="email" id="email" required> 
				
			<label for="password"><b>Password</b></label> 
			<input type="password"
				placeholder="Enter Password" name="password" id="password" required>

			<hr>
			<input type="submit" value="Submit">
		</form>
		
	</div>
</body>
</html>