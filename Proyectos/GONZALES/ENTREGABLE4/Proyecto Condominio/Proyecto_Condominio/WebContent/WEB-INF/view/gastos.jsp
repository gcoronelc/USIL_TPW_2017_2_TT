<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>GASTOS</title>
</head>

<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>GASTOS</span>
				</h2>
		    </div>
 <div class="blank" class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
 
   <table border="0" width="100%" >
      <tr>
    <td width="40px";>
     <table style="border: white 10px solid; width:95%;">
  <tr>
        <td colspan="2" style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white"><center>NUEVO GASTO</center></b></td>
        
      </tr>
      <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Servicios Publicos :</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="idpro" size="10px"/>/s</b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Personal:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="idinmueble" size="10px"/>/s</b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Servicios Terceros:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="torre" size="10px"/>/s</b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Insumos y Materiales:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="piso" size="10px"/></b></td>
    </tr>
    <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Fecha.Registro:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><input type="text" name="fecharegistro" size="20px"/></b></td>
    </tr>
    <tr>
    <td colspan="2" style="background-color:#34495e;border: white 10px solid;"><center><input class="button"  type="submit" value="Calcular" /></center></td>
    </tr>
     <tr> 
    <td style="background-color: #7f8c8d;border: white 10px solid;"><b><label style="color: white">Total:</label></b></td>
    <td style="background-color: #ecf0f1;border: white 10px solid;"><b><label name="fecharegistro">/s</label></b></td>
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
        <td style="background-color: #34495e; height:40; border: white 10px solid;"><b style="color: white">COD.GASTOS</b></td>
        <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">CANTIDAD</b></td>
                <td style="background-color: #34495e; height:50; border: white 10px solid;"><b style="color: white">FECHA.REGISTRO</b></td>
       <td style="background-color: #2c3e50; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
      </tr>
      <tr>
   
      <tr>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>G001</b></td>
        <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>1780</b>/S</td>
                <td style="background-color: rgb(189, 195, 199); height:40; border: white 10px solid;"><b>10-07-17</b></td>
                
        
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
