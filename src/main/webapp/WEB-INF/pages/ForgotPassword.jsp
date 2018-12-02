<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
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
<link href="resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<!---pop-up-box---->
<script type="text/javascript"
	src="resources/js/modernizr.custom.min.js"></script>
<link href="resources/css/popup-box.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="resources/js/jquery.magnific-popup.js"
	type="text/javascript"></script>
<!---//pop-up-box---->
<link
	href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body style="background-image: url('resources/images/images.jfif');  background-size:  100%; width: 100%"; height="100%">
	<!--start-header-->
	<div id="home" class="header">
		<div class="top-header">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""></a>
				</div>

			</div>
		</div>
	</div>
	<!--End-header-->
<div class="container-fluid" >
	<div class="container card form_container"	style="display: flex; justify-content: center; align-items: center; ">
		<form class="form" action="forgotProcess" method="post"
			style="padding-top: 40px;">
			<div class="form-row" style="width: 550px">
				<div class="form-group col-md-12">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" name="FEmail"
						placeholder="example@example.com" required>
				</div>
				<div class="form-group col-md-12">
					<label for="inputEmail4">New Password</label> <input type="password"
						class="form-control" name="FPassword"
				 required>
				</div>
				<div class="form-group col-md-12">
					<label for="inputEmail4">Confirm Password</label> <input type="password"
						class="form-control" name="CPassword"
					 required>
				</div>
				

	

			<div class="form-group col-md-12">
				<input type="submit"  value="Submit" class="btn btn-primary"
					style="width: 100%; align-items: center;">
			</div>
			

</div>
	</form>
	</div>
	</div>
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