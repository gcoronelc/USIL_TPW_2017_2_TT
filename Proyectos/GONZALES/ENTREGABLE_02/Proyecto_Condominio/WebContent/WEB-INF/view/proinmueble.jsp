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





  <h1 style="color: white" align="center">LISTA DE INMUEBLES</h1>

 
 <div style="margin:auto;text-align:center;">
 
<table border="1" style="margin:auto;display:inline;">
<tr>
<td colspan="5" align="center" style="background-color: #A2DA99; height:40; border: white 10px solid;"><h3 style="color: WHITE"><b>DISPONIBLES</b></h3></td>
</tr> 
<tr>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">INMUEBLE</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FEC.REGISTRO</td>
       <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">ESTADO</td>
       
      </tr>
       <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Depar001</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>08-01-2017</b></td>
        <td style="background-color: #B9EEB1; height:40; border: white 10px solid;"><b style="color: WHITE">Disponible</b></td>
        
      </tr>
 
</table>
<table border="1" style="display:inline;">
<tr>
<td colspan="5" align="center" style="background-color: #95AAD0; height:40; border: white 10px solid;"><h3 style="color: WHITE"><b>OCUPADOS</b></h3></td>
</tr>
<tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">PROPIETARIO.</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">INMUEBLE</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FEC.REGISTRO</td>
       <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">ESTADO</td>
        
       <td style="background-color: #2c3e50; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
      </tr>
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>c001</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Depar002</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>08-01-2017</b></td>
        <td style="background-color: #F2968A; height:40; border: white 10px solid;"><b style="color: WHITE">OCUPADO</b></td>
        <td style="background-color: #95AAD0; height:40; border: white 10px solid;"><b><a href="proinmieble.htm?id=c001"style="color: #5769A0">DESOCUPAR	</b></a></td>
        
      </tr>
</table>
</div> 
</div>
</div>
</div></div>
</div></div>
</section>


<input name="animation" type="hidden">
</body>
</html>
