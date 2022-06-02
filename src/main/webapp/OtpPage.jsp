<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Otp Verify</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
	
	
	<link rel="icon" type="image/x-icon" href="img/favicon.png">
<style>
.height-100 {
	height: 100vh
}

.card {
	width: 400px;
	border: none;
	height: 300px;
	box-shadow: 0px 5px 20px 0px #d2dae3;
	z-index: 1;
	display: flex;
	justify-content: center;
	align-items: center
}

.card h6 {
	color: #f35588;
	font-size: 20px
}

.inputs input {
	width: 40px;
	height: 40px
}

input[type=text] {
	color: #f35588;
	font-size: 20px;
}

.card-2 {
	background-color: #fff;
	padding: 10px;
	width: 350px;
	height: 100px;
	bottom: -50px;
	left: 20px;
	position: absolute;
	border-radius: 5px
}

.card-2 .content {
	margin-top: 50px
}

.card-2 .content a {
	color: #f35588
}

.form-control:focus {
	box-shadow: none;
	border: 2px solid #f35588
}

.validate {
	border-radius: 20px;
	height: 40px;
	background-color: #f35588;
	border: 1px solid #f35588;
	width: 140px
}
</style>
</head>

<body style="background-color: #ffc0cb;">
	<div
		class="container height-100 d-flex justify-content-center align-items-center">
		<div class="position-relative">
			<form action="OtpVerify" class="card p-2 text-center" method="post">
				<h6>
					Please enter the one time password <br> to verify your account
				</h6>

				<div id="otp"
					class="inputs d-flex flex-row justify-content-center mt-2">
					<input class="m-2 text-center form-control rounded" type="text"
						name="first" maxlength="1" /> <input
						class="m-2 text-center form-control rounded" type="text"
						name="second" maxlength="1" /> <input
						class="m-2 text-center form-control rounded" type="text"
						name="third" maxlength="1" /> <input
						class="m-2 text-center form-control rounded" type="text"
						name="fourth" maxlength="1" /> <input
						class="m-2 text-center form-control rounded" type="text"
						name="fifth" maxlength="1" /> <input
						class="m-2 text-center form-control rounded" type="text"
						name="sixth" maxlength="1" />
				</div>
				<div class="mt-4">
					<button class="btn btn-danger px-4 validate">Validate</button>
				</div>
			</form>
		</div>
	</div>
	<script>
		document.addEventListener("DOMContentLoaded", function(event) {

			function OTPInput() {
				const inputs = document.querySelectorAll('#otp > *[id]');
				for (let i = 0; i < inputs.length; i++) {
					inputs[i].addEventListener('keydown',
							function(event) {
								if (event.key === "Backspace") {
									inputs[i].value = '';
									if (i !== 0)
										inputs[i - 1].focus();
								} else {
									if (i === inputs.length - 1
											&& inputs[i].value !== '') {
										return true;
									} else if (event.keyCode > 47
											&& event.keyCode < 58) {
										inputs[i].value = event.key;
										if (i !== inputs.length - 1)
											inputs[i + 1].focus();
										event.preventDefault();
									} else if (event.keyCode > 64
											&& event.keyCode < 91) {
										inputs[i].value = String
												.fromCharCode(event.keyCode);
										if (i !== inputs.length - 1)
											inputs[i + 1].focus();
										event.preventDefault();
									}
								}
							});
				}
			}
			OTPInput();
		});
	</script>
</body>

</html>