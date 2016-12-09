<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>forum detail</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>


<style>
.container {
	text-align: left;
	margin-top: 70px;
	margin-left: 200px;
}
.textarea{
    overflow: auto;
    padding-right: 12px;
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
	
		<div class="container">
				
						<h4>${forum.question}</h4>				
							<ul class="blog-ic">
								<li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>${forum.author}</span> </a> </li>
		  						 <li><span><i class="glyphicon glyphicon-time"> </i>${forum.creationDate}</span></li>		  						 	
		  						 <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
		  					</ul>		  						
						<p> ${forum.summery}</p>
					
					
					<div class="comments heading">
						<h3>Comments</h3>
						<c:forEach items="${cmts }" var="a">
						<div class="media">
					      	<div class="media-body">
						        <h4 class="media-heading">	${a.userid}</h4>
						        <p>${a.creationDate}</p>
						        <p>${a.ans}</p>
					      	</div>
					      
					 </div>
					    </c:forEach>
    				</div>
    				
    				<div class="comment-bottom heading">
    					<h3>Leave a Comment</h3>
    					<form:form action="./addreply?id=${forum.forumId}"
									commandName="ans" method="post">	
						<form:input type="text" value="Username" path="userid" /><br>
						<form:hidden value="${forum.forumId}" path="forumid" /><br><br>
						<form:textarea placeholder="answer" path="ans"></form:textarea><br><br>
							<button class="btn" type="submit" value="comment">Comment</button>
					</form:form>
    				</div>
				
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>