<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/signin.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">

<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>

<script type="text/javascript">
	function doLogin() {

		var url = "${pageContext.request.contextPath}/j_spring_security_check";
		var username = $("input[name='username']").val();
		var password = $("input[name='password']").val();

		$
				.ajax({
					url : url,
					type : "POST",
					data : "username=" + username + "&password=" + password,
					success : function(data) {
						/* 				$("#results").text(data); */
						window.location.href = "${pageContext.request.contextPath}/submit";

					}
				})
	}
</script>

<title>Hello World</title>
</head>
<body>
</head>

<div class="container">

	<form name="loginForm" class="form-signin"
		action="<c:url value='/j_spring_security_check'/>" method="post">
		<h2 class="form-signin-heading">Please sign in</h2>
		<label for="inputUserName" class="sr-only">Username</label> <input
			type="text" id="inputUserName" class="form-control" name="j_username"
			placeholder="User name" required="" autofocus="" /> <label
			for="inputPassword" class="sr-only">Password</label> <input
			type="password" id="inputPassword" class="form-control"
			name="j_password" placeholder="Password" required="">
		<div class="checkbox">
			<label> <input type="checkbox" value="remember-me">
				Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
			in</button>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />


		<c:if test="${not empty param.error}">
			<font color="red"> login fail<br /> <br /> reason: <c:out
					value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />.
			</font>
		</c:if>

		<div id="results"></div>
	</form>

</div>
</body>
</html>