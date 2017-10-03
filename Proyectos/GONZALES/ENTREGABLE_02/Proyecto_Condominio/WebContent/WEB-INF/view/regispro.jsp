<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v3.12.1, mobirise.com">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="assets/images/edificio-1-93x128.png"
	type="image/x-icon">
<meta name="description" content="">


<link rel="stylesheet"
	href="assets/bootstrap-material-design-font/css/material.css">
<link rel="stylesheet" href="assets/tether/tether.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/dropdown/css/style.css">
<link rel="stylesheet" href="assets/animate.css/animate.min.css">
<link rel="stylesheet" href="assets/theme/css/style.css">
<link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css"
	type="text/css">

<style>
.button {
    background-color: 	#CD853F; /* Green */
    color: white;
    padding: 20px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 5px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    border:  white 10px solid
}

</style>

</head>

<div>
    <jsp:include page="menu.jsp"/>
</div>


<section
	class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background mbr-after-navbar"
	id="header2-8"
	style="background-image: url(assets/images/31772545-2000x1500.jpg);">

	<div class="mbr-overlay"
		style="opacity: 0.5; background-color: rgb(0, 0, 0);"></div>

	<div class="mbr-table mbr-table-full">
		<div class="mbr-table-cell">

			<div class="container">
				<div class="mbr-section row">
					<div class="mbr-table-md-up">
						<div
							class="mbr-table-cell col-md-5 content-size text-xs-center text-md-right">

	
	
	
	
	<center><h1 style="color: white;">REGISTRAR PROPIETARIO</h1></center>
  
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

  
  
   