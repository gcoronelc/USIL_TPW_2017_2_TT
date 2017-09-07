<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FABRICA</title>
</head>
<body>

  <h1>FABRICA DE SUEÑOS</h1>

  <form method="post" action="procesar.htm">
  
    <table>
    
      <tr>
        <td>Producto:</td>
        <td><input type="text" name="nombre" /></td>
      </tr>
      
      <tr>
        <td>Costo:</td>
        <td><input type="text" name="costoProd" /></td>
      </tr>
      
      <tr>
        <td>Factor Prod.:</td>
        <td><input type="text" name="factProd" /></td>
      </tr>
      
      <tr>
        <td>% Gastos Adm.:</td>
        <td><input type="text" name="porcGastosAdm" /></td>
      </tr>
      
      <tr>
        <td>% Ganancia:</td>
        <td><input type="text" name="porcGanancia" /></td>
      </tr>
    
      <tr>
        <td><input type="submit" value="Procesar" /></td>
      </tr>
    
    </table>
  
  
  </form>

  <h1>REPORTE</h1>
  
  <table>
  
      <tr>
        <th colspan="2">INPUT</th>
      </tr>
      
      <tr>
        <td>Producto:</td>
        <td>${bean.nombre}</td>
      </tr>
      
      <tr>
        <td>Costo:</td>
        <td>${bean.costoProd}</td>
      </tr>
      
      <tr>
        <td>Factor Prod.:</td>
        <td>${bean.factProd}</td>
      </tr>
      
      <tr>
        <td>% Gastos Adm.:</td>
        <td>${bean.porcGastosAdm}</td>
      </tr>
      
      <tr>
        <td>% Ganancia:</td>
        <td>${bean.porcGanancia}</td>
      </tr>
    
      <tr>
        <th colspan="2">OUTPUT</th>
      </tr>
      
      <tr>
        <td>Costo Total de Prod.:</td>
        <td>${bean.costoTotalProd}</td>
      </tr>
      
      <tr>
        <td>Gastos Adm.:</td>
        <td>${bean.gastosAdm}</td>
      </tr>
  
  
  
  
  </table>
  
  


</body>
</html>