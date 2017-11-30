<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AGREGAR PERSONAS</title>


<!-- Materialize CSS -->
<link rel="stylesheet" href="cssa/materialize.min.css">
<link rel="stylesheet" href="css/container.css ">
<style type="text/css">
select {
	background-color: #95A5A6;
}

input {
	color: bla;
}

tr {
	font-size: 15px;
}

button {
	background-color: #154360;
	font-size: 15px;
}
</style>
</head>
<body>
	<script>
		$(function() {
			$('input[name=fecha]').datepicker();
		});
	</script>
	<jsp:include page="main.jsp" />

	<!-- Page content -->
	<section class="ContentPage full-width">
		<!--HighlightTable-->
		<div class="container" style="margin-bottom: 128px;">
			<div class="row">
				<h1 class="center-align">AGREGAR PERSONA</h1>
				<br>
				<div class="col s12">
					<table class="highlight">

						<form method="POST" action='UserController' name="frmAddUser">

							<table class="table table-striped table-bordered responsive">
								<tr>
									<td>ID PERSONA:</td>
									<td><input type="text" readonly="readonly" size="5"
										name="idpersona" value="<c:out value="${user.idpersona}"  />" /></td>
								</tr>
								<tr>
									<td>TIPO DE PERSONA :</td>
									<td><select name="idtpersona" required>
											<option value="<c:out value="${user.idtpersona}"/>">${user.idtpersona}
											<option value="INMUEBLE">INMUEBLE
											<option value="PROPIETARIO">PROPIETARIO
											<option value="DIRECTIVO">DIRECTIVO
											<option value="CONDOMINIO">CONDOMINIO
									</select></td>
								</tr>

								<tr>
									<td>NOMBRE :</td>
									<td><input size="20" type="text" name="nombre" required
										value="<c:out value="${user.nombre}" />" /></td>
								</tr>
								<tr>
									<td>APELLIDO :
									<td><input size="20" type="text" name="apellido" required
										value="<c:out value="${user.apellido}" />" /></td>
								</tr>
								<tr>
									<td>DNI :
									<td><input type="text" name="dni" required
										value="<c:out value="${user.dni}" />" /></td>
								</tr>
								<tr>
									<td>TELEFONO :
									<td><input type="text" name="telefono" required
										value="<c:out value="${user.telefono}" />" /></td>
								</tr>
								<tr>
									<td>DIRECCION :
									<td><input type="text" size="20" name="direccion" required
										value="<c:out value="${user.direccion}" />" /></td>
								</tr>
								<tr>
									<td>EMAIL :
									<td><input type="text" size="20" name="email" required
										value="<c:out value="${user.email}" />" /></td>
								</tr>
								<tr>
									<td colspan="2"><center>
											<br>
											<br>
											<br>
											<button class="btn btn-default" type="submit">GUARDAR</button>
										</center> <br></td>
								</tr>
							</table>
						</form>
					</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>