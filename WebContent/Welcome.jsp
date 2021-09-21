<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/solar/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>ABCjobs</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans:400,700" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	font-family: "Open Sans", sans-serif;
}
h2 {
	color: #333;
	text-align: center;
	text-transform: uppercase;
	font-family: "Roboto", sans-serif;
	font-weight: bold;
	position: relative;
	margin: 25px 0 50px;
}
h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 3px;
	background: #ffdc12;
	left: 0;
	right: 0;
	bottom: -10px;
}
.carousel {
	width: 650px;
	margin: 0 auto;
	padding-bottom: 50px;
}
.carousel .item {
	color: #999;
	font-size: 14px;
    text-align: center;
	overflow: hidden;
    min-height: 340px;
}
.carousel .item a {
	color: #eb7245;
}
.carousel .img-box {
	width: 145px;
	height: 145px;
	margin: 0 auto;
	border-radius: 50%;
}
.carousel .img-box img {
	width: 100%;
	height: 100%;
	display: block;
	border-radius: 50%;
}
.carousel .testimonial {	
	padding: 30px 0 10px;
}
.carousel .overview {	
	text-align: center;
	padding-bottom: 5px;
}
.carousel .overview b {
	color: #333;
	font-size: 15px;
	text-transform: uppercase;
	display: block;	
	padding-bottom: 5px;
}
.carousel .star-rating i {
	font-size: 18px;
	color: #ffdc12;
}
.carousel .carousel-control {
	width: 30px;
	height: 30px;
	border-radius: 50%;
    background: #999;
    text-shadow: none;
	top: 4px;
}
.carousel-control i {
	font-size: 20px;
	margin-right: 2px;
}
.carousel-control.left {
	left: auto;
	right: 40px;
}
.carousel-control.right i {
	margin-right: -2px;
}
.carousel .carousel-indicators {
	bottom: 15px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 11px;
	height: 11px;
	margin: 1px 5px;
	border-radius: 50%;
}
.carousel-indicators li {	
	background: #e2e2e2;
	border-color: transparent;
}
.carousel-indicators li.active {
	border: none;
	background: #888;		
}
img {
height: 400px;
width: 600px;
float: right;
}
</style>
</head>
<body>
<%@include file="Navbar.jsp" %>


<div class="jumbotron">
    <img alt="Photo" src="https://cdn.cloudberryconsultancy.in/images/job-search.png">

  <h1 class="display-3">Welcome!</h1>
  
  <p class="lead">Your one stop for a bright Future.</p>
  <br><br><br><br><br><br><br><br><br><br>
  <hr class="my-4">
  <p class="lead">
  <h1>Get started with our community and connect with others.</h1>
    <a class="btn btn-primary btn-lg" href="Register.jsp" role="button">Connect</a>
  </p>
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Carousel indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- Wrapper for carousel items -->
	<div class="carousel-inner">		
		<div class="item carousel-item active">
			<div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS2c91N01REamW0eAH33gNXmg8srZqMW_EsCa3Pnwvh7odNDPSk&usqp=CAU" alt=""></div>
			<p class="testimonial">After I lost my job, one of the first things I did was update my ABC profile. I had a recruiter reach out to me and I ended up getting the job.</p>
			<p class="overview"><b>Elena Koshka</b>Seo Analyst at <a href="#">OsCorp Tech.</a></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
			</div>
		</div>
		<div class="item carousel-item">
			<div class="img-box"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-1G6qXCnRH4j9UCSKWCNo_weR7q9WFohSHU4tvZjmSmDrBXl9&usqp=CAU" alt=""></div>
			<p class="testimonial">I was having a very hard time finding a job. A supervisor reached out to me on LinkedIn. We set up an interview and from there I was hired. ABC was the matchmaker.</p>
			<p class="overview"><b>Jaye Summers</b>Media Analyst at <a href="#">SkyNet Inc.</a></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
				</ul>
			</div>
		</div>
		<div class="item carousel-item">
			<div class="img-box"><img src="https://pbs.twimg.com/profile_images/973565919418085377/jYoKTrX7_400x400.jpg" alt=""></div>
			<p class="testimonial">I didn’t think I could make it in the city. I went on ABC and found a lot of jobs - I realized, I am qualified. So, I applied. And I got it!</p>
			<p class="overview"><b>Neymar Jr.</b>Web Developer at <a href="#">Circle Ltd.</a></p>
			<div class="star-rating">
				<ul class="list-inline">
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star"></i></li>
					<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
				</ul>
			</div>
		</div>		
	</div>
	</div>

<br><br><br><br>
<%@include file="Footer.jsp" %>
</body>
</html>