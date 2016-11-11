<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 101 Template</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body {
	background-image: url("resources/image/back.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 655px;
}
.center{
text-align: left;
	margin-top: 70px;
	margin-left: 700px;
}
</style>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"></a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="main"><span
					class="glyphicon glyphicon-home"></span>HOME</a></li>

			<li><a href="aboutus">ABOUT US</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
	</nav>
	<div class="center">
	<h2>All business enquiries maybe be addressed to <br>
Mr. S.KALAIVANAN,<br>
31, B.N.Road, T.Nagar, Chennai-600017.<br>
Ph: 0-9789037581<br>
E-mail: s.kalaivanan007@gmail.com</h2>
</div>
<%@include file="footer.jsp"%>
</body>
</html>