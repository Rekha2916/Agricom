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
<script>
$(document).ready(function(){               
    $("#b").click(function(){
        $(".cont").show();
    });
});
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
								
							</div>
<!--start-top-nav-->
							 <div class="top-nav">
								<ul>
								
	<li class="active"><a class="play-icon popup-with-zoom-anim" href="Logout.jsp" onclick="alert('Are you sure to logout?')">LOGOUT</a></li>									</ul>
							</div>
							
<div class="clearfix"> </div>
							
<div class="clearfix"> </div>
							
						</div>
				</div>
			
					
		<div class="navgation">
					<div class="menu">
                         <a class="toggleMenu" href="#"><img src="images/menu-icon.png" alt="" /> </a>
							<ul class="nav" id="nav">
							
						<li><button id="pr" type="submit" class="btn btn-primary"style="align-items: center" width="50%"><%=session.getAttribute("tuser") %></li>
							
						
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
					
					
		</div>
	</div>
	<div class="cont" style="display: flex;display: none; justify-content: center; align-items: center;width="50%">
	<p> <a href="viewBidSchedule">Crop bidding schedule</a></p>
	<p> <a href="placeBid">Bid for current crop</a></p>
   </div>
	
	
</body>
</html>