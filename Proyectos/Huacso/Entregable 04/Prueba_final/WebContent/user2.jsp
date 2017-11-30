<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>REGISTRAR INMUEBLES</title>


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
				<h1 class="center-align">REGISTRAR INMUEBLES</h1>
				<br>
				<div class="col s12">
					<table class="highlight">
					
							<form method="POST" action='UserController2' name="frmAddUser">

								<table class="table table-striped table-bordered responsive">
									<tr>
										<td>ID INMUEBLE :</td>
										<td><input type="text" size="5" readonly="readonly"
											name="idinmueble"
											value="<c:out value="${user.idinmueble}"  />" /></td>
									</tr>
									<tr>
										<td>PROPIETARIO:</td>
										<td><select name="idpersona">
												<option value="<c:out value="${user.idpersona}" />">${user.idpersona}
												<option value="CONDOMINIO">CONDOMINIO
												<option value="GUSTAVO"> GUSTAVO
												<option value="CLAUDIA">CLAUDIA
												<option value="EDISON">EDISON
										</select> <br /></td>
									</tr>
									<tr>
										<td>PISO :</td>
										<td><select name="piso">
												<option value="<c:out value="${user.piso}" />">${user.piso}
												<option value="PISO 1">PISO 1
												<option value="PISO 2">PISO 2
												<option value="PISO 3">PISO 3
												<option value="PISO 4">PISO 4
												<option value="PISO 5">PISO 5
										</select> <br /></td>
									</tr>
									<tr>
										<td>DESCRIPCION :</td>
										<td><input type="text" size="30" name="descripcion"
											value="<c:out value="${user.descripcion}" />" /> <br /></td>
									</tr>
									<tr>
										<td>TIPO DE INMUEBLE :
										<td><select name="idtinmueble">
												<option value="<c:out value="${user.idtinmueble}"/>">${user.idtinmueble}
												<option value="CONDOMINIO">CONDOMINIO
												<option value="DEPARTAMENTO">DEPARTAMENTO
												<option value="OFICINA">OFICINA
												<option value="COCHERA">COCHERA
												<option value="AUDITORIO">AUDITORIO
										</select> <br /></td>
									</tr>

									<tr>
										<td>TORRE :
										<td><select name="idtorre">
												<option value="<c:out value="${user.idtorre}"/>">
													${user.idtorre}
												<option value="TORRE A">TORRE A
												<option value="TORRE B">TORRE B
												<option value="TORRE C">TORRE C
												<option value="TORRE VIRTUAL">TORRE VIRTUAL
										</select> <br /></td>
									</tr>
									<tr>
										<td colspan="2"><center><br><br><br> 
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