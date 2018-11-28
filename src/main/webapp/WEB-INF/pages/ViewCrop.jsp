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
<script src="resources/js/jquery-1.11.0.min.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="resources/css/css.css" rel='stylesheet' type='text/css' />
<link href="resources/css/agri.css" rel='stylesheet' type='text/css' />

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
								
							</div>
<!--start-top-nav-->
							 <div class="top-nav">
								<ul>
								
								<li class="active"><a class="play-icon popup-with-zoom-anim" href="logout" onclick="alert('Are you sure to logout?')">LOGOUT</a></li>	
								</ul>
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
