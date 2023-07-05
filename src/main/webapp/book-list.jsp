<%@page import="coding.mentor.entity.Book"%>
<%@page import="coding.mentor.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
			if(request.getParameter("categoryId") != null) {
				//out.println("REQUEST FROM CATEGORY");
			int categoryId = Integer.parseInt(request.getParameter("categoryId"));
			
			BookService service = new BookService();
			// for (Book book : service.getBooksByCategoryId(categoryId)) {
				// out.print("<li>" + book.getName() + "</li>");
			pageContext.setAttribute("bookList", service.getBooksByCategoryId(categoryId));
			}
			
			if(request.getParameter("bookName") != null) {
				//out.println("REQUEST FROM SEARCH");
			String bookName = request.getParameter("bookName");
				
			BookService service = new BookService();
				// for (Book book : service.getBooksByName(bookName)) {
					// out.print("<li>" + book.getName() + "</li>");
			pageContext.setAttribute("bookList", service.getBooksByName(bookName));
			}
			%>


<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
</head>
<body>
	Welcome to Book List
	<hr>
	<ul>
		<c:forEach var="book" items="${bookList}">
			<li>${book.name}- ${book.id} - ${book.categoryId}</li>
		</c:forEach>
	</ul>
</body>
</html>