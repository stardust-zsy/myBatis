$(document).ready(function() {
	$('#example').DataTable({
		"paging" : false,
		"info" : false,
		"scrollY" : "460px",
		"scrollCollapse" : true,
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

	show(5, 1);

})

var dataSet = {};
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

function show(max, value) {
	var a = "";

	for (var i = 0; i < max; i++) {
		a = "<option value= " + i + "b" + ">" + i + "</option>" + a;
	}

	$("#test1").append(
			"<select id='uiSel'>" + "<option value=''>" + a + "</select>"
					+ "<input type='text' id='text1_input' /> ");

	$("#uiSel").change(function() {

		$("#text1_input").val(this.value)

	})

	$("#text1_input").focusout(function() {

		var select_length = $("#uiSel option").length;
		
		for (var y = 0; y < select_length; y++) {

			if ($("#uiSel").get(0).options[y].value  == $("#text1_input").val()) {
				$("#uiSel").get(0).options[y].selected = true;
				break;
			} else {
				$("#uiSel").get(0).options[0].selected = true;
			}
		}

	})
}
