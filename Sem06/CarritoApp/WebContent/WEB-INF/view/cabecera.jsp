<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" 
href='<c:url value="/css/estilos.css" />'>

<div>
<h1>CARRITO APP</h1>
<p>Carrito Basico</p>
</div>

<div>

  <a class="${cssIndex}" href="index.htm">Inicio</a>
  <a class="${cssAgregar}" href="agregar.htm">Agregar</a>
  <a class="${cssCarrito}" href="carrito.htm">Carrito</a>
  <a class="${cssPagar}" href="pagar.htm">Pagar</a>
  <a class="${cssLimpiar}" href="limpiar.htm">Limpiar</a>
  
</div>