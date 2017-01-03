<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">

<title>Home</title>

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
	background-image: url("resources/image/Creare-blog-guida.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 655px;
}
.center{
text-align: center;
	margin-top: 70px;
	margin-left: 450px;
	color: white;
	text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
             0px 8px 13px rgba(0,0,0,0.1),
             0px 18px 23px rgba(0,0,0,0.1);
}
</style>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"></a>
		</div>

		<ul class="nav navbar-nav">
		<li><a href="#">COLLABORATION</a></li>
			<li class="active"><a href="main"><span
					class="glyphicon glyphicon-home"></span>HOME</a></li>
			<li><a href="aboutus">ABOUT US</a></li>
			<li><a href="bl">BLOG</a></li>
			<li><a href="index">CHAT</a></li>



			<li><a href="forum">FORUM</a></li>
					
				</ul>
			
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="memberShip"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
	</nav>
	<div class="center">
	<h1>PUBLISH YOUR PASSIONS</h1>
	<h2>Create a Unique and Beautiful Blog</h2>
	</div>
<%@include file="footer.jsp"%>
</body>
</html>