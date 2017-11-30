<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INICIO DE SESION</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=yes">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="cssc/style1.css">


</head>

<body>

	<div class="cont">
		<img src="img/imag1.jpg" class="fondo">
		<div class="demo">
			<div class="login">
				<img src="img/icon_home.jpg" class="user">

				<div class="login__form">
					<form method="post" action="ingresar.htm">
						<div class="login__row">
							<a class="usericon"><i class="fa fa-user" aria-hidden="true"></i></a>
							<input type="text" name="usuario" class="login__input name"
								placeholder="usuario" />
						</div>
						<div class="login__row">
							<a class="usericon"><i class="fa fa-key" aria-hidden="true"></i></a>
							<input type="password" name="clave" class="login__input pass"
								placeholder="clave" />
						</div>
						<div>
							<button type="submit" class="login__submit">
								INGRESAR<a class="loginicon"><i class="fa fa-sign-in"
									aria-hidden="true"></i></a>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

</body>
</html>
