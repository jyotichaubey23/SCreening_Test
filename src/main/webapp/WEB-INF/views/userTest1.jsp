<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Module - 1</title>
<link href="<c:url value = "/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value ="/resources/css/register.css"/>" rel="stylesheet" type="text/css"></link>
<link href="<c:url value="/resources/css/UserTest.css"/>" rel="stylesheet" type="text/css"></link>

<style>
#mySidenav {
	padding: 16px;
}
</style>

</head>
<body style="font-family: Poppins-Regular;">

	<!-- to toggle between the questions we have these buttons -->

	<div id="mySidenav" class="sidenav text-center">

		<input type="button" id="0" value="0" onclick="calcValue('zero')">
		<input type="hidden" id="1" value="1" onclick="calcValue('one')">
		<input type="hidden" id="2" value="2" onclick="calcValue('two')">
		<input type="hidden" id="3" value="3" onclick="calcValue('three')">
		<input type="hidden" id="4" value="4" onclick="calcValue('four')">
		<input type="hidden" id="5" value="5" onclick="calcValue('five')">
		<input type="hidden" id="6" value="6" onclick="calcValue('six')">
		<input type="hidden" id="7" value="7" onclick="calcValue('seven')">
		<input type="hidden" id="8" value="8" onclick="calcValue('eight')">
		<input type="hidden" id="9" value="9" onclick="calcValue('nine')">
		<input type="hidden" id="10" value="10" onclick="calcValue('ten')">
		<input type="hidden" id="11" value="11" onclick="calcValue('eleven')">
		<input type="hidden" id="12" value="12" onclick="calcValue('twelve')">
		<input type="hidden" id="13" value="13"
			onclick="calcValue('thirteen')"> <input type="hidden" id="14"
			value="14" onclick="calcValue('fourteen')"> <input
			type="hidden" id="15" value="15" onclick="calcValue('fifteen')">
		<input type="hidden" id="16" value="16" onclick="calcValue('sixteen')">
		<input type="hidden" id="17" value="17"
			onclick="calcValue('seventeen')"> <input type="hidden"
			id="18" value="18" onclick="calcValue('eighteen')"> <input
			type="hidden" id="19" value="19" onclick="calcValue('nineteen')">

	</div>

	<div id="display">
		<div class="container register-body">
			<div class="row login">

				<div class="col-md-12  mx-auto m-5">
					<div class="jumbotron">

						<div class="form-row">
							<div class="form-group col-md-8">
								<h1 class="text-center"
									style="font-family: Poppins-Regular; font-size: 30px; color: #FF0000; line-height: 1.2; text-transform: uppercase; letter-spacing: 2px; text-align: center; width: 100%; display: block;">Module
									1</h1>
							</div>
							<div class="form-group col-md-4">

								<article class="clock" id="model3">
									<!-- timerclock -->
									<h3></h3>

									<div class="count">
										<div id="timer"></div>
									</div>
								</article>

							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<p id="question"></p>
							</div>
						</div>
						<br />
						<div class="form-row">
							<div class="form-group col-md-6">
								<p id="option1" class="d-flex"></p>
							</div>
							<div class="form-group col-md-6">
								<p id="option2" class="d-flex"></p>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<p id="option3" class="d-flex"></p>

							</div>
							<div class="form-group col-md-6">
								<p id="option4" class="d-flex"></p>
							</div>
						</div>

						<!-- 	Video html code -->
						<div class="left">
							<div id="startButton" class="button">
								<video id="preview" width="160" height="120" autoplay muted></video>
							</div>
						</div>


						<!--Previous button pagination code-->
						<div class="text-center">
							<button type="submit" id="previous" class="btn btn-danger"
								onclick="previousQues()">Previous Question</button>
						</div>
						<br>

						<div class="text-center">
							<button type="submit" id="next" class="btn btn-danger"
								onclick="checkAnswer()">Next Question</button>
						</div>
						<br />
						<h2 id="test_status" class="text-center"></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form action="${pageContext.request.contextPath}/testgiven1" method="post">
		<div class="form-row">
			<input type="hidden" name="id" value=${id }>
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
		<div id="test"></div>
		<input type='hidden' id="score" name="module1_score" value='' />
		<!--   <form action='' id='form1' method='POST'  
        onsubmit='javascript:checkAnswer();'> -->
		<div class="text-center">
			<button type="submit" id="submit" class="btn btn-danger">Submit
				Test</button>
		</div>
	</form>

	<script>
	var map = {};
	var indexCorrect = []; //Correct answer score array
	var flagTabClose = false; // Boolean to check if 2nd time tab opened as first time we'll issue a warning 
	var arrSum = 0;
	var pos = 0,
	    previousPos = 0,
	    test, test_status, question, choice, choices, chA, chB, chC, correct = 0;
	var questions = [
	    ["${currentQuestion0.question}", "${currentQuestion0.option1}", "${currentQuestion0.option2}", "${currentQuestion0.option3}", "${currentQuestion0.option4}", "${currentQuestion0.correct_option}"],
	    ["${currentQuestion1.question}", "${currentQuestion1.option1}", "${currentQuestion1.option2}", "${currentQuestion1.option3}", "${currentQuestion1.option4}", "${currentQuestion1.correct_option}"],
	    ["${currentQuestion2.question}", "${currentQuestion2.option1}", "${currentQuestion2.option2}", "${currentQuestion2.option3}", "${currentQuestion2.option4}", "${currentQuestion2.correct_option}"],
	    ["${currentQuestion3.question}", "${currentQuestion3.option1}", "${currentQuestion3.option2}", "${currentQuestion3.option3}", "${currentQuestion3.option4}", "${currentQuestion3.correct_option}"],
	    ["${currentQuestion4.question}", "${currentQuestion4.option1}", "${currentQuestion4.option2}", "${currentQuestion4.option3}", "${currentQuestion4.option4}", "${currentQuestion4.correct_option}"],
	    ["${currentQuestion5.question}", "${currentQuestion5.option1}", "${currentQuestion5.option2}", "${currentQuestion5.option3}", "${currentQuestion5.option4}", "${currentQuestion5.correct_option}"],
	    ["${currentQuestion6.question}", "${currentQuestion6.option1}", "${currentQuestion6.option2}", "${currentQuestion6.option3}", "${currentQuestion6.option4}", "${currentQuestion6.correct_option}"],
	    ["${currentQuestion7.question}", "${currentQuestion7.option1}", "${currentQuestion7.option2}", "${currentQuestion7.option3}", "${currentQuestion7.option4}", "${currentQuestion7.correct_option}"],
	    ["${currentQuestion8.question}", "${currentQuestion8.option1}", "${currentQuestion8.option2}", "${currentQuestion8.option3}", "${currentQuestion8.option4}", "${currentQuestion8.correct_option}"],
	    ["${currentQuestion9.question}", "${currentQuestion9.option1}", "${currentQuestion9.option2}", "${currentQuestion9.option3}", "${currentQuestion9.option4}", "${currentQuestion9.correct_option}"],
	    ["${currentQuestion10.question}", "${currentQuestion10.option1}", "${currentQuestion10.option2}", "${currentQuestion10.option3}", "${currentQuestion10.option4}", "${currentQuestion10.correct_option}"],
	    ["${currentQuestion11.question}", "${currentQuestion11.option1}", "${currentQuestion11.option2}", "${currentQuestion11.option3}", "${currentQuestion11.option4}", "${currentQuestion11.correct_option}"],
	    ["${currentQuestion12.question}", "${currentQuestion12.option1}", "${currentQuestion12.option2}", "${currentQuestion12.option3}", "${currentQuestion12.option4}", "${currentQuestion12.correct_option}"],
	    ["${currentQuestion13.question}", "${currentQuestion13.option1}", "${currentQuestion13.option2}", "${currentQuestion13.option3}", "${currentQuestion13.option4}", "${currentQuestion13.correct_option}"],
	    ["${currentQuestion14.question}", "${currentQuestion14.option1}", "${currentQuestion14.option2}", "${currentQuestion14.option3}", "${currentQuestion14.option4}", "${currentQuestion14.correct_option}"],
	    ["${currentQuestion15.question}", "${currentQuestion15.option1}", "${currentQuestion15.option2}", "${currentQuestion15.option3}", "${currentQuestion15.option4}", "${currentQuestion15.correct_option}"],
	    ["${currentQuestion16.question}", "${currentQuestion16.option1}", "${currentQuestion16.option2}", "${currentQuestion16.option3}", "${currentQuestion16.option4}", "${currentQuestion16.correct_option}"],
	    ["${currentQuestion17.question}", "${currentQuestion17.option1}", "${currentQuestion17.option2}", "${currentQuestion17.option3}", "${currentQuestion17.option4}", "${currentQuestion17.correct_option}"],
	    ["${currentQuestion18.question}", "${currentQuestion18.option1}", "${currentQuestion18.option2}", "${currentQuestion18.option3}", "${currentQuestion18.option4}", "${currentQuestion18.correct_option}"],
	    ["${currentQuestion19.question}", "${currentQuestion19.option1}", "${currentQuestion19.option2}", "${currentQuestion19.option3}", "${currentQuestion19.option4}", "${currentQuestion19.correct_option}"]

	];
	
function _(x) {
    return document.getElementById(x);
}

function renderQuestion() {
    test = _("test");
    if (pos >= questions.length) {
        document.innerHTML = "";
        _("test_status").innerHTML = "<h2>Thankyou, Module 1 is complete</h2>";
        return false;
    }
    _("test_status").innerHTML = "";
    if (map[pos] == 0 || map[pos] == null) {
        question = questions[pos][0];
        chA = questions[pos][1];
        chB = questions[pos][2];
        chC = questions[pos][3];
        chD = questions[pos][4];
        document.getElementById("question").innerHTML = question;
        document.getElementById("option1").innerHTML = "<input type='radio' name='choices' value='A'>" + chA;
        document.getElementById("option2").innerHTML = "<input type='radio' name='choices' value='B'>" + chB;
        document.getElementById("option3").innerHTML = "<input type='radio' name='choices' value='C'>" + chC;
        document.getElementById("option4").innerHTML = "<input type='radio' name='choices' value='D'>" + chD;
    } else if (map[pos] == "A") {
        question = questions[pos][0];
        chA = questions[pos][1];
        chB = questions[pos][2];
        chC = questions[pos][3];
        chD = questions[pos][4];
        document.getElementById("question").innerHTML = question;
        document.getElementById("option1").innerHTML = "<input type='radio' name='choices' value='A' checked='true'>" + chA;
        document.getElementById("option2").innerHTML = "<input type='radio' name='choices' value='B'>" + chB;
        document.getElementById("option3").innerHTML = "<input type='radio' name='choices' value='C'>" + chC;
        document.getElementById("option4").innerHTML = "<input type='radio' name='choices' value='D'>" + chD;

    } else if (map[pos] == "B") {
        question = questions[pos][0];
        chA = questions[pos][1];
        chB = questions[pos][2];
        chC = questions[pos][3];
        chD = questions[pos][4];
        document.getElementById("question").innerHTML = question;
        document.getElementById("option1").innerHTML = "<input type='radio' name='choices' value='A' >" + chA;
        document.getElementById("option2").innerHTML = "<input type='radio' name='choices' value='B' checked='true'>" + chB;
        document.getElementById("option3").innerHTML = "<input type='radio' name='choices' value='C'>" + chC;
        document.getElementById("option4").innerHTML = "<input type='radio' name='choices' value='D'>" + chD;

    } else if (map[pos] == "C") {
        question = questions[pos][0];
        chA = questions[pos][1];
        chB = questions[pos][2];
        chC = questions[pos][3];
        chD = questions[pos][4];
        document.getElementById("question").innerHTML = question;
        document.getElementById("option1").innerHTML = "<input type='radio' name='choices' value='A' >" + chA;
        document.getElementById("option2").innerHTML = "<input type='radio' name='choices' value='B'>" + chB;
        document.getElementById("option3").innerHTML = "<input type='radio' name='choices' value='C' checked='true'>" + chC;
        document.getElementById("option4").innerHTML = "<input type='radio' name='choices' value='D'>" + chD;

    } else if (map[pos] == "D") {
        question = questions[pos][0];
        chA = questions[pos][1];
        chB = questions[pos][2];
        chC = questions[pos][3];
        chD = questions[pos][4];
        document.getElementById("question").innerHTML = question;
        document.getElementById("option1").innerHTML = "<input type='radio' name='choices' value='A'>" + chA;
        document.getElementById("option2").innerHTML = "<input type='radio' name='choices' value='B'>" + chB;
        document.getElementById("option3").innerHTML = "<input type='radio' name='choices' value='C'>" + chC;
        document.getElementById("option4").innerHTML = "<input type='radio' name='choices' value='D' checked='true'>" + chD;

    }
}

//Previous button pagination function            
 function previousQues() {
    choices = document.getElementsByName("choices");
    for (var i = 0; i < choices.length; i++) {
        if (choices[i].checked) {
            choice = choices[i].value;
            map[pos] = choice;
        }
    }
    if (pos != 0 || pos > 0) {
        pos--;
    }
    renderQuestion();
}

//Correct answer score array
 function calculateCorrectScore()
{
	 arrSum=0;
	for(var k = 0; k < indexCorrect.length;  k++)
		{
		arrSum += indexCorrect[k];
}
	correct = arrSum;
}


 function checkAnswer() {
	    choices = document.getElementsByName("choices");
	    for (var i = 0; i < choices.length; i++) {
	        if (choices[i].checked) {
	            choice = choices[i].value;
	            map[pos] = choice; // previous option tracking 
	            document.getElementById(pos).style.backgroundColor = 'green';

	        }
	    }
	    if (map[pos] == questions[pos][5]) {
	        if (indexCorrect[pos] == 0 || indexCorrect[pos] == null) {
	            indexCorrect[pos] = 1;
	        }
	    } else {
	        indexCorrect[pos] = 0;
	    }

	    pos++;
	    renderQuestion();
	    calculateCorrectScore();

	    document.getElementById("score").value = correct;
	    document.getElementById(pos).type = 'button';
	}
	window.addEventListener("load", renderQuestion, false);

	var h3 = document.getElementsByTagName("h3");
	h3[0].innerHTML = "Time Left";

	var sec = 600,
	    countDiv = document.getElementById("timer"),
	    secpass, countDown = setInterval(
	        function() {
	            'use strict';
	            secpass();
	        }, 1000);
	function secpass() {
	    'use strict';
	    var min = Math.floor(sec / 60),
	        remSec = sec % 60;
	    if (remSec < 10) {
	        remSec = '0' + remSec;
	    }
	    if (min < 10) {
	        min = '0' + min;
	    }
	    if (sec == 20) {
	        alert("Hurry up!! Your test is about to end.");
	    }


	    countDiv.innerHTML = min + ":" + remSec;
	    if (sec > 0) {
	        sec = sec - 1;
	    } else {
	        clearInterval(countDown);
	        countDiv.innerHTML = 'countdown done';
	        document.getElementById('submit').click();
	    }
	}
	navigator.mediaDevices.getUserMedia({
	        audio: true
	    })
	    .then(function(stream) {
	        console.log('You let me use your mic!')
	        //alert("If microphone access is not given you'll be logged out");
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
	<script>
    document.addEventListener("visibilitychange", function() {
        document.title = document.visibilityState;
        if (document.visibilityState == "hidden") {
            if (flagTabClose == true) {
                window.location.href = "https://www.caeliusconsulting.com/";
            }
            flagTabClose = true;
            closeCurrentWindow();
        }

    });

function closeCurrentWindow() {
    var version = 0;
    if (navigator.appVersion.indexOf("MSIE") != -1) {
        var temp = navigator.appVersion.split("MSIE");
        version = parseFloat(temp[1]);
    }
    if (version >= 5.5 && version <= 6) {
        this.focus();
        self.opener = this;
        self.close();
    } else {
        window.open('', '_parent', '');
        window.close();
    }

}
//To toggle between the questions a switch case
function calcValue(elem) {
    switch (elem) {
        case "zero":
            pos = 0;
            renderQuestion();
            break;


        case "one":
            pos = 1;
            renderQuestion();
            break;


        case "two":
            pos = 2;
            renderQuestion();
            break;

        case "three":
            pos = 3;
            renderQuestion();
            break;

        case "four":
            pos = 4;
            renderQuestion();
            break;

        case "five":
            pos = 5;
            renderQuestion();
            break;

        case "six":
            pos = 6;
            renderQuestion();
            break;

        case "seven":
            pos = 7;
            renderQuestion();
            break;

        case "eight":
            pos = 8
            renderQuestion();
            break;

        case "nine":
            pos = 9;
            renderQuestion();
            break;

        case "ten":
            pos = 10;
            renderQuestion();
            break;


        case "eleven":
            pos = 11;
            renderQuestion();
            break;


        case "twelve":
            pos = 12;
            renderQuestion();
            break;


        case "thirteen":
            pos = 13;
            renderQuestion();
            break;


        case "fourteen":
            pos = 14;
            renderQuestion();
            break;


        case "fifteen":
            pos = 15;
            renderQuestion();
            break;


        case "sixteen":
            pos = 16;
            renderQuestion();
            break;


        case "seventeen":
            pos = 17;
            renderQuestion();
            break;


        case "eighteen":
            pos = 18;
            renderQuestion();
            break;


        case "nineteen":
            pos = 19;
            renderQuestion();
            break;
    }
} </script>
	<script type="text/javascript"
		src="<c:url value = "/resources/js/bootstarp.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value = "/resources/js/jquery.js"/>"></script>

</body>
</html>