<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

    <link rel="stylesheet" type="text/css"
          href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
    <c:url value="/css/main.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet"/>

</head>
<body>

<h1>Library</h1>
<h2>listing all books </h2>
<div class="container">
<form action="/books/created" method="post" accept-charset="utf-8" >
	<p>Input Title</p>
	<input type="text", name="title", class="input-lg">
	<p>Input author</p>
	<input type="text" class="input-lg", name="author">
	<p>Input ISBN number</p>
	<input type="text", class="input-lg", name="isbn">
	<p>Input Book Category</p>
	<input type="text", class="input-lg", name="bookCategory">
	<p>
	<input type="submit" value="Add Book" class="btn">

</form>

<a href="/books" >List of All books</a>
</div>
<!-- /.container -->

<script type="text/javascript"
        src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
