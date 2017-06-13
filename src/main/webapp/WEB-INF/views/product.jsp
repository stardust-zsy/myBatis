<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/js/selectInput.js" />"></script>

<script src="<c:url value="/resources/js/selectPlugin.js" />"></script>

<script>
	$("#test1").selectPlugin('init', "test1", 5, false);
</script>



<div id="inpu1">

	<div id="test1"></div>


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
