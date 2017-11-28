<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<title>Mant De Inmueble</title>
</head>
<body>
	<h1>Mantenimiento de Inmueble</h1>
	<div id="divnuevo" class="egcc_panel">
		<h2>Insertar Inmueble</h2>
		<form id="formInsertar">
			<table class="table table-condensed">
				<tr>
					<td>Codigo</td>
					<td><input type="text" name="idinmueble"></td>
				</tr>
				<tr>
					<td>Piso</td>
					<td><input type="text" name="piso"></td>
				</tr>
				<tr>
					<td>numero</td>
					<td><input type="text" name="numero"></td>
				</tr>
				<tr>
					<td>descripcion</td>
					<td><input type="text" name="descripcion"
						style="width: 150px; height: 50px"></td>
				</tr>
				<tr>
					<td>Persona</td>
					<td><input type="text" name="idpersona"></td>
				</tr>
				<tr>
					<td>Tipo de inmueble</td>
					<td><input type="text" name="idtinmueble"></td>
				</tr>
				<tr>
					<td>Torre</td>
					<td><input type="text" name="idtorre"></td>
				</tr>
				<tr>
					<td>Estado</td>
					<td><input type="text" name="activo"></td>
				</tr>
			</table>
			<br>
			 <input id="btnGrabar" type="button" value="Grabar" />
		</form>		
	
	</div>
		<script>
			$("#btnGrabar").click(fnGrabar);
			function fnGrabar() {
				var data = $("#formInsertar").serialize();
				$.post("inmuebleInsertar.htm", data, function(jsonResponse) {
					var mnje = $.parseJSON(jsonResponse);
					alert(mnje.mensaje);
				});
			}
		</script>
</body>
</html>