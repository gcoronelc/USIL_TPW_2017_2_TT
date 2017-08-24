<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Spring Web MVC project</title>
  </head>

  <body>
    <p>CUADRADO</p>
    <form method="post" action="procesar2.htm">
      <label>Número:</label>
      <input type="text" name="num" />
      <input type="submit" value="Procesar" />
    </form>
    <h2>RESULTADO</h2>
    <p>Numero: ${num}</p>
    <p>Cuadrado: ${cua}</p>
  </body>
</html>
