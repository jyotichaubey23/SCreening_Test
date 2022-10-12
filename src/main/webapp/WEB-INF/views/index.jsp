<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/index.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body style="overflow: hidden;">
	<form action="login" method="post">

		<div class="topnav">
			<a class="active float-left"
				href="https://www.caeliusconsulting.com/"> <img
				src="https://www.caeliusconsulting.com/image/logo.svg" alt="logo"
				width="150" height="35"></img>
			</a> <a href="https://www.caeliusconsulting.com/contact_us"
				class="float-right">Contact Us</a> <a
				href="https://www.caeliusconsulting.com/"
				class="float-right">About</a>

		</div>
		<div
			style="background-image: url('./resources/images/index.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center; padding: 25px; height: 100%;">
			<div class="row no-gutters">
				<div class="col no-gutters">
					<div class="leftside">.</div>
				</div>
				<div class="col no-gutters">
					<div class="rightside">

						<div class="col-md-6 float-right my-5">
							<br /> <br /> <br />
							<div class="jumbotron text-center">
								<h1 class="text-center">User Login</h1>
								<br />
								<div class="form-group">
									<label class="control-label" for="username"></label> <input
										type="text" name="username" class="form-control"
										placeholder="Username" required></input>
								</div>

								<div class="form-group">
									<label class="control-label" for="password"></label> <input
										type="password" name="password" class="form-control"
										placeholder="Password" required></input>
								</div>
								<br />
								<div class="text-center">
									<button type="submit" class="btn btn-danger ">Login</button>
								</div>
								<BR />
<%-- 								<div>
									<a href="${pageContext.request.contextPath}/register" class="text-center">Register
										here</a>
								</div>
 --%>							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>
</body>
</html>