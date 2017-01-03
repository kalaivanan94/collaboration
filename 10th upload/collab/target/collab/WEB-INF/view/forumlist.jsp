<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>forum list</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.single-top {
	text-align: left;
	margin-top: 70px;
	margin-left: 100px;
}
body {
	background-color:#D0D3D4;
}
</style>


<script>
var c=${pdata};
   //var app=angular.module('pdata',[]);
   angular.module('myapp',[]).controller('Forumcontroller',function($scope)
   {
	 //$http.get("addProduct")
	 //.then(function (response){$scope.names=response.data.records;});
	   $scope.aa=c;
	   
   });
    
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"></a>
		</div>

		<ul class="nav navbar-nav">
		<li><a href="#">COLLABORATION</a></li>
			<li><a href="main"><span
					class="glyphicon glyphicon-home"></span>HOME</a></li>
					<li><a href="aboutus">ABOUT US</a></li>
					<li><a href="bl">BLOG</a></li>
<!-- 					<li><a href="#">FRIENDS</a></li> -->
<!-- 					<li><a href="#">JOBS</a></li> -->
				

<!-- 			<li><a href="events ">EVENTS</a></li> -->
			<li class="active"><a href="forum">FORUM</a></li>
			
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span
					class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
		</ul>
	</div>
	</nav>
</body>
<body>
	<div class="single">
		<div class="container" ng-app="myapp" ng-controller="Forumcontroller">
				<div class="single-top">
					<div class=" single-grid" ng-repeat="b in aa | filter:test">
						<h4><a href="forumpage?id={{b.forumId}}">{{b.question}}</a></h4>				
							<ul class="blog-ic">
								<li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>{{b.author}}</span> </a> </li>
		  						 <li><span><i class="glyphicon glyphicon-time"> </i>{{b.creationDate}}</span></li>		  						 	
		  						 <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
		  					</ul>		  						
						<p>{{b.summery}}</p>
					</div>
					
				</div>	
			</div>					
	</div>
	</body>
	<%@include file="footer.jsp"%>

</html>