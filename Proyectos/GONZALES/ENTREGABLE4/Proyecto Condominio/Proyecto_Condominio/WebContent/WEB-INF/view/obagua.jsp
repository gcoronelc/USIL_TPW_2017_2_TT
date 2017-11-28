<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>OB.AGUA</title>
</head>

<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>OBLIGACION DE AGUA</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
 
 
   <table border="0" width="100%" >
   
      <tr>
     
    <td width="40px";>
     <table style="border: white 10px solid; width:95%;">
  <tr>
        <td colspan="2" style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white"><center>GENERAR OBLIGACION</center></b></td>
        
      </tr>
      <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Cuota de Recibo:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="idpro" size="10px"/></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Inmueble:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><select><option>Departamentos<option>Oficinas</select></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Fecha de Registro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="fecha" size="20px"/></b></td>
    </tr>
    
   	 <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Generar" /></center></td>
    </tr>
  </table>
  </td>
  
   <td width="50px">
     <form method="post" action="gesinmueble.htm">
   
     <table style="border: white 10px solid; width:100%;">
   
       <tr>
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">COD.PRO</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">INMUEBLE</b></td>
                <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">CUOTA</b></td>
                <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FECHA DE VECIMIENTO</b></td>
                        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">ESTADO</b></td>
        
       <td style="background-color: #2c3e50; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
      </tr>
      <tr>
   
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>P001</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>DEPAR002</b></td>
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>40.5</b></td>
                                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>31-08-17</b></td>
                                                <td style="background-color: #E39641; height:40; border: white 10px solid;"><b style="color: white">Pendiente</b></td>
                
                
        
        <td style="background-color: #3CA294; height:40; border: white 10px solid;"><b><a href="obagua.htm?idpro=c001"style="color: white">PAGAR</b></a></td>
        
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
