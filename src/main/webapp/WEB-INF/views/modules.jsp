<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Candidates</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/modules.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form action="${pageContext.request.contextPath}/modules" method="post" >
		<div class="topnav">
			<a class="active float-left" href="https://www.caeliusconsulting.com/"> 
			<img src="https://www.caeliusconsulting.com/image/logo.svg" alt="Simply Easy Learning" width="150" height="35"></img>
			</a> 
			<a href="${pageContext.request.contextPath}/profiles" class="float-right">Profile</a> 
			<a href="${pageContext.request.contextPath}/viewemp/1" class="float-right">Candidates</a>
			<a href="${pageContext.request.contextPath}/modules" class="float-right">Modules</a> 
			<a href="${pageContext.request.contextPath}/score" class="float-right">Results</a>
		</div>
		<div class="register-body content p-5">
			<div class="row login">
				<div class="col-md-8  mx-auto m-5 ">

					<div class=" text-center mt-3 "
						style="justify-content: center; justify-items: center;">
						<div class="btn-group" role="group" aria-label="Basic example">
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/javaquestions"
									class="float-right">View Java Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a
									href="${pageContext.request.contextPath}/mulesoftquestions"
									class="float-right">View MuleSoft Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/c++questions"
									class="float-right">View C++ Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a
									href="${pageContext.request.contextPath}/testingquestions"
									class="float-right">View Testing Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/pythonquestions"
									class="float-right">View Python Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/dotnetquestions"
									class="float-right">View DotNet Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/aptitudequestions"
									class="float-right">View Aptitude Questions</a>
							</div>
							<div class="btn btn-danger p-3">
								<a href="${pageContext.request.contextPath}/vocalquestions"
									class="float-right">View Vocal Questions</a>
							</div>
						</div>
					</div>
					<br /> <br />
					<div class="jumbotron ">
						<div style="display: block; margin: 0 auto;">
							<div class="form-row">

								<div class="form-group col-md ">
									<label for="inputEmail4">Select Your module</label> 
									<select id="inputState" name="subject" required="required" class="form-control">
										<option selected disabled>Select Module</option>
										<option>C++</option>
										<option>Python</option>
										<option>DotNet</option>
										<option>Mulesoft</option>
										<option>Java</option>
										<option>Aptitude</option>
										<option>vocal</option>
										<option>testing</option>
									</select>
								</div>

							</div>
						</div>
						<br />
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputFirstName4">Enter your Question Here</label>
								<textarea rows="9" required="required"
									class="form-control" cols="50" name="question"> Add Question here  </textarea>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Option A</label> <input type="text"
									class="form-control" name="option1" required="required"
									id="option_a" placeholder="Option A"></input>
							</div>
							<div class="form-group col-md-6">
								<label for="inputPassword4">Option B</label> <input type="text"
									class="form-control" id="option_b" name="option2"
									required="required" placeholder="Option B"></input>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputAddress">Option C</label> <input type="text"
									class="form-control" required="required" name="option3"
									id="option_c" placeholder="Option C"></input>
							</div>
							<div class="form-group col-md-6">
								<label for="inputCity">Option D</label> <input type="text"
									class="form-control" required="required" name="option4"
									id="option_d" placeholder="Option D"></input>
							</div>
						</div>
						<div class="form-row">

							<div class="form-group col-md-12">
								<label for="inputCity">Correct Option</label> <select
									id="inputState" required="required" name="correct_option"
									class="form-control">
									<option selected disabled>Select Option</option>
									<option>A</option>
									<option>B</option>
									<option>C</option>
									<option>D</option>
								</select>

							</div>
						</div>

						<div class="text-centre p-3 mx-auto">
							<button type="submit" class="btn btn-danger float-left">Submit</button>
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