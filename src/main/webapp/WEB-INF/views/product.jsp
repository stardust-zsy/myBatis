
<script type="text/javascript">
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
	})
	var dataSet = {};
	function doSelect() {
		var url = "${pageContext.request.contextPath}/doSelect";

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
</script>


				<div id="test1">
					<label for="1">test1</label> <input type="text" id="1" /> <label
						for="2">test2</label> <input type="text" id="2" /> <label for="3">test3</label>
					<input type="text" id="3" /> <label for="4">test4</label> <input
						type="text" id="4" /> <input type="button" onclick="doSelect()"
						value="select" />
				</div>
				<div id="test2">
					<label for="1">test1</label> <input type="text" id="1" /> <label
						for="2">test2</label> <input type="text" id="2" /> <label for="3">test3</label>
					<input type="text" id="3" /> <label for="4">test4</label> <input
						type="text" id="4" />
				</div>

				<!-- /.row -->
				<div id="tableList">
					<table id="example" class="table table-striped table-bordered"
						cellspacing="0" width="100%">

					</table>
					<!-- /.row -->
				</div>
