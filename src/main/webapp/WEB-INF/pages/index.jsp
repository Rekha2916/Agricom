<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
<script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>    
<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
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
								<li class="active"><a class="play-icon popup-with-zoom-anim" href="#small-dialog">Log in</a></li>
								<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Sign up</a></li>	
								</ul>
							</div>
							
<div class="clearfix"> </div>
							
						</div>
				</div>
			<!---pop-up-box---->
					  
					<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
						<div class="login">
							<h3>Log In</h3>
							<h4>Already a Member</h4><br>
							
							<form class="form" method="post" action="LoginFarmer">
								<button type="submit" class="btn btn-primary btn-block">Farmer</button><br>
							</form>
							<form class="form" method="post" action="traderLog">
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
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About Us</a></li>
							
						
							<li><a href="contact.html">Contact</a></li>
							
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
		<div class="banner">
			<div class="container">
				<div class="bnr-text">
					<h1>WE CELEBRATE THE JOY OF AGRICULTURE</h1>
					
				</div>
			</div>
		</div>
		<div class="care">
			<div class="container">
				<div class="care-top">
					<h3>ABOUT US</h3>
					<P>Agricom benefits the farmer to improve their productivity and ensure their continuity of farming</P>
				</div>
				<div class="care-bottom">
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-left">
							<img src="images/tree-2.png" alt="">
							<h4>variations of passages</h4>
							<p> which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
							</div>
					</div>
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-middle">
							<img src="images/tree-1.png" alt="">
							<h4>variations of passages</h4>
							<p> which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
							</div>
					</div>
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-right">
							<img src="images/tree.png" alt="">
							<h4>variations of passages</h4>
							<p> which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
							</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="news">
			<div class="container">
				<div class="news-top">
					<h3>GUIDLINES</h3>
				</div>
				<div class="news-bottom">
					<div class="col-md-6 news-bottom-left">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-2.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>Sed in lacus ut enim adipiscing aliquet</span>
											<button>View full article</button>
										</h2>
									</div>
								</a>
					</div>
					<div class="col-md-6 news-bottom-left">
						<div class="news-btm">
							<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" src="images/apple.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left    b-delay03 ">
											<button>View full article</button>
										</h2>
									</div>
								</a>
						</div>
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" src="images/veg.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left    b-delay03 ">
											<button>View full article</button>
										</h2>
									</div>
								</a>
					</div>
					<div class="clearfix"> </div>
					<div class="news-btm1">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/fd-btm1.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-left   b-delay03 ">
											<span>Sed in lacus ut enim adipiscing aliquet</span>
											<button>View full article</button>
										</h2>
									</div>
								</a>
					</div>
					<div class="fd-btn">
						<a href="blog.html">More</a>
					</div>
				</div>
			</div>
		</div>
		<div class="contact">
			<div class="container">
				<div class="contact-main">
					<div class="col-md-4 contact-left">
						<h4>For Help center contact</h4>
						<p><span>Email:</span><a href="mailto:@example.com">123agro@example.com</a></p>
						<p><span>Phone:</span>+102 0000 0000</p>
					</div>
					<div class="col-md-4 contact-left">
						<h4>Address</h4>
						<p>agr center,georgia capetown Newyork</p>
					</div>
					<div class="col-md-4 contact-left">
						<h4>Follow us</h4>
						<ul>
							<li><a href="#"><span class="fb"> </span></a></li>
							<li><a href="#"><span class="twit"> </span></a></li>
							<li><a href="#"><span class="in"> </span></a></li>
							<li><a href="#"><span class="yt"> </span></a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		
		 <div class="footer">
                         <div class="container">
                                    <div class="footer-text">
										
				    </div>
                         </div>
					<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"></span></a>
     </div>
</body>
</html>