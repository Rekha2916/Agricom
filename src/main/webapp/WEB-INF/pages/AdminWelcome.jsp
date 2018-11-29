<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<script type="application/x-javascript"> 
		addEventListener("load", function() 
			{ setTimeout(hideURLbar, 0); }, false); 
		function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<script src="resources/js/jquery-1.11.0.min.js"></script>
	<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
	<link href="resources/css/css.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
	<!--start-header-->
	<div id="home" class="header">
		<div class="top-header">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""></a>  
				</div>
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a class="play-icon popup-with-zoom-anim" href="logoutAdmin" onclick="alert('Are you sure to logout?')">LOGOUT</a></li>	
					</ul>
				</div>

				<div class="clearfix"> </div>

			</div>
		</div>
		<div class="navgation">
			<div class="menu">
				<a class="toggleMenu" href="#"><img src="resources/images/menu-icon.png" alt="" /> </a>
				<ul class="nav" id="nav">
					
<li><a href="ViewFarmer"><button id="pr" type="submit" class="btn btn-primary"style="align-items: center" width="50%">View Farmers</button></a></li>
							
							<li><button id="i" type="submit" class="btn btn-primary"style="align-items: center" width="50%">View Traders</a></li>
							<li><button id="b" type="submit" class="btn btn-primary"style="align-items: center" width="50%">View Current Bid</button></li>
								<li><button id="b" type="submit" class="btn btn-primary"style="align-items: center" width="50%">View Crop Request</button></li>
							
				</ul>

				<!----start-top-nav-script---->
				<script type="text/javascript" src="resources/js/responsive-nav.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
				<!----//End-top-nav-script---->
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- <div class="row" style="display: flex; justify-content: center; align-items: center;"> -->
		<div class="banner">
			<div class="container">
				<div class="bnr-text">
					<h1>WE CELEBRATE THE JOY OF AGRICULTURE</h1>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>