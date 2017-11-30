<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="stylesheet" href="css/estilologin.css" />

</head>
<body>
	
	
    <form method="post" action="ingresar.htm">
         <h2>Inicio de Sesion</h2>  
        <input type="text" name="usuario" placeholder="ingrese su usuario">
        <input type="password" name="clave" placeholder="ingrese su clave">
        <input type="submit" name="Ingresar" value="enviar">
        
    </form>
</body>
</html>