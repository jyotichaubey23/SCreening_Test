<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<link href="<c:url value = "resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "resources/css/userHome.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "resources/css/header.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value = "resources/css/index.css"/>" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("loggedInUser") == null) {
		response.sendRedirect(request.getContextPath() + "/index");

	}
	%>
	<form action="starttest">
	<div class="p-3"
			style="background-image: url('');background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		padding: 25px;
		height: 100%;">
			<div class="col-md-10 mx-auto m-4 ">
				<br /> <br />
				<h1 class="text-center">Instructions</h1>
				<br />
				<div class="form-row">
					<div class="form-group col-md-6">
						<p>1. Please make your web-cam is on</p>
						<p>2. You have 1 hour to complete this test</p>
						<p>3. Please make your web-cam is on</p>
						<p>4. You have 1 hour to complete this test</p>
						<p>5. No negative marking</p>
						<p>6. Don't open another tabs on your screen your test may be
							cancelled</p>
						<p>7. Please make your web-cam is on</p>
						<p>8. You have 1 hour to complete this test</p>
					</div>
					
					<div class="form-group col-md-6">
						<!-- to play HR ma'am message -->
						<iframe width="500" height="350" class="active float-right"
							src="https://www.youtube.com/embed/Si8b7oNl6rs?autoplay=1&mute=1">
						</iframe>
					</div>
				</div>
				
				<!-- 	Video html code -->
				<div class="left">
					<div id="startButton" class="button">
						<video id="preview" width="160" height="120" autoplay muted></video>
					</div>
				</div>
				<div class="text-center col-md-3 mx-auto">
					<button type="submit" class="btn btn-danger ">Start Test</button>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
		<script type="text/javascript" src="<c:url value = "/resources/js/jquery.js"/>"></script>

		<script>
    navigator.mediaDevices.getUserMedia({
        audio: true
    })
    .then(function(stream) {
        console.log('You let me use your mic!')
    })
    .catch(function(err) {
        console.log('No mic for you!')
    });

let preview = document.getElementById("preview");

navigator.mediaDevices.getUserMedia({
        video: true,
        audio: false
    }).then(stream => {
        preview.srcObject = stream;
        preview.captureStream = preview.captureStream || preview.mozCaptureStream;
        return new Promise(resolve => preview.onplaying = resolve);
    })
    .catch(log);
</script>
	</form>
</body>
</html>