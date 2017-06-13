$(document).ready(function() {
	$('#example').DataTable({
		"paging" : false,
		"info" : false,
		"searching":false,
		"scrollY" : "460px",
		"scrollCollapse" : true,
		"searching":false,
		columns : [ {
			title : "ProductId"
		}, {
			title : "ProductNm"
		}, {
			title : "dayFrom"
		}, {
			title : "dayEnd"
		}, {
			title : "price"
		}, {
			title : "customer"
		} ]
	});

})

function doSelect() {
	var url = "doSelect";
	var t = $('#example').dataTable();
	t.fnClearTable();
	t.fnDestroy();

	$.ajax({
		url : url,
		type : "POST",
		success : function(data) {
			var datatable = JSON.parse(data);
			$('#example').DataTable({
				"paging" : false,
				"info" : false,
				"searching":false,
				"scrollY" : "460px",
				"scrollCollapse" : true,
				
				data : datatable,
				columns : [ {
					title : "productId",
					data : 'productId'
				}, {
					title : "productNm",
					data : 'productNm'
				}, {
					title : "dayfrom",
					data : "dayfrom"
				}, {
					title : "dayEnd",
					data : "dayEnd"
				}, {
					title : "price",
					data : "price"
				}, {
					title : "customer",
					data : "customer"
				} ]

			});
		}

	});
	$("#example").css("margin-top", 77);
}

