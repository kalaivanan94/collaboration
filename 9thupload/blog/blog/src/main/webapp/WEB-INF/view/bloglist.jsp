<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<style>
.container {
	text-align: left;
	margin-top: 70px;
	margin-left: 200px;
}
</style>
<script>
var c=${pdata};
   //var app=angular.module('pdata',[]);
   angular.module('myapp',[]).controller('Blogcontroller',function($scope)
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
	<!--banner-end-->
	<!--about-starts-->
	<div class="about" ng-app="myapp" ng-controller="Blogcontroller">
		<div class="container" >
			<div class="about-main" ng-repeat="b in aa | filter:test">
				<div class="col-md-8 about-left">
					<div class="about-one">
						<h3>{{b.btitle}}</h3>
					</div>
					<div class="about-two">
						<img src="<c:url value='resources/image/Hdhut.blogspot.com (13).jpg'/>" alt="" height="300px" width="500px"/></a>
						<p>Posted by <a href="#">{{b.bauthor}}</a> {{b.creationDate}} <a href="#">comments(2)</a></p>
						<p>{{b.bcontent}}</p>
						<button class="btn">
							<a href="blogpage?id={{b.blogId}}">Read More</a>
						</button>
<!-- 						<ul> -->
<!-- 							<li><p>Share : </p></li> -->
<!-- 							<li><a href="#"><span class="fb"> </span></a></li> -->
<!-- 							<li><a href="#"><span class="twit"> </span></a></li> -->
<!-- 							<li><a href="#"><span class="pin"> </span></a></li> -->
<!-- 							<li><a href="#"><span class="rss"> </span></a></li> -->
<!-- 							<li><a href="#"><span class="drbl"> </span></a></li> -->
<!-- 						</ul> -->
					</div>		
				</div>
				<div class="clearfix"></div>			
			</div>		
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>