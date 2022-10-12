<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</html>
<head>
<title>Candidates</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/adminHome.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<form>
		<div class="topnav">
			<a class="active float-left" href="https://www.caeliusconsulting.com/"> 
			<img src="<c:url value = "/resources/images/logo.png"/>" alt="Simply Easy Learning" width="150" height="35"></img> </a> 
			<a href="" class="float-right">Profile</a> 
			<a href="${pageContext.request.contextPath}/candidates" class="float-right">Candidates</a> 
			<a href="${pageContext.request.contextPath}/modules" class="float-right">Modules</a>
		</div>

		<div class="sidebar">
				<div class="active" onclick="show('Page1');">
				<a href="${pageContext.request.contextPath}/pendingcand">Pending Candidates</a>
			</div>
			<div onclick="show('Page2');">
				<a href="${pageContext.request.contextPath}/getallcand">Candidate list</a>
			</div>
			<div onclick="show('Page3');">
				<a href="${pageContext.request.contextPath}/loginactive">Active candidates</a>
			</div>
			<div onclick="show('Page4');">
				<a href="${pageContext.request.contextPath}/loginunactive">Inactive candidates</a>
			</div>
		</div>

		<div class="content">
			<div>.</div>
			<br />
			<div id="Page1" class="page" style="">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Highest Qualification</th>
							<th scope="col">Gender</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">College</th>
							<th scope="col">Status</th>
							<th scope="col">Modules</th>
							<th scope="col">Scores</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>@mdo</td>

						</tr>
					</tbody>
				</table>
			</div>
			<div id="Page2" class="page" style="display: none">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Highest Qualification</th>
							<th scope="col">Gender</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">College</th>
							<th scope="col">Status</th>
							<th scope="col">Modules</th>
							<th scope="col">Scores</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>@mdo</td>

						</tr>
					</tbody>
				</table>
			</div>
			<div id="Page3" class="page" style="display: none">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Highest Qualification</th>
							<th scope="col">Gender</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">College</th>
							<th scope="col">Status</th>
							<th scope="col">Modules</th>
							<th scope="col">Scores</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>@mdo</td>

						</tr>
					</tbody>
				</table>
			</div>
			<div id="Page4" class="page" style="display: none">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Highest Qualification</th>
							<th scope="col">Gender</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">College</th>
							<th scope="col">Status</th>
							<th scope="col">Modules</th>
							<th scope="col">Scores</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>@mdo</td>

						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</form>
	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>
	<script type="text/javascript">
	document.writeln("Hello, JavaScript!");
       function show(elementID) {
                
       var ele = document.getElementById(elementID);
       if (!ele) {
           return;
       }
       document.writeln(ele);
             
       var pages = document.getElementsByClassName('page');
                document.write("-----------------------"+pages);
       for(var i = 0; i &lt; pages.length; i++) {
           pages[i].style.display = 'none';
           document.write(pages[i]);
       }
               
       ele.style.display = 'block';
       }
</script>
</body>
</html>