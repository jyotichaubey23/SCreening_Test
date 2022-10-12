<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserHeader</title>
<meta charset="utf-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "/resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>

	<div class="topnav">
		<a class="active float-left" href="https://www.caeliusconsulting.com/">
			<img src="https://www.caeliusconsulting.com/image/logo.svg"
			alt="Simply Easy Learning" width="150" height="35"></img>
		</a> 
		<a href="${pageContext.request.contextPath}/profiles" class="float-right">Profile </a> 
		<a href="${pageContext.request.contextPath}/viewemp/1" class="float-right">Candidates</a> 
		<a href="${pageContext.request.contextPath}/modules" class="float-right">Modules</a>
		<a href="${pageContext.request.contextPath}/score" class="float-right">Results</a>
	</div>

	<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>

</body>
</html>
