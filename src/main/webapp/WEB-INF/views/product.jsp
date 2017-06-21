<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/js/selectInput.js" />"></script>

<script src="<c:url value="/resources/js/selectPlugin.js" />">

        
	$("#test1").selectPlugin("init", "test1", "${test}", false);

</script>


<script>

$("#test1").selectPlugin("init", "test1", ${test}, false);
$("#test2").selectPlugin("init", "test2", ${test}, true);

var obj={};

function screenData(){
	
	var a = $("#test1").selectPlugin("getValue","test1");
	var b = $("#test2").selectPlugin("getValue","test2");
	obj.productId = JSON.stringify(a);
	obj.productNm = JSON.stringify(b);
	obj.dayfrom = "1";
	obj.dayEnd ="2";
	obj.price = "3";
	obj.customer = "4";
	
	
	
	return obj;
	
};

function doSelect() {
	debugger;
	var url = "doSelect";
	var t = $('#example').dataTable();
	t.fnClearTable();
	t.fnDestroy();
	screenData();
	$.ajax({
		url : url,
		type : "POST",
		dataType:"json",
		//data:{"test": JSON.stringify(obj)},
		//contentType: "application/json; charset=utf-8",
		//data:obj,
		//data:JSON.stringify(obj),
		success : function(getData) {
			var datatable = JSON.parse(getData);
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




</script>

<div id="inpu1">

	<div id="test1"></div>
	<div id="test2"></div>

	<input type="button" onclick="doSelect()" value="select" />
</div>
<div id="inpu1"></div>

<!-- /.row -->
<div id="tableList">
	<table id="example" class="table table-striped table-bordered"
		cellspacing="0" width="100%">

	</table>
	<!-- /.row -->
</div>
