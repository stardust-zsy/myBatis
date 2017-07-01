<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/js/selectInput.js" />"></script>

<script src="<c:url value="/resources/js/selectPlugin.js" />">
</script>


<script>

var selectFlag = false;

$("#test1").selectPlugin("init", "test1", ${test}, false);
$("#test2").selectPlugin("init", "test2", ${test}, true);

var obj={};

function screenData(){
	
	var a = $("#test1").selectPlugin("getValue","test1");
	var b = $("#test2").selectPlugin("getValue","test2");
	obj.productId = a;
	obj.productNm = b;
	obj.dayfrom = "1";
	obj.dayEnd ="2";
	obj.price = "3";
	obj.customer = "4";
	
	
	
	return obj;
	
};

function doSelect() {
	debugger;
	var url = "doSelect";
/* 	var t = $('#example').dataTable();
	t.fnClearTable();
	t.fnDestroy(); */
	$.ajax({
		url : url,
		type : "POST",
		dataType:"json",
		//contentType: "application/json; charset=utf-8",
		//data:screenData(), error
		success : function(getData) {
			var datatable = JSON.stringify(getData);
			var datatable = getData;
			
			$('#example').DataTable({
				"paging" : false,
				"info" : false,
				"searching":false,
				"scrollY" : "460px",
				"scrollCollapse" : true,
				
				"data" : datatable,
				"columns" : [ {
					title : "check",
					render : function(){
						return "<input type='checkbox' />";
					}
				},{
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
			
			
			
            $('#example tbody').on('click', 'td', function () {
            	var $table = $('#example').DataTable();
                
				var selectedCellRow = $table.row($(this).parent()).index();
	
				if($table.column(this).index()!==0){
					var selectedCellValue = $table.cell($(this)).data();					
					var $div = "<div id ='currentDiv'}></div>";
					
					if(selectFlag!==true){
						$(this).html($div);
						selectFlag= true;
						$("#currentDiv").selectPlugin("init", "currentDiv", ${test}, false);
						$("#currentDiv_input").remove();
						$("#currentDiv").click(function(e){
							return false;
						})
						$("#currentDiv_select").change(function(){
							selectedCellValue =$("#currentDiv_select").val();
							$table.cell($(this).closest("td")).data(selectedCellValue);
							selectFlag = false;
						});
					}
				}
            } );

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
