<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>"
	rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>"
	rel="stylesheet" type="text/css"></link>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("uname") == null) {
		response.sendRedirect(request.getContextPath() + "/adminLogin");
	}
	%>
	<form action="${pageContext.request.contextPath }/adminlogout">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  mx-auto m-5">
					<div class="jumbotron">
						<h1 class="text-center"></h1>
						<br />
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="">Name:Admin </label>
							</div>
							<div class="form-group col-md-6">
								<label for="">Password:Admin123 </label>
							</div>
						</div>
						<div class="text-center">
							<BUTTON type="submit" class="btn btn-danger ">Logout</BUTTON>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>


	<script type="text/javascript"
		src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value = "/resources/js/jquery.js"/>"></script>
</body>
</html>