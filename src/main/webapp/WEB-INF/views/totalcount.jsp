<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Are You Sure?</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form action="${pageContext.request.contextPath}/testsubmit" method="post">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  mx-auto m-4">
					<div class="jumbotron">
						<h1 class="text-center">Are you sure you want to submit test?</h1>

						<div class="form-row">
							<input type="hidden" name="id" value=${id }>
						</div>

						<div class="form-row">
							<input type="hidden" name="fname" value=${fname }>
						</div>

						<div class="form-row">
							<input type="hidden" name="lname" value=${lname }>
						</div>

						<div class="form-row">
							<input type="hidden" name="dob" value=${dob }>
						</div>

						<div class="form-row">
							<input type="hidden" name="per10" value=${per10 }>
						</div>

						<div class="form-row">
							<input type="hidden" name="per12" value=${per12 }>
						</div>

						<div class="form-row">
							<input type="hidden" name="course" value=${course }>
						</div>

						<div class="form-row">
							<input type="hidden" name="courseper" value=${courseper }>
						</div>

						<div class="form-row">
							<input type="hidden" name="college" value=${college }>
						</div>

						<div class="form-row">
							<input type="hidden" name="emails" value=${emails }>
						</div>

						<div class="form-row">
							<input type="hidden" name="contact" value=${contact }>
						</div>

						<div class="form-row">
							<input type="hidden" name="loginenabled" value=${loginenabled }>
						</div>

						<div class="form-row">
							<input type="hidden" name="teststatus" value=${teststatus }>
						</div>

						<div class="form-row">
							<input type="hidden" name="username" value=${username }>
						</div>

						<div class="form-row">
							<input type="hidden" name="password" value=${password }>
						</div>

						<div class="form-row">
							<input type="hidden" name="passing_year" value=${passing_year }>
						</div>
						
						<div class="form-row">
							<input type="hidden" name="gender" value=${gender }>
						</div>

						<div class="form-row">
							<input type="hidden" name="module1" value=${module1 }>
						</div>

						<div class="form-row">
							<input type="hidden" name="module2" value=${module2 }>
						</div>

						<div class="form-row">
							<input type="hidden" name="module3" value=${module3 }>
						</div>
						
						<div class="form-row">
							<input type="hidden" name="module1_score" value=${module1_score }>
						</div>
						
						<div class="form-row">
							<input type="hidden" name="module2_score" value=${module2_score }>
						</div>
						
						<div class="form-row">
							<input type="hidden" name="module3_score" value=${module3_score }>
						</div>
						<div class="form-row">
							<input type="hidden" name="scores" value=${scores }>
						</div>
						<div class="form-row">
							<input type="hidden" name="status" value=${status }>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-danger ">Submit
								Test</button>
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