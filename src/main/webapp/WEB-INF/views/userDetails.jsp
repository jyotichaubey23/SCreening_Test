<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form action="./allcandidates.jsp" method="post">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  mx-auto m-4">
					<div class="jumbotron">
						<h1 class="text-center"></h1>
						<br />
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="">First Name<span class="text-d"> </span>
								</label>
							</div>
							<div class="form-group col-md-6">
								<label for="">Last Name</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="">Email</label>
							</div>
							<div class="form-group col-md-6">
								<label for="">Contact No.</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="">Modules</label>
							</div>
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">Java
								</label>
							</div>
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">Python
								</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">MuleSoft
								</label>
							</div>
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">Vocal
								</label>
							</div>
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">Testing
								</label>
							</div>

						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">C++
								</label>
							</div>
							<div class="form-group col-md-4">
								<label class="checkbox-inline"> <input type="checkbox"
									value="">Python
								</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="">Highest Qualification</label>
							</div>
							<div class="form-group col-md-4">
								<label for="">session</label>
							</div>
							<div class="form-group col-md-4">
								<label for="">Gender</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4"></div>
							<div class="form-group col-md-4"></div>
							<div class="form-group col-md-4">
								<!-- Material switch -->
								<!-- Material switch -->
								<div class="switch">
									<label> Off <input type="checkbox"> <span
										class="lever"></span> On
									</label>
								</div>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-danger ">Submit</button>
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