<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="jquery" value="/resources/jquery" />
<spring:url var="images" value="/resources/iamges" />

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
	window.contextRoot='${contextRoot}'
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
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->

		<div class="content">

			<!-- home content -->
			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- about content -->
			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- contact content -->
			<c:if test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- List products and Category products -->
			<c:if test="${userClickAllProducts== true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			<!-- List products and Category products -->
			<c:if test="${userClickShowProduct== true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>

		</div>

		<div class="footer">
			<!-- Footer -->
			<%@include file="./shared/footer.jsp"%>
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