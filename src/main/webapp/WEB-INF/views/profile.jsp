<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader ("Expires", 0);
    if(session.getAttribute("loggedInUser")==null){
    response.sendRedirect(request.getContextPath() + "/index");
	}
%>
	<form action="${pageContext.request.contextPath}/logout">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  m-auto m-5">
					<div class="jumbotron">
						<h1 class="text-center"></h1>
						<br />
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>First Name:${fname } </label>
							</div>
							<div class="form-group col-md-6">
								<label>Last Name:${lname} </label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Email:${emails }</label>
							</div>
							<div class="form-group col-md-6">
								<label>Contact No.:${contact }</label>
							</div>
						</div>

						<div class="text-center">
						<button type="submit" class="btn btn-danger ">Logout</button>
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