<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MuleSoftQuestion</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div class="container register-body">
		<div class="row login">
			<div class="col-md-12  mx-auto m-4">
				<div class="jumbotron">

					<h1 class="text-center">MuleSoft Questions</h1>
					<br /> <br />
					<c:forEach items="${results}" var="User">
						<div class="form-row">
							<div class="form-group col-md-12">

								<c:out value="${User.question}" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<c:out value="${User.option1}" />
							</div>
							<div class="form-group col-md-6">
								<c:out value="${User.option2}" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<c:out value="${User.option3}" />
							</div>
							<div class="form-group col-md-6">
								<c:out value="${User.option4}" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								Correct Option:
								<c:out value="${User.correct_option}" />
							</div>
							<br /> <br /> <br /> <br />
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>
</body>
</html>