<!DOCTYPE HTML>
<html>
<head>
<title>LOGIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"> </script>
</head>
<body style=" background-image:url(./images/fondo.png)">
	<div class="login">
		<h1><a href="index.html">CONDOSOFT </a></h1>
		<div class="login-bottom">
			<h2>Login</h2>
			<center><p style="">${error}</p></center>
			<form method="post" action="ingresar.htm">
			
			<div class="col-md-6">
			
				<div class="login-mail">
					<input type="text" name="usuario" placeholder="Email" required="">
					<i class="fa fa-envelope"></i>
				</div>
				<div class="login-mail">
					<input type="password" name="clave" placeholder="Password" required="">
					<i class="fa fa-lock"></i>
				</div>
				   <a class="news-letter " href="#">
						 <label class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Recordar Contrase�a</label>
					   </a>

			
			</div>
			<br><br>
			<div class="col-md-6 login-do">
				<label class="hvr-shutter-in-horizontal login-sub">
					<input type="submit" value="iniciar sesi�n">
					</label>
					
			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>
	</div>
		<!---->
<div class="copy-right">
            <p> &copy; 2017 CondoSoft. Todos los derechos reservados | Dise�o de CondoSoft </div>  
<!---->
<!--scrolling js-->
	<script src="./js/jquery.nicescroll.js"></script>
	<script src="./js/scripts.js"></script>
	<!--//scrolling js-->
</body>
</html>