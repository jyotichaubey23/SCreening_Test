<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>User Registration</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form action="${pageContext.request.contextPath}/register" method="post">
		<div class="container register-body">
			<div class="row login">
				<div class="col-md-8  mx-auto m-4">
					<div class="jumbotron">
						<h1 class="text-center">Register</h1>
						<br />
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputFirstName4">First Name</label> 
								<input type="text" class="form-control" name="fname"
									required="required" placeholder="First name"></input>
							</div>
							<div class="form-group col-md-6">
								<label for="inputLastName4">Last Name</label> <input
									type="text" class="form-control" name="lname"
									placeholder="Last name"></input>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail4">Email</label> <input
									type="email" class="form-control" name="emails"
									required="required" placeholder="Email"></input>
							</div>
							<div class="form-group col-md-6">
								<label for="inputPassword4">Contact No.</label> <input
									type="text" class="form-control" name="contact"
									pattern="[0-9]{10}" min="10" maxlength="10"
									required="required" placeholder="contact"></input>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputAddress">Birth Date</label> <input
									type="date" class="form-control" required="required" name="dob"
									placeholder="Date of Birth"></input>
							</div>
							<div class="form-group col-md-6">
								<label for="inputCity">College Name</label> <input 
									type="text" class="form-control" required="required"
									name="college" placeholder="College Name"></input>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="inputState">Highest Qualification</label> <select
									name="course" required="required" class="form-control">
									<option selected disabled>Qualification</option>
									<option>BSC</option>
									<option>Btech</option>
									<option>Mtech</option>
									<option>BCA</option>
									<option>BBA</option>
									<option>MCom</option>
									<option>BCom</option>
									<option>MCA</option>
									<option>MBA</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="inputState">session</label> <select id="year" name="passing_year" class="form-control">
									<option value="">Select Year</option>
									<option selected disabled>Select Year</option>
									<option>2016</option>
									<option>2017</option>
									<option>2018</option>
									<option>2019</option>
									<option>2020</option>
									<option>2021</option>
									<option>2022</option>
									<option>2023</option>
									<option>2024</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="inputAddress2">Gender</label> <select name="gender"
									required="required" class="form-control">
									<option selected disabled>Select Gender</option>
									<option>Female</option>
									<option>Male</option>
									<option>Other</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label class="control-label" for="12th_percentage">Percentage
									in course</label> <input type="number" min="0" max="100"
									required="required" name="courseper" class="form-control"></input>
							</div>
							<div class="form-group col-md-4">
								<label class="control-label" for="12th_percentage">Percentage
									obtained in 12th</label> <input type="number" min="0" max="100"
									name="per12" class="form-control"></input>
							</div>
							<div class="form-group col-md-4">
								<label class="control-label" for="10th_percentage">Percentage
									obtained in 10th</label> <input type="number" min="0" max="100"
									name="per10" class="form-control"></input>
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
	<script type="text/javascript"
		src="<c:url value = " / resources / js / bootstarp.js "/>"> </script>
	<script type="text/javascript"
		src="<c:url value = " / resources / js / jquery.js "/>"> </script>
	<script>
window.submitForm = function(formId) {
    //default form submit
    $('#' + formId).unbind('submit').submit();
}

//for year Dropdown

for (y = 2000; y & lt; = 2500; y++) {
    var optn = document.createElement("OPTION");
    optn.text = y;
    optn.value = y;
    if (y == 2020) {
        optn.selected = true;
    }
    document.getElementById('year').options.add(optn);
}    

//validation for phone number
function phonenumber(inputtxt) {
    var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    if ((inputtxt.value.match(phoneno)) {
            return true;
        } else {
            return false;
        }
    }      
</script>
</body>
</html>