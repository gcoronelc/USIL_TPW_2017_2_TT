<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GENERA CUOTA DE MANTENIMIENTO</title>
</head>
<body>
	<h1>GENERA CUOTA DE MANTENIMIENTO</h1>
	
	<form id="formCriterio">
		<table>
			<tr>
				<td>Año</td>
				<td>Mes</td>
			</tr>
			<tr>
				<td><input type="text" id="anio" name="anio" /></td>
				<td><input type="text" id="mes" name="mes" /></td>
			</tr>
		</table>
	</form>

	<h2>OBLIGACIONES</h2>

	<table 	BORDER="1">
	
		<thead>
			<th>ID</th>
			<th>CODIGO</th>
			<th>DESCRIPCION</th>
			<th>OBLIGACION</th>
			<th>IMPORTE</th>
		</thead>
		
		<tbody>
		</tbody>
		
	</table>

	<br/>
	<input class="egcc_btn_default" type="button" value="Grabar obligaciones" />

</body>
</html>