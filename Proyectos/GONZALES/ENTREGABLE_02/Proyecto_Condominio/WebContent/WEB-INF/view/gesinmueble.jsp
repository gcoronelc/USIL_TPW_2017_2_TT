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

<title>VER INMUEBLES</title>
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





<center>
  <h1 style="color: white">GESTION INMUEBLES</h1>
  
 </center>
 <H3 style="color: white"><P ALIGN=left>PROPIETARIOS.</P></H3>
 
   <table border="0" width="120%" >
      <tr>
    <td width="80px";>
     <table style="border: white 10px solid; width:95%;">
    <tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">COD.</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">NOMBRES</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">APELLIDOS</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">ESTADO</b></td>
       <td style="background-color: #2c3e50; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
      </tr>
      <tr>
    <c:forEach items="${gesinmueble.lista}" var="r">
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>${r.idpro}</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>${r.nombres}</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>${r.apellidos}</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>${r.estado}</b></td>
        <td style="background-color: #EEEADD; height:40; border: white 10px solid;"><b><a href="gesinmueble.htm?idpro=${r.idpro}"style="color: #5769A0">Registrar Inmueble</b></a></td>
        
      </tr>
    </c:forEach>
  </table>
  </td>
  
   <td width="50px">
     <form method="post" action="gesinmueble.htm">
   
     <table style="border: white 10px solid; width:50%;">
    <tr>
        <td colspan="2" style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white"><center>ASIGNAR INMUEBLE</center></b></td>
        
      </tr>
      <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Cod.Pro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="idpro" size="10px"/></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Inmueble:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select name="idinmueble"><option>Oficina001
    <option>Oficina002<option>Departamento001<option>Departamento002<option>Cochera001<option>Cochera002</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Fecha.Registro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text"  name="fecharegistro" size="20px"/></b></td>
    </tr>
   	 <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Grabar" /></center></td>
    </tr>
    
  </table>
  </form>
  </td>
</div></div>
</div></div>
</div></div>
</section>
<input name="animation" type="hidden">
</body>
</html>
