<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<title>VIEW MARKETPLACE</title>
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
<link href="resources/css/agri.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>

<script type="text/javascript">
$(document).ready(function() {
	$('#textbox').click(function() {
		$('#textbox').animate({
		'marginLeft' : "+=400px" //moves right
		});
	});
		});
</script>
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
					  <script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>    
					<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
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
							<li><button id="pr" type="submit" class="btn btn-primary"style="align-items: center" width="50%"><%=session.getAttribute("user") %></li>
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
	<div class="cont" style="display: flex; justify-content: left; align-items: left;width="50%">
<form>
    <table class="list" style= "table-layout: fixed; width: 200px">
    	 <c:forEach var="crop" items="${view}"> 
    <tr><td>Crop Type </td>
        <td><input type="text" value=${crop.getcType()} name="cType" readonly></td>
    </tr>
     <tr><td>Crop Name </td>
        <td><input type="text" value=${crop.getcName()} name="cName" readonly></td>
    </tr>
     <tr><td>Base Price </td>
        <td><input type="text" value=${crop.getcBasePrice()} name="cBasePrice" readonly></td>
    </tr>
    <tr>
    
 		<td>Sell Price </td>
    	    <td><input type="text" value=${crop.getcSellPrice()} name="cSellPrice" readonly></input></td>
   	    

    </tr>
</c:forEach> 
</table>
</form>
</div>

<!--    	<div style="padding:20px;">   <button id="moveright">Move right</button> </div>
 -->

  <!--  	<div style="padding:20px;"> <button id="moveleft">Move Left</button>  <button id="moveright">Move right</button> <button id="movedown">Move Down</button> <button id="moveup">Move Up</button></div>
<div id="textbox" style="position:absolute;padding:10px;background:#FFFFCC;width:300px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec tincidunt purus. Donec eleifend libero in orci mattis pulvinar. Ut et felis eu leo malesuada eleifend. Ut sit amet odio eu ipsum rutrum consequat. Aliquam congue ultricies sagittis.</div>
 --></body>
</html>