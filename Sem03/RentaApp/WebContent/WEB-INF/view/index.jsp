<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RENTA DE MI CURSO</title>
</head>
<body>
  <h1>RENTA DE MI CURSO</h1>
  <form method="post" action="procesar.egcc">
    <fieldset>
      <legend>INPUT</legend>
      <table>
        
        <tr>
          <td>Curso:</td>
          <td><input type="text" name="curso"/></td>
        </tr>
        
        <tr>
          <td>Precio:</td>
          <td><input type="text" name="precio"/></td>
        </tr>
        
        <tr>
          <td>Horas:</td>
          <td><input type="text" name="horas"/></td>
        </tr>
        
        <tr>
          <td>Alumnos:</td>
          <td><input type="text" name="cantAlu"/></td>
        </tr>
        
        <tr>
          <td>Pago X Hora:</td>
          <td><input type="text" name="pagoHora"/></td>
        </tr>
        
        <tr>
          <td>
            <input type="submit" value="Procesar"/>
          </td>
        </tr>

      </table>  
    </fieldset>
  </form>
  
  <div>
    <fieldset>
      <legend>OUTPUT</legend>
      
      <table>
        
        <tr>
          <td>Curso:</td>
          <td>${ bean.curso }</td>
        </tr>
        
        <tr>
          <td>Ingresos:</td>
          <td>${ bean.ingresos }</td>
        </tr>
        
        <tr>
          <td>Pago Profesor:</td>
          <td>${ bean.pagoProfesor }</td>
        </tr>
        
        <tr>
          <td>Gastos:</td>
          <td>${ bean.gastos }</td>
        </tr>
        
        <tr>
          <td>Renta:</td>
          <td>${ bean.renta }</td>
        </tr>
        
      </table>     
    
    </fieldset>
  </div>
  
</body>
</html>