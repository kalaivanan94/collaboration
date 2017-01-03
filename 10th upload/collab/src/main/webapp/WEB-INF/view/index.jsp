<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<head>
<title>CHAT WITH FRIENDS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value='resources/js/jquery-1.11.1.min.js'/>" /></script>

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700'
	rel='stylesheet' type='text/css'>
<link href="<c:url value='resources/css/style.css'/>" rel='stylesheet' />
<script type="text/javascript"
	src="<c:url value='resources/js/main.js'/>" /></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body {
	background-image: url("resources/image/Chat.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 650px;
}
</style>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"></a>
			</div>

			<ul class="nav navbar-nav">
				<li><a href="#">COLLABORATION</a></li>
				<li><a href="main"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
				<li><a href="aboutus">ABOUT US</a></li>
				<li><a href="bl">BLOG</a></li>
				<li class="active"><a href="index">CHAT</a></li>
				<li><a href="forum">FORUM</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="memberShip"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
</body>
<body>
	<div class="body_container">

		<div id="header">
			<h2>CHAT</h2>
			<p class='online_count'>
				<b>23</b> people online right now
			</p>
		</div>

		<div id="prompt_name_container" class="box_shadow">
			<p>Enter your name</p>
			<form id="form_submit" method="post">
				<input type="text" id="input_name" /> <input type="submit"
					value="JOIN" id="btn_join">
			</form>
		</div>

		<div id="message_container" class="box_shadow">

			<ul id="messages">
			</ul>


			<div id="input_message_container">
				<form id="form_send_message" method="post" action="#">
					<input type="text" id="input_message"
						placeholder="Type your message here..." /> <input type="submit"
						id="btn_send" onclick="send();" value="Send" />
					<div class="clear"></div>
				</form>
			</div>
			<div>

				<input type="button" onclick="closeSocket();"
					value="Leave Chat Room" id="btn_close" />
			</div>

		</div>

	</div>
	<br>

</body>
</html>
