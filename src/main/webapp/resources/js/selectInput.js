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



