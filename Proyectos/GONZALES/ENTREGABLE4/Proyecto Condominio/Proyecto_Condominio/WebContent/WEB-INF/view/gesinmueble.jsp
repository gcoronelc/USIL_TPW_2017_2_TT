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
				<span>GESTION DE INMUEBLES</span>
				</h2>
		    </div>
 <div class="blank" class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
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
