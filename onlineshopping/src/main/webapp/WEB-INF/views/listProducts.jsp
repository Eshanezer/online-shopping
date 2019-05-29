<div class="container">
	<div class="row">
		<div class="col-md-3">
			<%@include file="slidebar.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts==true}">

						<script>
							window.categoryId = ''
						</script>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
								<li class="class="breadcrumb-itemactive">All Products</li>
							</ol>
						</nav>
					</c:if>

					<c:if test="${userClickCategoryProducts==true}">
						<script>
							window.categoryId = '${category.id}'
						</script>
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

			<div class="row">

				<div class="col-md-12">
					<table id="productListTable"
						class="table table-striped table-borderd">
						<thead>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty Available</th>
								<th></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty Available</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>

