<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>INMUENBLES</title>
</head>

<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>LISTA DE INMUEBLES</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">

 
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
