<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VER CARRITO</title>
</head>
<body>

  <jsp:include page="cabecera.jsp"/>
  
  <h2>Ver Carrito</h2>
  
  <table>
  
    <tr>
      <th>ID</th>
      <th>PRODUCTO</th>
      <th>PRECIO</th>
      <th>CANT</th>
      <th>SUBTOTAL</th>
      <th>ACCION</th>
    </tr>
    
    <c:forEach items="${carrito.lista}" var="r">
      <tr>
        <td>${r.id}</td>
        <td>${r.producto}</td>
        <td>${r.precio}</td>
        <td>${r.cant}</td>
        <td>${r.subtotal}</td>
        <td><a href="eliminar.htm?id=${r.id}">Eliminar</a></td>
      </tr>
    </c:forEach>
    
  
  </table>
  
  <br/>
  <table>
    
    <tr>
      <td>Importe</td>
      <td>${carrito.importe}</td>
    </tr>
    
    <tr>
      <td>Impuesto</td>
      <td>${carrito.impuesto}</td>
    </tr>
    
    <tr>
      <td>Total</td>
      <td>${carrito.total}</td>
    </tr>
  
  </table>
  
  
</body>
</html>