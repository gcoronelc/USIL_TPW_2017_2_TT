<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>PROPIE</title>
</head>

<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>REGISTRAR PROPIETARIOS</span>
				</h2>
		    </div>
 <div class="blank"  style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
  
  <center><h4><b><p style="color:#98FB98">${mensaje}</p></b></h4></center>
  
  <form method="post" action="regispro.htm">
  <center>
 <table style="border: white 10px solid; width:50%; height:400; ">
  <tr>
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Nombre:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="nombres" size="30px"/></b></td>
   </tr>
   <tr> 
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Apellidos:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="apellidos" size="30px"/></b></td>
    </tr>
    <tr>
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Fecha de Nacimiento:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="fechanac" /></b></td>
    </tr>
    <tr>
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Telefono:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="telefono" /></b></td>
    </tr>
    <tr>
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Estado Civil:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="estadocivil"size="25px"/></b></td>
    </tr>
    <tr>
    <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Correo:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="correo" /></b></td>
    </tr>
    <tr>
     <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Fecha de Regitro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="fecharegistro" /></b></td>
    </tr>
    <tr>
     <td style="background-color: #34495e;border: white 10px solid;"><b><label style="color: white">Estado:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select name="estado" ><option value="Activo">Activo</select></b></td>
    </tr>
    <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Grabar" /></center></td>
    </tr>
  </table>
  </center>
  </form>







</div></div>
</div></div></div>
</div>
</section>
<input name="animation" type="hidden">
</body>
</html>

  
  
   