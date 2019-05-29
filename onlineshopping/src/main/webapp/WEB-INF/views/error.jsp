<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="jquery" value="/resources/jquery" />
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>
<script>
	window.menu = '${title}'
	window.contextRoot = '${contextRoot}'
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

<!-- theme css -->
<link href="${css}/bootstrap3.min.css" rel="stylesheet">

<!-- Datatable css -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<style type="text/css">
.body {
	
}

.wrapper {
	height: 100%;
	padding-top: 50px;
}

.content {
	padding-bottom: 60px;
}

.footer {
	
}
</style>

</head>

<body>

	<div class="wrapper">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="${contextRoot}/home">Home</a>
			</div>
		</nav>
	</div>
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
				<div class="jumbotron">
					<h1>${errorTitle}</h1>
					<hr/>
					<blockquote>
					${errorDescription}
					</blockquote>
				</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript -->
	<script src="${jquery}/jquery.min.js"></script>

	<script src="${jquery}/jquery.dataTables.js"></script>

	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- custom js -->
	<script src="${js}/custom.js"></script>

	<!-- Datatable js -->
	<script src="${js}/dataTables.bootstrap.js"></script>

</body>
</html>