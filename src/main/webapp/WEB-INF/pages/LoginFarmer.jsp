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
      <script type="text/javascript">
                 function Captcha(){
                     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
                     var i;
                     for (i=0;i<6;i++){
                       var a = alpha[Math.floor(Math.random() * alpha.length)];
                       var b = alpha[Math.floor(Math.random() * alpha.length)];
                       var c = alpha[Math.floor(Math.random() * alpha.length)];
                       var d = alpha[Math.floor(Math.random() * alpha.length)];
                       var e = alpha[Math.floor(Math.random() * alpha.length)];
                       var f = alpha[Math.floor(Math.random() * alpha.length)];
                       var g = alpha[Math.floor(Math.random() * alpha.length)];
                      }
                    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
                    document.getElementById("mainCaptcha").value = code
                  }
                  function ValidCaptcha(){
                      var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
                      var string2 = removeSpaces(document.getElementById('txtInput').value);
                      if (string1!=string2){
                    	  return "Invalid Captcha"";
                        
                      }
                              
                        
                     
                  }
                  function removeSpaces(string){
                    return string.split(' ').join('');
                  }
             </script> 
</head>
<body onload="Captcha();">
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
								<li class="active"><a class="play-icon popup-with-zoom-anim" href="#small-dialog">Log in</a></li>
								<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Sign up</a></li>	
								</ul>
							</div>
							
<div class="clearfix"> </div>
							
						</div>
				</div>
			
				<div id="small-dialog" class="mfp-hide">
						<div class="login">
							<h3>Log In</h3>
							<h4>Already a Member</h4>
							<form class="form" method="post" action="LoginFarmer">
								<button type="submit" class="btn btn-primary btn-block">Farmer</button><br>
							</form>
							<form class="form" method="post" action="LoginTrader">
								<button type="submit" class="btn btn-primary btn-block">Trader</button>
							</form>
						</div>
					</div>
					<div id="small-dialog1" class="mfp-hide">
						<div class="signup">
							<h3>Sign Up</h3>
						
							<form class="form" method="post" action="SignupFarmer">
								<button type="submit" class="btn btn-primary btn-block">Farmer</button><br>
							</form>
							<form class="form" method="post" action="SignupTrader">
								<button type="submit" class="btn btn-primary btn-block">Trader</button>
							</form>
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
		<div class="navgation">
					<div class="menu">
                         <a class="toggleMenu" href="#"><img src="images/menu-icon.png" alt="" /> </a>
							<ul class="nav" id="nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="index.jsp">About Us</a></li>
							
						
							<li><a href="index.jsp">Contact</a></li>
							
							</ul>

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
		<div class="container card form_container" style="display: flex; justify-content: center; align-items: center;background-image: url('resources/images/images.jfif');background-size:  100%; width: 100%">
			<form class="form" action="SubmitLoginF" method=post style="padding-top:40px;">
			  <div class="form-row" style="width:550px">
			    <div class="form-group col-md-12">
			      <label for="inputEmail4">Email</label>
			      <input type="email" class="form-control" name="FEmail" placeholder="example@example.com" required>
			    </div>
			    <div class="form-group col-md-12">
			      <label for="inputPassword">Password</label>
			      <input type="password" class="form-control" name="FPassword" placeholder="Password" required>
			       
			       <div>
			      <p align="right"><a href="forgotPswd">Forgot Password?</a></p></div>
			      </div>
			       <div class="form-group col-md-12 ">
			      <label for="capcha">Captcha</label>
			      <span class="form-group-addon"><i class="glyphicon glyphicon-refresh" onclick="Captcha();"></i></span>
			     <input type="text" style="color: red" class="form-control" id="mainCaptcha" name="capcha" required>
			      
			       
			       </div>
			       <div class="form-group col-md-12">
			     
			      <input type="text" id="textInput" class="form-control" placeholder="Enter Capcha Here" required>
			       </div>
			       </div>
			       
			    
			  
			 
			     <div class="form-group col-md-12">
			  <button type="submit" class="btn btn-primary" style="width: 100%; align-items: center;" onclick="ValidCaptcha();">Login</button></div>
			  
			   <div class="form-group col-md-12">
			    <div class="form-check">
			      <p >Not a user? <a class="login_ref" href="RegisterF" id="checkuser">Sign in</a></p>
			      
			      
			    </div>
			  </div>
			  
			</form>	
		
		</div>
		
</body>
</html>