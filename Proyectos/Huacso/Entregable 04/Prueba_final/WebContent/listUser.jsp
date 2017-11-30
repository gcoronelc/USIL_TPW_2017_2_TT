<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Tabla de Personas</title>


<!-- Materialize CSS -->
<link rel="stylesheet" href="css/materialize.min.css">
<style type="text/css">
.accion {
	background-color: #DC7633;
	border-bottom: 5px;
	border-radius: 3px;
	font-size: 15px;
}

a {
	color: black;
}
.btn{
background-color: #154360;
width: 20%;
}
</style>
</head>
<body>
	<jsp:include page="main.jsp" />

	<!-- Page content -->
	<section class="ContentPage full-width">
		<!--HighlightTable-->
		<div class="container" style="margin-bottom: 128px;">
			<div class="row">
				<h3 class="center-align">MANTENIMIENTO DE PROPIETARIOS</h3>
				<br>
				<div class="col s12">
					<table class="highlight">
						<thead>
							<tr>
								<th>ID</th>
								<th>TIPO PERSONA</th>
								<th>NOMBRE</th>
								<th>APELLIDOS</th>
								<th>DNI</th>
								<th>TELEFONO</th>
								<th>DIRECCION</th>
								<th>EMAIL</th>
								<th colspan=2>ACCION</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${users}" var="user">
								<tr>
									<td>${user.idpersona}</td>
									<td>${user.idtpersona}</td>
									<td>${user.nombre}</td>
									<td>${user.apellido}</td>
									<td>${user.dni}</td>
									<td>${user.telefono}</td>
									<td>${user.direccion}</td>
									<td>${user.email}</td>
									<td><a class="accion" href="UserController?action=edit&userId=<c:out value="${user.idpersona}"/>">Editar</a>
										<a class="accion"
										href="UserController?action=delete&userId=<c:out value="${user.idpersona}"/>">Eliminar</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br><br>
					<td><a class="btn btn-info"
						href="UserController?action=insert">
							<i class="glyphicon glyphicon-edit icon-white"></i>Agregar
					</a>
				  </td>
			   </div>
			</div>
		</div>
	</section>
</body>
</html>