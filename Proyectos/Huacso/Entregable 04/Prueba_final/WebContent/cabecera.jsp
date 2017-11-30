<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.logo{
	width: 170px;
	height: 102px;
}
.sesion {
	font-size: 15px;
	color: red;
}
</style>
<table style="width: 100%;">
	<tr>
		<td><img class="logo" src='<c:url value="/img/logo5.jpg" />' /><br><a class="sesion" href="salir.htm">CERRAR SESION</a></td>
	</tr>
</table>