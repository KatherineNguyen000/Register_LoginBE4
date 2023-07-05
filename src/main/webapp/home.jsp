<%@page import="coding.mentor.entity.Category"%>
<%@page import="coding.mentor.service.CategoryService"%>
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
	box-sizing: border-box;
}
.sub-header {
	display: inline-block;
	width: 25%;
	padding: 10px;
}

.sub-body-category {
	float: left;
	width: 20%;
	padding: 10px;
}

.sub-body-product {
	float: left;
	width: 80%;
	padding: 10px;
}

.body:after {
	content: "";
	display: table;
	clear: both;
}

.link {
	float: right;
	width: 10%;
	padding: 10px;
}

#search {
	padding-top: 0px;
	padding-bottom: 20px;
	width: 40%;
}
</style>
</head>
<body>
	The time on the server is
	<%=new java.util.Date()%>
	<div class="header">
	
		<div class="sub-header link">
			<c:if test="${not empty username}">
			Hello ${username} 🥺
			</c:if>
			<c:if test="${empty username}">
				<a href="login.jsp">Login</a>
			</c:if>
		</div>
		
		<div class="sub-header link">
			<a href="register.jsp">Registration</a>
		</div>
		
		<div class="sub-header" id="search">
		<form action="home">
			<input type="text" name="bookName" value="${param.bookName}">
			<input type="submit" value="Search">
		</form>
		</div>
	</div>
	<hr>
	<div class="body">
		<div class="sub-body-category">
			<ul>
				<c:forEach var="category" items="${categoryList}">
					<a href="home?categoryId=${category.id}">
						<li>${category.name}</li>
					</a>
				</c:forEach>
			</ul>
		</div>
		<div class="sub-body-product">
			
			<c:if test="${empty bookList}">No Book</c:if>

			<c:if test="${not empty bookList}">
				<ul>
					<c:forEach var="book" items="${bookList}">
						<a href="book?bookId=${book.id}">
							<li>${book.name}</li>
						</a>
					</c:forEach>
				</ul>
			</c:if>

		</div>
	</div>
	<hr>
	<div class="footer">THIS IS CODING MENTOR FOR WEBSITE BE4</div>
</body>
</html>