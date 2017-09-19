<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AGREGAR ITEM</title>
</head>
<body>

  <jsp:include page="cabecera.jsp"/>
  
  
  <h2>AGREGAR ITEM</h2>
  
  <p>Mensaje: ${mensaje}</p>
  
  <form method="post" action="agregar.htm">
  
    <label>Producto:</label>
    <input type="text" name="producto" /><br/>
    
    <label>Precio:</label>
    <input type="text" name="precio" /><br/>
    
    <label>Cantidad:</label>
    <input type="text" name="cant" /><br/>
  
    <input class="botonForm" type="submit" value="Grabar" />
  
  </form>

</body>
</html>