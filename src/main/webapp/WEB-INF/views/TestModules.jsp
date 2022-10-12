<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modules</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/userHome.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div class="container register-body">
		<div class="row login">
			<div class="col-md-8  mx-auto m-5">
				<br /> <br />
				<div class="jumbotron ">
					<div class="text-center">
						<div class="form-row">
							<div class="form-group col-md-4">
								<c:choose>
									<c:when test="${empty module1_score }">
										<div class="btn btn-danger p-3">
											<a href="${pageContext.request.contextPath}/starttest"
												class="text-centre" style="color: white;">Go
													To Module1 </a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="btn btn-secondary p-3">
											<div style="color: white;">Go To Module1</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="form-group col-md-4">
								<c:choose>
									<c:when test="${empty module2_score}">
										<div class="btn btn-danger p-3">
											<a href="${pageContext.request.contextPath}/test2"
												class="text-centre">Go To Module2</a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="btn btn-secondary p-3">
											<div style="color: white;">Go To Module - 2</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="form-group col-md-4">
								<c:choose>
									<c:when test="${empty module3_score}">
										<div class="btn btn-danger p-3">
											<a href="${pageContext.request.contextPath}/test3"
												class="text-centre">Go To Module - 3</a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="btn btn-secondary p-3">
											<div style="color: white;">Go to module - 3</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

					</div>
					<form action="${pageContext.request.contextPath}/testsubmits" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-danger ">Submit
								your test</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>