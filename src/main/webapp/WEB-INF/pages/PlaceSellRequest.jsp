<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>AGRICOM</title>
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
								<li class="active"><a class="play-icon popup-with-zoom-anim" href="#small-dialog">Logout</a></li>
								</ul>
							</div>
							
<div class="clearfix"> </div>
							
						</div>
				</div>
			<!---pop-up-box---->
					  <script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>    
					<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
						<div class="login">
							<h3>Log In</h3>
							<h4>Already a Member</h4>
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />
							<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"/>
							<input type="submit" value="Login" />
						</div>
					</div>
					
		<div class="navgation">
					<div class="menu">
                         <a class="toggleMenu" href="#"><img src="images/menu-icon.png" alt="" /> </a>
							<ul class="nav" id="nav">
							<li><button id="pr" type="submit" class="btn btn-primary"style="align-items: center" width="50%">Profile</li>
							<li><button id="i" type="submit" class="btn btn-primary"style="align-items: center" width="50%">Insurance</a></li>
							
						
							<li><button id="b" type="submit" class="btn btn-primary"style="align-items: center" width="50%">Bidding</button></li>
							
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

 <div class="container card form_container" style="display: flex; justify-content: center; align-items: center;">
			<form class="form" action="SubmitCropRequest" method=post style="padding-top:40px;">
			  <div class="form-row" style="width:550px">
				<h4>Enter Details</h4>
			  	<div class="form-group col-md-12">
			    	<br><label for="inputCropType">Crop Type</label>
			    	<input type="text" class="form-control" name="cType" placeholder="Enter type of crop" required>
			  	</div>
			    <div class="form-group col-md-12">
			    	<br><label for="inputCropName">Crop Name</label>
			    	<input type="text" class="form-control" name="cName" placeholder="Enter name of crop" required>
			  	</div>	  	
			  		<div class="form-group col-md-12">
			    	<br><label for="iputFertilizerType">Fertilizer Type</label>
			    	<input type="text" class="form-control" name="cFertilizerType" placeholder="Enter type of fertilizer" required>
			  	</div>
			  		<div class="form-group col-md-12">
			    	<br><label for="inputQuantity">Quantity</label>
			    	<input type="number" class="form-control" name="cQuantity" placeholder="Enter quantity" pattern= "[0-9]" required>
			  	</div>
			  		</div>
			  		<div class="form-group col-md-12">
			    	<br><label for="inputQuantity">Base Price</label>
			    	<input type="number" class="form-control" name="cBasePrice" placeholder="Enter base Price" pattern= "[0-9]" required>
			  	</div>
			  	
			  	 <button type="submit" class="btn btn-primary" style="align-items: center" width="50%"  onclick="alert('Request has been send succesfully.s')">Place Request</button>
</body>
</html>