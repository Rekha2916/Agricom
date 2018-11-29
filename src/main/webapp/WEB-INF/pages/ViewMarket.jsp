<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    --> 
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
<style>
	table { 
  width: 100%; 
  border-collapse: collapse; 
}
/* Zebra striping */
tr:nth-of-type(odd) { 
  background: gray; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
td, th { 
  padding: 10px; 
  border: 1px solid #ccc; 
  text-align: left; 
}

</style>
<!-- <script type="text/javascript">
$(document).ready(function() {
	$('#textbox').click(function() {
		$('#textbox').animate({
		'marginLeft' : "+=400px" //moves right
		});
	});
		});
</script> -->

</head>
<body>
	
	<!--start-header-->
			<div id="home" class="header">
					<div class="top-header">
						<div class="container">
							<div class="logo">
								<a href="index.html"></a>  
							</div>
							<!--start-top-nav-->
							 <div class="top-nav">
								<ul>
								<li class="active"><a class="play-icon popup-with-zoom-anim" href="logout">Logout</a></li>	
								</ul>
							</div>
							
                            <div class="clearfix"> </div>
							
						</div>
				</div>
			
					

                         <a class="toggleMenu" href="#"><img src="resources/images/menu-icon.png" alt="" /> </a>
							<ul class="nav" id="nav">
						
							<li><a href="back"><button id="b" type="submit" class="btn btn-primary"
							style="align-items: center;top: 110%" width="50%">Back</button></a></li>
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
	 <div class="cont" style="display: flex; justify-content: right; align-items: center;width="20%">

		<table  > 
			<!-- <div class="cont" style="display: flex; justify-content: center; align-items: left;width="50%">
					<table class="table" style="width: 200px"> -->
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
   <!--  <div class="table" id="textbox" style="position:absolute;padding:10px;background:white;width:300px;"> -->
 		<td>Sell Price</td>
    <td>	    <input type="text" value=${crop.getcSellPrice()} name="cSellPrice" readonly></input></td>
   	
   </tr>
</c:forEach> 
</table>




</div>
</body>
</html>