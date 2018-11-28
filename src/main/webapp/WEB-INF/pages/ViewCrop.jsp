<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
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
<script src="js/jquery-1.11.0.min.js"></script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/css.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<style>
table, th, td {
    border: 1px solid black;
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>
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
					  <script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
					<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
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
					     	<li><a href="index.html">Profile</a></li>		
							<li><a href="index.html">Insurance</a></li>
							<li><a href="about.html">Bidding</a></li>	
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
	
<div class="cont" style="display: flex; justify-content: center; align-items: center;width="50%">
		<table style="width:100%">

<!-- 	<table style="display: flex; justify-content: center; align-items: center;" width="100%" height="50%">
 -->  <tr>
    <th>Date</th>
    <th>Crop Type</th> 
    <th>Crop Name</th>
    <th>Quantity</th>
    <th>MSP</th>
    <th>Sold Price</th>
    <th>Total Price</th>
  </tr>
  <c:forEach var="crop" items="${crops}">   
   <tr>

     <td><input type="text" value=${crop.getcId()} name="cId" readonly></td>
 	    <td><input type="text" value=${crop.getcType()} name="cType" readonly></td>
        <td><input type="text" value=${crop.getcName()} name="cName" readonly></td>
        <td><input type="text" value=${crop.getcQuantity()} name="cQuantity" readonly></td>
        <td><input type="text" value=${crop.getcBasePrice()} name="cBasePrice" readonly></td>
        <td><input type="text" value=${crop.getcSellPrice()} name="cSellPrice" readonly></td>

    </tr>
    </c:forEach> 
</table>
</div>
</body>
</html>
