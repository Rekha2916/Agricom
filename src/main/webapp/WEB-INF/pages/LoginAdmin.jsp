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
$(".glyphicon-eye-open").on("click", function() {
	$(this).toggleClass("glyphicon-eye-close");
	  var type = $("#password").attr("type");
	if (type == "text"){ 
	  $("#password").prop('type','password');}
	else{ 
	  $("#password").prop('type','text'); }
	});
</script>
<script src="resources/js/jquery-1.11.0.min.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<!---pop-up-box---->
					  <script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>    
					<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
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
								<li class="active"><a  href="AdminWelcome">Home</a></li>
								
								</ul>
							</div>
							
<div class="clearfix"> </div>
							
						</div>
				</div>
			
				
				
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>					
		<!--End-header-->
		

                            <!----start-top-nav-script---->
		                     <script type="text/javascript" src="js/responsive-nav.js"></script>
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
			<form class="form" action="SubmitLoginA" method=post style="padding-top:40px;">
			  <div class="form-row" style="width:550px">
			    <div class="form-group col-md-12">
			      <label for="inputEmail4">Email</label>
			      <input type="email" class="form-control" name="AEmail" placeholder="example@example.com" required>
			    </div>
			    <div class="form-group col-md-12">
			      <label for="inputPassword">Password</label>
			      <input type="password" class="form-control" name="APassword" placeholder="Password" required>
			      
			    </div>
			  </div>
			  <div class=" form-group col-md-12">
			  <button type="submit" class="btn btn-primary">Login</button>
			  </div>
			</form>	
		</div>
</body>
</html>