<div class="container">

	<div class="row">
		<div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home }">Home</a></li>
				<li><a href="${contextRoot}/show/all/products }">Products</a></li>
				<li class="active">${product.name}</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-xs-12">
			<div class="thumbnail">
				<img alt="img" src="${images}/${product.code}.jpg"
					class="img im-responsive">
			</div>
		</div>
		<div class="col-md-8 col-xs-12">
			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h4>
				Price :<strong>&#8377; ${product.unitPrice}</strong>
			</h4>
			<hr />

			<c:choose>
				<c:when test="${product.qty < 1}">
					<h6>
						Qty : <span style="color:red"><strong>Out of Stock !</strong></span>
					</h6>
				</c:when>
				<c:otherwise>
				</c:otherwise>

			</c:choose>



			<c:choose>
				<c:when test="${product.qty < 1}">
					<a href="javascript:void(0)" class="btn btn-primary disabled"><strike>Add
							to Cart</strike></a>
				</c:when>
				<c:otherwise>

					<a href="${contextRoot }/cart/add/${product.id}/product"
						class="btn btn-primary">Add to Cart</a>
				</c:otherwise>

			</c:choose>

			<a href="${contextRoot }/show/all/products/" class="btn btn-warning">Back</a>
		</div>
	</div>
</div>