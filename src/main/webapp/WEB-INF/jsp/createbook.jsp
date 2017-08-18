<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

<!--external css file source -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">


    <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
    <c:url value="/css/main.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet"/>
	 -->

    <!--external js file source -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</head>
<body>
<div>
<nav class="navbar navbar-default">


    <a class="btn btn-primary" href="/books" role="button">Main Page</a>
    <a class="btn btn-primary" href="/books/create" role="button">Create a Book</a>


  </nav>
  </div>

<div class="container form-group">
<h2>Create the book</h2>

<form action="/books/created" method="post" accept-charset="utf-8" >
	<label class="form-control-label"> Write Title:</label>
	<input id="title" type="text" name="title" class="form-control">
	<label class="form-control-label"> Write Author:</label>
	<input id="author" type="text" class="form-control", name="author">
	<label class="form-control-label"> Write ISBN number:</label>
	<input id="isbn" type="text", class="form-control", name="isbn">
	<label class="form-control-label"> Write book category: </label>
	<input id="bookCategory" type="text", class="form-control", name="bookCategory">
	<br>
	<input type="submit" value="Add Book" class="btn btn-primary">

</form>

</div>
<!-- /.container -->

<script type="text/javascript"
        src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
