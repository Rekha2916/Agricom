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
<script type="text/javascript">
history.pushState(null, null, location.href);
window.onpopstate = function () {
    history.go(1);
};
</script>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store, must-revalidate"); 
if(session==null)
{
	if(session.getAttribute("user")==null)
	{
		response.sendRedirect("index.jsp");
		
	}
	
}
%>
	<!--start-header-->
			<div id="home" class="header">
					<div class="top-header">
						<div class="container">
							<div class="logo">
								<a href="index.html"><img style="border-radius: 25pt;"src="images/logo.png" alt="" width="40" height="100"></a>  
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
							<form class="form" method="post" action="LoginTrader">
								<button type="submit" class="btn btn-primary btn-block">Trader</button>
							</form>
					<p align="right"><a href="AdminWelcome">Admin</a></p>
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
							<li><a href="#">Home</a></li>
							<li><a href="#about">About Us</a></li>
							
						
							<li><a href="#contact">Contact</a></li>
							
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
		<div  id="about" class="care">
			<div class="container">
				<div class="care-top">
					<h3>ABOUT US</h3>
					<P>Agricom benefits the farmer to improve their productivity and ensure their continuity of farming</P>
				</div>
				<div class="care-bottom">
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-left">
							<img src="images/tree-2.png" alt="">
							<h4 style="color:black;">Department At A Glance</h4>
							<p>Agriculture play a vital role in India’s economy. 54.6% of the population is engaged in agriculture and allied activities (census 2011) and it contributes 17.4% to the country’s Gross Value Added (current price 2014-15, 2011-12 series). Given the importance of agriculture sector, Government of India took several steps for its sustainable development</p>
							</div>
					</div>
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-middle">
							<img src="images/tree-1.png" alt="">
							<h4 style="color:black;">VARIATION OF STRUCTURE</h4>
							<p>In view of the structural change in the economy, there has been a continuous decline in the share of agriculture and allied sector in the GVA from 18.5 per cent in 2011-12 to 17.4 percent in 2014-15 at current prices. A fall in the share of the agriculture and allied sector in GVA is an expected outcome in a fast growing and structurally changing economy.</p>
							</div>
					</div>
					<div class="col-md-4 c-bottom">
						<div class="care-bottom-right">
							<img src="images/tree.png" alt="">
							<h4 style="color:black;">ORGANIZATION SETUP</h4>
							<p >The A&DC is organized into 7 Divisions and has five attached offices and twenty-one subordinate offices which are spread across the country for coordination with state level agencies and implementation of Central Sector Schemes in their respective fields.Further, one Public Sector Undertakings  under the administrative control of the Department.</p>
							</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	
				
				
					
					
					
		<!--contact-starts-->
		<div  id="contact" class="contact">
			<div class="container">
				<div class="contact-top">
		
					<h3>CONTACT US</h3>
					<P>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</P>
				</div>
				<div class="contact-bottom">
					<div class="contact-bottom-top">
						
						<div class="col-md-12 contact-top-left">
							<div class=" col-md-4 contact-top-one">
								<h4>ADDRESS:</h4>
									<h6>Agriculture & Farmers Coorporation
									<span>Mumbai,</span>
										CD-Road,India.
									</h6>
							</div>
							<div class=" col-md-4 contact-top-one">
								<h4>PHONES:</h4>
									<p>Telephone: +1 234 567 9871
									<span>FAX: +1 234 567 9871</span>
									</p>
							</div>
							<div class=" col-md-4 contact-top-one">
								<h4>E-MAIL:</h4>
								<p><a href="#">ADC@agri.co</a></p>
							</div>
						</div>
						<div class=" col-md-12 contact-bottom-bottom">
						
						<div class=" contact-text">
							<input type="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"/>
							<input type="text" value="Second Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Second Name';}"/>
							<input type="text" value="Email Id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Id';}"/>
						</div>
						<div class="contact-textarea">
							<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
						</div>
						<div class="contact-but">
							<input type="submit" value="submit" onclick="alert('Thank you...'')" />
						</div>
					</div>
	
				</div>
			</div>
		</div>
					</div>
					
		<!--contact-end-->
		
		 <div class="footer">
                         <div class="container">
                                    <div class="footer-text">
								<p>Website Content Managed by Department of Agriculture & Farmers  Cooperation </br>
Designed, Developed and Hosted by Agricom Development Center (ADC)
</p>	
				    </div>
                         </div>
					<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"></span></a>
     </div>
</body>
</html>