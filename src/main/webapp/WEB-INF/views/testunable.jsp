<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Inactive Candidates</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/adminHome.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<%@ include file="adminHeader.jsp"%>

	<div class="content">
		<div>.</div>
		<br /> <br />

		<div class=" text-center mt-3 "
			style="justify-content: center; justify-items: center;">
			<div class="btn-group " role="group" aria-label="Basic example">

				<div class="btn btn-danger p-3">
					<a href="${pageContext.request.contextPath}/viewemp/1"
						class="float-right" style="color: white;">Candidate
							List</a>
				</div>
				<div class="btn btn-danger p-3">
					<a href="${pageContext.request.contextPath}/inact/1"
						class="float-right" style="color: white;">Pending
							Candidates</a>
				</div>
				<div class="btn btn-danger p-3">
					<a href="${pageContext.request.contextPath}/enable/1"
						class="float-right" style="color: white;">Test
							Active Candidates</a>
				</div>
				<div class="btn btn-danger p-3">
					<a href="${pageContext.request.contextPath}/unable/1"
						class="float-right" style="color: white;">Test
							Inactive Candidates </a>
				</div>
			</div>
		</div>
		<br /> <br />
		<table class="table">
			<thead>
				<tr>
					<th scope="col">User ID:</th>
					<th scope="col">User Username:</th>
					<th scope="col">User Password:</th>
					<th scope="col">User TestStatus:</th>
					<th scope="col">User LoginEnabled:</th>
					<th scope="col">User FirstName:</th>
					<th scope="col">User LastName:</th>
					<th scope="col">User DateOfBirth:</th>
					<th scope="col">User Email:</th>
					<th scope="col">User Contact:</th>
					<th scope="col">User College:</th>
					<th scope="col">User Course:</th>
					<th scope="col">User CoursePercentage:</th>
					<th scope="col">User 10Percentage:</th>
					<th scope="col">User 12Percentage:</th>
					<th scope="col">User PassingYear:</th>
					<th scope="col">User Gender:</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${msg}" var="User">
					<tr onmouseover="ChangeColor(this, true);"
						onmouseout="ChangeColor(this, false);" onclick="">
						<td><c:out value="${User.id}" /></td>
						<td><c:out value="${User.username}" /></td>
						<td><c:out value="${User.password}" /></td>
						<td><c:out value="${User.teststatus}" /></td>
						<td><c:out value="${User.loginenabled}" /></td>
						<td><c:out value="${User.fname}" /></td>
						<td><c:out value="${User.lname}" /></td>
						<td><c:out value="${User.dob}" /></td>
						<td><c:out value="${User.emails}" /></td>
						<td><c:out value="${User.contact}" /></td>
						<td><c:out value="${User.college}" /></td>
						<td><c:out value="${User.course}" /></td>
						<td><c:out value="${User.courseper}" /></td>
						<td><c:out value="${User.per10}" /></td>
						<td><c:out value="${User.per12}" /></td>
						<td><c:out value="${User.passing_year}" /></td>
						<td><c:out value="${User.gender}" /></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

	</div>
	<script type="text/javascript"
		src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value = "/resources/js/jquery.js"/>"></script>
	<script type="text/javascript">
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
	</script>
	<c:forEach items="${count}" var="page">
		<c:forEach begin="1" end="${page/5}" var="i">
			<a href="/screening_test/unable/${i}"><c:out value="${i}" />&nbsp;</a>
		</c:forEach>
	</c:forEach>
	<p>Page 4</p>
</body>
</html>