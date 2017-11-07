<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MEJORES CURSOS POR CICLO</title>
</head>
<body>
	<h1>MEJORES CURSOS POR CICLO</h1>
	<hr/>
	<a href="index.htm">Retornar</a>
	<hr />
	<form method="post" action="mejor.htm">
		<label>Periodo:</label> 
		<input type="text" name="periodo" value="${periodo}" />
		<input type="submit" value="Consultar" />
	</form>
	
	<hr />

	<table border="1">
	
    <thead>
      <tr>
        <th>PERIODO</th>
        <th>CICLO</th>
        <th>CURSO</th>
        <th>NOMCURSO</th>
        <th>SECCIONES</th>
        <th>MATRICULADOS</th>
      </tr>
    </thead>	

    <tbody>
    
      <c:forEach items="${lista}" var="r">
      
        <tr>
          <td>${ r.periodo }</td>
          <td>${ r.ciclo }</td>
          <td>${ r.curso }</td>
          <td>${ r.nomcurso }</td>
          <td>${ r.secciones }</td>
          <td>${ r.matriculados }</td>
        </tr>
      
      </c:forEach>
    
    </tbody>
	
	
	</table>
</body>
</html>