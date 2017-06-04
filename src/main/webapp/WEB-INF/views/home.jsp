<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/sb-admin-2.min.js" />"></script>
<script src="<c:url value="/resources/js/metisMenu.min.js" />"></script>


</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">

			<a class="navbar-brand" href="#">test</a>
		</div>

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

					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
							two<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">child one</a></li>
							<li><a href="#">child two</a></li>
							<li><a href="#">child three</a></li>
							<li><a href="#">child four</a></li>

						</ul></li>

					<li><a href="#"> one</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<div id="page-wrapper">

			<!-- /.row -->
			<div class="row">
	product

			</div>
			<!-- /.row -->
		</div>

	</div>

	<%-- 	<c:forEach items="${users}" var="users">
		<tr>
			<td>userName</td>
			<td>${users.userName}</td>
			<td>age</td>
			<td>${users.age}</td>
		</tr>
	</c:forEach> --%>

</body>
</html>
