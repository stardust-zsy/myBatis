<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/resources/js/selectInput.js" />"></script>

<div id="inpu1">
	<label for="1">test1</label>

	<!-- 
	<select id="uiSel">
		<option value="-1"></option>
		<option value="until1">001</option>
		<option value="until2">002</option>
		<option value="until3">003</option>
		<option value="until4">004</option>
		<option value="until5">005</option>
	</select><input type="text" id="text1" />  -->


	<label for="2">test1</label>

	<div id="test1"></div>



	<input type="text" id="2" /> <label for="3">test3</label> <input
		type="text" id="3" /> <label for="4">test4</label> <input type="text"
		id="4" /> <input type="button" onclick="doSelect()" value="select" />
</div>
<div id="inpu1">
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
