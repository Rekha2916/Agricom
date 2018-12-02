<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>PLACE BID</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link href="css/popup-box.css" rel="stylesheet" type="text/css"
	media="all" />
</head>
<style>
h4 {
	position: absolute;
	left: 314px;
	top: 64px;
}
</style>
<script type="text/javascript">
	function validate() {

		var baseprice = document.getElementById("cBasePrice").value;
		var sellprice = document.getElementById("cSellPrice").value;
		var bidamount = document.getElementById("bidAmount").value;
		if (bidamount < sellprice || bidamount<baseprice) {
			alert("Please enter Bid Amount greater than base price and selling price");

			return false;

		} 
		return true;
	}
	/* function start(){
		setInterval(function(){
			var cID=document.getElementById("cID");
			//var obj=JSON.stringify({cID:cID});
			var url='/getBidDeet/${cID}';
			$.ajax({
				url:url,
				method: 'POST',
				cache: false,
				async: true,
				data: obj,
				dataType: 'text',
				contentType: 'application/json; charset=utf-8',
				success: display(this)
			});
		},1000);
		}
		function display(){
			var nsell=document.getElementById("cSellPrice").value;
			alert(nsell);
		} */
	/* $(document).ready(function retreiveSellPrice(){
		var cID=document.getElementById("cID");
		$.ajax({
			url: 'http://localhost:8182/Agricom/getBidDetails/'+cID,
			success: function(data){
				console.log("abc");
				('#display').text(data);
			},
			complete: function(){
				setTimeout(retreiveSellPrice(), 5000);
			}
		});
	}); */
</script>
<body>
	<!--start-header-->
	<% response.setIntHeader("Refresh", 10); %>
	<div id="home" class="header">
		<div class="top-header">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""></a>
				</div>
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a class="play-icon popup-with-zoom-anim"
							href="#small-dialog">Logout</a></li>
					</ul>
				</div>

				<div class="clearfix"></div>

			</div>
		</div>
		<!---pop-up-box---->
		<script type="text/javascript" src="js/modernizr.custom.min.js"></script>
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<!---//pop-up-box---->
		<div id="small-dialog" class="mfp-hide">
			<div class="login">
				<h3>Log In</h3>
				<h4>Already a Member</h4>
				<input type="text" value="Email" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Email';}" /> <input
					type="password" value="Password" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Password';}" /> <input
					type="submit" value="Login" />
			</div>
		</div>

		<div class="navgation">
			<div class="menu">
				<a class="toggleMenu" href="#"><img src="images/menu-icon.png"
					alt="" /> </a>
				<ul class="nav" id="nav">
					<li><a href="index.html">Profile</a></li>
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

			<div class="clearfix"></div>
		</div>
	</div>

	<div class="list"
		style="display: flex; justify-content: left; align-items: left;width=50%">
		<form name="DispForm" action="submitBid">
			<!-- onsubmit="return validate()" >-->
			<table class="table" style="table-layout: fixed; width: 200px">
				<tr>
					<td>Crop Type</td>
					<td><input type="text" value=${crop.getcType() } name="cType"
						readonly></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" value=${crop.getcID() }
						name="cID" readonly></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" value=${tID }
						name="tID" readonly></td>
				</tr>
				<tr>
					<td>Crop Name</td>
					<td><input type="text" value=${crop.getcName() } name="cName"
						readonly></td>
				</tr>
				<tr>
					<td>Quantity</td>
					<td><input type="text" value=${crop.getcQuantity()
								}
						name="cQuantity" readonly></td>
				</tr>
				<tr>
					<td>Base Price</td>
					<td><input type="text" value=${crop.getcBasePrice()
								}
						name="cBasePrice" readonly></td>
				</tr>
				<tr>
					<td>Sell Price</td>
					<td><input type="text" 
						name="cSellPrice"  value=${crop.cSellPrice } id="display" readonly></td>
				</tr>
				<tr>
					<td>Bid Amount</td>
					<td><input type="number" name="bidAmount" required></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-primary"
						style="align-items: center" value="Place Bid"></td>
				</tr>
			</table>
		</form>
		<div class="unit">
			<h4>in Quintals</h4>
		</div>
		<!-- <form action="submitBid">

						<button type="submit" class="btn btn-primary"
						style="align-items: center">Place Bid</button>

					</form> -->
	</div>
</body>
</html>