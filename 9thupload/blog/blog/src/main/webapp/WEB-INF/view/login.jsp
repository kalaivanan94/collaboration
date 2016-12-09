<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BLOG</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url("resources/image/Creare-blog-guida.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 655px;
}

.center {
	text-align: center;
	margin-top: 50px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"></a>
		</div>

		<ul class="nav navbar-nav">
			<li><a href="main"><span
					class="glyphicon glyphicon-home"></span>HOME</a></li>
					<li><a href="aboutus">ABOUT US</a></li>
<!-- 					<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown" href="#">BLOGS <span class="caret"></span></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="dogs">Dogs and Puppies</a></li> -->
<!-- 					<li><a href="cats">Cats and Kittens</a></li> -->
					
<!-- 				</ul> -->
<!-- 				<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown" href="#">FRIENDS <span class="caret"></span></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="dogs">Dogs and Puppies</a></li> -->
<!-- 					<li><a href="cats">Cats and Kittens</a></li> -->
					
<!-- 				</ul> -->
<!-- 				<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown" href="#">JOBS <span class="caret"></span></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="dogs">Dogs and Puppies</a></li> -->
<!-- 					<li><a href="cats">Cats and Kittens</a></li> -->
					
<!-- 				</ul> -->

<!-- 			<li><a href="events ">EVENTS</a></li> -->
<!-- 			<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown" href="#">CHAT FORUMS <span class="caret"></span></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="dogs">Dogs and Puppies</a></li> -->
<!-- 					<li><a href="cats">Cats and Kittens</a></li> -->
					
				</ul>
			
			
		</ul>

		<div class="container">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="signup"><span
							class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
					<li><form:form action="./loginSubmit" name="submitForm"
							method="POST">
							<input type="text" placeholder="username" name="userName" />
							<input type="password" placeholder="password" name="password" />

							<input type="submit" value="Login" />
							<div style="color: red"></div>
						</form:form></li>


					<br>

					<span class="psw"><a href="forgetpassword">Forget
							password?</span>
					</a>

				</ul>
			</div>
		</div>
	</nav>
	<%@include file="footer.jsp"%>
</body>
</html>