$(function() {
	switch (menu) {
	case 'About':
		$('#about').addClass('active');
		break;
	case 'Contact':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		$('#a_' + menu).addClass('active'); 
		break;
	}
});


/*code for jqerydata table*/

var $table =$('#productListTable');

if($table.length){
/*	console.log('Insie the table');
*/

	var jsonurl='';
	if(window.categoryId==''){
		jsonurl =window.contextRoot + '/json/data/all/products';
	}else{
		jsonurl = window.contextRoot + '/json/data/category/'+window.categoryId +'/products';
	}
	
	
	$table.DataTable({
		lengthMenu :[[3,5,10,-1],['3 Records','5 Records','10 Records','All']],
		pagelength:5,
		ajax:{
			url :jsonurl,
			dataSrc:''
		},
		columns:[
			{
				data:'code',
				mRender:function(data,type,row){
					return '<img src="'+window.contextRoot+'/resources/images/'+data+'.png" class="dataTableImages"/>';
				}
			},
			{
				data:'name',
			},
			{
				data:'brand',
			},
			{
				data:'unitPrice',
				mRender:function(data,type,row){
					return '&#8377; ' +data;
				}
			},
			{
				data:'qty',
				mRender(data,type,row){
					if(data <1){
						return '<span style="color:red" ><strong>Out Of Stock</strong></span>';
					}
					return data;
				}
			
			},
			{
				data:'id',
				bSortable:false,
				mRender : function(data,type,row){
					 var str ='';
					 str += '<a href="'+window.contextRoot+'/show/'+data+'/product" class="btn btn-primary">View</span></a> &#160;';
					 
					 if(row.qty <1){
						 str += '<a href="javascript:void(0)" class="btn btn-success disabled">Add to Cart</a>';

					 }else{
						 str += '<a href="'+window.contextRoot+'/cart/add/'+data+'/product" class="btn btn-success">Add to Cart</a>';
					 }
				
					 return str;
				
				}
			}
			
		]
	});

}