<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/sb-admin-2.min.css" />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/metisMenu.min.css" />"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resources/css/dataTables.bootstrap.min.css" />"
	rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/list.css" />" rel="stylesheet"
	type="text/css">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/sb-admin-2.min.js" />"></script>
<script src="<c:url value="/resources/js/metisMenu.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>

<script
	src="<c:url value="/resources/js/dataTables.bootstrap.min.js" />"></script>

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


</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">

			<a class="navbar-brand" href="#">test</a>
		</div>

		<%-- 		<form id="logoutForm" action="<c:url value='/loggedout'/>"
			method="POST">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />


			<button type="submit">loggout</button>
		</form> --%> <c:url value="/loggedout" var="logoutUrl" /> <a
			href="${logoutUrl}">退出系统</a>
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a href="#"><i class="fa fa-dashboard fa-fw"></i>
							Dashboard</a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
							menu<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">child one</a></li>
							<li><a href="#">child two</a></li>
						</ul></li>

					<security:authorize ifAnyGranted="ROLE_ADMIN">

						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								two<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">child one</a></li>
								<li><a href="#">child two</a></li>
								<li><a href="#">child three</a></li>
								<li><a href="#">child four</a></li>

							</ul></li>
					</security:authorize>
					<li><a href="#"> one</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<div id="page-wrapper">
			<div id="row">
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
			</div>
		</div>
	</div>
</body>
</html>
