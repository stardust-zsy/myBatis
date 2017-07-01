<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
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
	
<script
	src="<c:url value="/resources/js/dataTables.bootstrap.min.js" />"></script>
		
	
	
	
	
	
<script type="text/javascript">
	function enter() {
		
		$("#page-wrapper").load("product");
		
		
/* 		var url = "${pageContext.request.contextPath}/doEnter";
		$.ajax({
			url : url,
			type : "POST",
			success : function(data) {
				$("#page-wrapper".load(data);
			}
		}); */
	}
	function enter2() {
		
		$("#page-wrapper").load("timeOut");
		
		

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

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a href="<c:url value='/submit'/>" ><i class="fa fa-dashboard fa-fw"></i>
							Dashboard</a></li>
					<li><a ><i class="fa fa-bar-chart-o fa-fw"></i>
							menu<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a  onclick="enter()">child one</a></li>
							<li><a  onclick="enter2()">child two</a></li>
						</ul></li>

					<security:authorize ifAnyGranted="ROLE_ADMIN">

						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								two<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a >child one</a></li>
								<li><a >child two</a></li>
								<li><a >child three</a></li>
								<li><a >child four</a></li>

							</ul></li>
					</security:authorize>
				</ul>
			</div>
		</div>
		</nav>
		<div class="row">
			<form id="logoutForm" action="<c:url value='/loggedout'/>"
				method="POST">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />


				<button type="submit">loggout</button>
			</form>


			<div id="page-wrapper">
				<!-- /.row -->
			</div>
		</div>
	</div>


</body>
</html>
