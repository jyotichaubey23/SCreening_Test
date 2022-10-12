<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/index.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>

</head>
<body>
	<form action="#" method="post">
		<div class="topnav">
			<a class="active float-left" href="https://www.caeliusconsulting.com/">
			<img src="https://www.caeliusconsulting.com/image/logo.svg" alt="Simply Easy Learning" width="150" height="35"></img>
			</a> 
			<a href="${pageContext.request.contextPath}/profiles" class="float-right">Profile </a> 
			<a href="${pageContext.request.contextPath}/viewemp/1" class="float-right">Candidates</a> 
			<a href="${pageContext.request.contextPath}/score" class="float-right">Results</a>
		</div>
		<div style="background-image: url('./resources/images/1.gif'); background-repeat: no-repeat; background-size: cover; background-position: center; padding: 25px; height: 100%;">
		
			<div class="content ">
				<div>
				<br>
				<div class="register-body p-4">
					<div class="row login">
						<div class="col-md-10  mx-auto m-5 "><br>
							<h1 class="text-center">Welcome Admin</h1>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</FORM>
	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>
</body>
</html>
