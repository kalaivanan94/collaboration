<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
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
	background-image:
		url("resources/image/funny-computer-animated-gif-7.gif");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 655px;
}

.center {
	text-align: center;
	margin-top: 70px;
	margin-left: 200px;
}
.well{
	background-color:#85C1E9;
}
.form-control{
    width: 96%;
    height: 34px;
}
.bl{
margin-left: 30px;
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
					<li class="active"><a href="blog">BLOG</a></li>
<!-- 					<li><a href="#">FRIENDS</a></li> -->
<!-- 					<li><a href="#">JOBS</a></li> -->
				

<!-- 			<li><a href="events ">EVENTS</a></li> -->
			<li><a href="forum">FORUM</a></li>
			
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
	</nav>
</body>
<body>
<div class="center">
	
		<div class="container">
<h1 class="col-lg-10 well">BLOG</h1>
			<div class="col-lg-10 well">
				<div class="row">
					<form:form action="./confirmpage" commandName="blo" role="form" class="form-signin" method="post">
					<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label>BLOG TITLE</label>
										<div class="bl"> 
										<form:input path="btitle" type="text" class="form-control" placeholder="Enter Your Title Here.."/>
									</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group">
										<label>BLOG AUTHOR</label>
										<div class="bl"> 
										<form:input path="bauthor" type="text" class="form-control" placeholder="Enter the Author Name Here.."/>
									</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group">
										<label>TAGS</label>
										<div class="bl"> 
										<form:input path="btag" type="text" class="form-control" placeholder="Enter the Tags.."/>
									</div>
									</div>
								</div>
								
					
						<div class="col-sm-12">
							<div class="form-group">
								<label>BLOG CONTENT</label>
								<div class="bl"> 
								<form:textarea path="bcontent" type="text" class="form-control" rows="10" placeholder="Enter the Blog Content Here.." /></textarea>
							</div>
							</div>
						</div>
						</div>
                <button class="btn btn" type="submit">Publish</button>
                </form:form><br>
                <a href="bloglist"><button class="btn btn">CLICK HERE TO SEE BLOG LIST</button></a>
            </div>
            
        </div>
    </div>
</div>
	<%@include file="footer.jsp"%>
</body>
</html>