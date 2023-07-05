<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

</style>
</head>
<body>

	<form action="login" method="post">
 	<div class="container">
	    <label for="username"><b>Username</b></label>
	    <input type="text"
				placeholder="Enter First Name" name="username" id="username" required>>
	
	    <label for="password"><b>Password</b></label>
	   <input type="password"
				placeholder="Enter Password" name="password" id="password" required>
	
	    <button type="submit">Login</button>
    </div>
	</form>


	<c:if test="${not empty errorMessage}">
		<p style="color: #927BF0; font-weight: bold;">${errorMessage}</p>
	</c:if>

</body>
</html>