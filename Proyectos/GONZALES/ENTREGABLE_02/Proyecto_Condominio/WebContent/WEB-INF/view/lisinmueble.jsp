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
    background-color: 	#A6B7ED; /* Green */
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
  <h1 style="color: white">REGISTRAR INMUEBLES</h1>
  
 </center>
 <H3 style="color: white"><P ALIGN=RIGHT>INMUEBLES.</P></H3>
 
   <table border="0" width="100%" >
      <tr>
    <td width="40px";>
     <table style="border: white 10px solid; width:95%;">
  <tr>
        <td colspan="2" style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white"><center>NUEVO INMUEBLES</center></b></td>
        
      </tr>
      
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Tipo de Inmueble:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="idinmueble" size="30px"/></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Torre:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select><option>Torre001<option>Torre002<option>Torre003<option>Torre004<option>Torre005</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Piso:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select><option>Piso001<option>Piso002<option>Piso003<option>Piso004<option>Piso005</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Fecha.Registro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="fecharegistro" size="20px"/></b></td>
    </tr>
   	 <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Grabar" /></center></td>
    </tr>
  </table>
  </td>
  
   <td width="50px">
     <form method="post" action="gesinmueble.htm">
   
     <table style="border: white 10px solid; width:100%;">
   
       <tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">COD.</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">TIPO</b></td>
                <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">PISO</b></td>
                <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">TORRE</b></td>
        
       <td style="background-color: #2c3e50; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
      </tr>
      <tr>
   
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>I001</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>DEPAR001</b></td>
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>P001</b></td>
                                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>T002</b></td>
                
        
        <td style="background-color: #EEEADD; height:40; border: white 10px solid;"><b><a href="lisinmueble.htm?idpro=ahi"style="color: red">Eliminar</b></a></td>
        
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
