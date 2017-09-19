<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CARRITO APP</title>
</head>
<body>

  <jsp:include page="cabecera.jsp"/>
  
  <h2>PROCESO PAGAR</h2>
  
  <c:if test="${empty carrito.lista && mensaje == null}">
    <p>No hay nada que pagar.</p>
  </c:if>
  
  <c:if test="${mensaje != null}">
    <p>${mensaje}</p>
  </c:if>
  
  <c:if test="${mensaje == null && not empty carrito.lista}">
  
  <table>
  
    <thead>
    <tr>
      <th>ID</th>
      <th>PRODUCTO</th>
      <th>PRECIO</th>
      <th>CANT</th>
      <th>SUBTOTAL</th>
    </tr>
    </thead>
    
    <tbody>
    <c:forEach items="${carrito.lista}" var="r">
      <tr>
        <td>${r.id}</td>
        <td>${r.producto}</td>
        <td>${r.precio}</td>
        <td>${r.cant}</td>
        <td>${r.subtotal}</td>
      </tr>
    </c:forEach>
    </tbody>
    
    <tfoot>
      <tr style="background-color: gray; color: white;">
        <td colspan="4" style="text-align: right;">Importe</td>
        <td>${carrito.importe}</td>
      </tr>
      <tr style="background-color: gray; color: white;">
        <td colspan="4" style="text-align: right;">Impuesto</td>
        <td>${carrito.impuesto}</td>
      </tr>
      <tr style="background-color: gray; color: white;">
        <td colspan="4" style="text-align: right;">Total</td>
        <td>${carrito.total}</td>
      </tr>  
    </tfoot>
    
  </table>
  
  <h2>Confirmar Compra</h2>
    
  <form method="post" action="pagar.htm">
    <table>
      <tr>
        <td>Nombre completo:</td>
        <td><input type="text" name="nombre" size="50" /></td>
      </tr>
      <tr>
        <td>Correo:</td>
        <td><input type="text" name="email" size="50" /></td>
      </tr>
      <tr>
        <td><input class="botonForm" type="submit" 
              value="Confirmar" /></td>
      </tr>
    </table>
  </form>
  
  </c:if>  
    
</body>
</html>