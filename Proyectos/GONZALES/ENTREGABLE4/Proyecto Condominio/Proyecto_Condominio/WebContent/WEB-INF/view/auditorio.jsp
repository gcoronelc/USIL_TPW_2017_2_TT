<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>AUDITORIO</title>
<style>
#contenedor {
float: left;
width: 804px;
}

#tabla1 {
float: left;
width: 400px;
}

#tabla1 table {
text-align: center;
}

#tabla1 table tr td {
width: 100px
}

#tabla2 {
float: left;
width: 400px;
}

#tabla2 table {
text-align: center;
}

#tabla2 table tr td {
width: 100px
}</style>
</head>

<body>
 
<jsp:include page="menu.jsp"/>

<div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>AUDITORIO</span>
				</h2>
		    </div>
 <div class="blank" class="blank" style=" background-image:url(./images/fondo.png)">
 <div class="blank-page">
 
   <table border="0" width="50%" aling=center >
      
  
   <td width="50px">
   
   
   
     <table style="border: white 10px solid; width:100%;">
  <tr>
        <td colspan="2" style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white"><center>DATOS CUOTA</center></b></td>
        
      </tr>
      <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Propietario:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select><option>Carlos fasanando<option>Jeyson Shapiama<option>Bruno Alexander<option>Obed Gonzales</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Cuota:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="cofi" size="5px"/>./s</b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Motivo:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select><option>Aquiler<option>Limpieza</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Fecha.Registro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="cofi" size="10px"/></b></td>
    </tr>
    
   	 <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Registrar" /></center></td>
    </tr>
  </table>

     <H3 style="color: white"><P ALIGN=left>Pagos de Alquiler</P></H3>
     <H3 style="color: white"><P ALIGN=left>Pagos de Alquiler</P></H3>
     
  <tr>
    <td width="20px">
    <div id="contenedor">
<div id="tabla1">
   <table style="border: white 10px solid; width:60%;">
   
       <tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">PROPIETARIO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">PAGO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">MOTIVO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FECHA.PAGO</b></td>

      </tr>
   
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Carlos Fasanando</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>150./s</b></td>
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Alquiler</b></td>
        
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>10-7-17</b></td>
        
        
      </tr>
           <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Bruno Alexander</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>150/s</b></td>
                                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Alquiler</b></td>
                
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>10-7-17</b></td>
                
                        
      </tr>

  </table>
  </div>
<div id="tabla2">

 </center>
   <table border="0" width="100%" >
      <tr>
    <td width="20px";>
   <table style="border: white 10px solid; width:60%;">
   
       <tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">PROPIETARIO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">PAGO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">MOTIVO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FECHA.PAGO</b></td>
      </tr>
      <tr>
   
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Carlos Fasanando</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>150./s</b></td>
                                        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Limpieza</b></td>
                
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>10-7-17</b></td>
        
        
      </tr>
           <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Bruno Alexander</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>150/s</b></td>
                        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>Limpieza</b></td>
                
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>10-7-17</b></td>
                
                        
      </tr>

  </table>
</div>
</div>
	<script src="./js/jquery.nicescroll.js"></script>
	<script src="./js/scripts.js"></script>
</body>
</html>
