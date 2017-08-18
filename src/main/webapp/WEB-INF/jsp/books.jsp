<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <!--
          href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
            -->
    <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />

    <c:url value="/css/main.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet"/>
-->


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</head>

<body>
<nav class="navbar navbar-default">


    <a class="btn btn-primary" href="/books" role="button">Main Page</a>
    <a class="btn btn-primary" href="/books/create" role="button">Create a Book</a>


  </div>
</nav>
<div class="container">
<h2> List of all books</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>#</th>
			<th>Book Title</th>
			<th>Book Author</th>
			<th>ISBN number</th>
			<th>Book Category</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="book" items="${books}">
		<tr>
		    <td> <c:out value="${book.id}"/></td>
			<td> <c:out value="${book.title}"/></td>
			<td> <c:out value="${book.author}"/></td>
			<td> <c:out value="${book.isbn}"/></td>
			<td> <c:out value="${book.bookCategory}"/></td>
			</c:forEach>
		</tr>
	</tbody>
</table>




</div>
<!-- /.container -->

<script type="text/javascript"
        src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
