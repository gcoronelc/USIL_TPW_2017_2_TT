<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RESUMEN DE CURSOS POR CICLO</title>
</head>
<body>
	<h1>RESUMEN DE CURSOS POR CICLO</h1>
	<hr/>
	<a href="index.htm">Retornar</a>
	<hr />
	<form method="post" action="resumen.htm">
		<label>Ciclo:</label> 
		<select name="ciclo">
		  <option value="0000">Seleccione</option>
		  
		  <c:forEach items="${ciclos}" var="r">
		    <option value="${r}">${r}</option>
		  </c:forEach>
		  
		</select>
		<input type="submit" value="Consultar" />
	</form>
	
	<hr />

	<table border="1">
	
    <thead>
      <tr>
        <th>CICLO</th>
        <th>CURSO</th>
        <th>SECCIONES</th>
        <th>MATRICULADOS</th>
        <th>INGRESOS</th>
        <th>PROFESOR</th>
        <th>UTILIDAD</th>
      </tr>
    </thead>	
    
    <tbody>
    
      <c:forEach items="${lista}" var="r">
      
        <tr>
          <td>${ r.ciclo }</td>
          <td>${ r.curso }</td>
          <td>${ r.secciones }</td>
          <td>${ r.matriculados }</td>
          <td>${ r.ingresos }</td>
          <td>${ r.pagoprof }</td>
          <td>${ r.utilidad }</td>
        </tr>
      
      </c:forEach>
    
    </tbody>
	
	
	</table>
</body>
</html>