<div class="container">
	<div class="row">
		<div class="col-md-3">
			<%@include file="slidebar.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts==true}">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
								<li class="class="breadcrumb-item active">All Products</li>
							</ol>
						</nav>
					</c:if>
					
					<c:if test="${userClickCategoryProducts==true}">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
								<li class="class="breadcrumb-item">Category</li>
								<li class="breadcrumb-item">${category.name}</li>
							</ol>
						</nav>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>

