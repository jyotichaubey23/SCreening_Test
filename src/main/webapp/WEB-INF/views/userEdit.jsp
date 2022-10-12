<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Details</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form action="${pageContext.request.contextPath}/inact/edit/updatedetails" method="post">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  mx-auto m-4">
					<div class="jumbotron">
						<h1 class="text-center"></h1>
						<br />
						<div class="form-row">
							<input type="hidden" name="id" value=${student.id }>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<br> First name:<br> <input type="text" name="fname"
									value="${student.fname}">
							</div>
							<div class="form-group col-md-6">
								<br> Last name:<br> <input type="text" name="lname"
									value="${student.lname}">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<br> User name:<br> <input type="text" name="username"
									value="${student.username}">
							</div>
							<div class="form-group col-md-6">
								<br> Password:<br> <input type="text" name="password"
									value="${student.password}">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<br> College:<br> <input type="text" name="college"
									value="${student.college}">
							</div>
							<div class="form-group col-md-6">
								<br> Contact No.:<br> 
								<input type="number" name="contact" value="${student.contact}">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<br> Date of birth:<br> <input type="date" name="dob"
									value="${student.dob}">
							</div>
							<div class="form-group col-md-6">
								<br> Email<br> <input type="text" name="emails"
									value="${student.emails}">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="inputState">Please select Module - 1</label> <select
									id="inputState" name="module1" class="form-control">
									<option selected disabled>Select Module - 1</option>
									<option>Aptitude</option>
									<option>Java</option>
									<option>MuleSoft</option>
									<option>Python</option>
									<option>Testing</option>
									<option>Vocal</option>
									<option>C++</option>

								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="inputState">Please select Module - 2</label> 
								<select id="inputState" name="module2" class="form-control">
									<option selected disabled>Select Module - 2</option>
									<option>Aptitude</option>
									<option>Java</option>
									<option>MuleSoft</option>
									<option>Python</option>
									<option>Testing</option>
									<option>Vocal</option>
									<option>C++</option>

								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="inputState">Please select module3</label> <select
									id="inputState" name="module3" required="required"
									class="form-control">
									<option type="selected">Aptitude</option>
									<option>Java</option>
									<option>MuleSoft</option>
									<option>Python</option>
									<option>Testing</option>
									<option>Vocal</option>
									<option>C++</option>

								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputState">Test status</label> 
								<select id="inputState"class="form-control" name="teststatus">
									<option>False</option>
									<option>True</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label for="inputState">Login Enable</label> 
								<select id="inputState" class="form-control" name="loginenabled">
									<option>False</option>
									<option>True</option>
								</select>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-danger ">Update</button>
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