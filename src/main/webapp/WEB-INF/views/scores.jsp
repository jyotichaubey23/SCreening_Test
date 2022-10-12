<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidates Scores</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/adminHome.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
#myInput {
	margin-left: "16px";
}
</style>
</head>
<body>
	<%@ include file="adminHeader.jsp"%>
	<div class="content">
		<div>.</div>
		<br /> <br />

		<!-- To add search functionality -->
		<input id="myInput" type="text" placeholder="Search.."> <br>
		<br>
		<table class="table" id="myTable">
			<thead>
				<tr>
					<th scope="col">User ID:</th>
					<th scope="col">User Username:</th>
					<th scope="col">User Password:</th>
					<th scope="col">User TestStatus:</th>
					<th scope="col">User LoginEnabled:</th>
					<th scope="col">User FirstName:</th>
					<th scope="col">User LastName:</th>
					<th scope="col">User Email:</th>
					<th scope="col">User Contact:</th>
					<th scope="col">User Module1:</th>
					<th scope="col">User Module2:</th>
					<th scope="col">User Module3:</th>
					<th scope="col">User Module1 Score:</th>
					<th scope="col">User Module2 Score:</th>
					<th scope="col">User Module3 Score:</th>
					<th scope="col">Total Score:</th>
					<th scope="col">Status:</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${scores}" var="User">
					<tr onmouseover="ChangeColor(this, true);"
						onmouseout="ChangeColor(this, false);" onclick="">
						<td><c:out value="${User.id}" /></td>
						<td><c:out value="${User.username}" /></td>
						<td><c:out value="${User.password}" /></td>
						<td><c:out value="${User.teststatus}" /></td>
						<td><c:out value="${User.loginenabled}" /></td>
						<td><c:out value="${User.fname}" /></td>
						<td><c:out value="${User.lname}" /></td>
						<td><c:out value="${User.emails}" /></td>
						<td><c:out value="${User.contact}" /></td>
						<td><c:out value="${User.module1}" /></td>
						<td><c:out value="${User.module2}" /></td>
						<td><c:out value="${User.module3}" /></td>
						<td><c:out value="${User.module1_score}" /></td>
						<td><c:out value="${User.module2_score}" /></td>
						<td><c:out value="${User.module3_score}" /></td>
						<td><c:out value="${User.scores}" /></td>
						<td><c:out value="${User.status}" /></td>


					</tr>

				</c:forEach>
			</tbody>
		</table>

	</div>
	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>
	<script>
		function Details(theUrl) {
			document.location.href = theUrl;
		}
		function ChangeColor(tableRow, highLight) {
			if (highLight) {
				tableRow.style.backgroundColor = '#dcfac9';
			} else {
				tableRow.style.backgroundColor = 'white';
			}
		}
		
		//To add search functionality
		$(document).ready(function(){
			  $("#myInput").on("keyup", function() {
			    var value = $(this).val().toLowerCase();
			    $("#myTable tr").filter(function() {
			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			    });
			  });
			});
</script>

</body>
</html>