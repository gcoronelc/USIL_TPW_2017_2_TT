<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>AGREGAR PERSONA</title>

</head>

<body>
<script>
        $(function() {
            $('input[name=fecha]').datepicker();
        });
    </script>
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
    
		    	<h2>
				<a href="main.htm">HOME</a>
				<i class="fa fa-angle-right"></i>
				<span>AGREGAR PERSONA</span>
				</h2>
		    </div>
     <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page" >
			<div class="row">
     
      <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well" >
                    <h2><i class="glyphicon glyphicon-user"></i> <strong> PERSONAS</strong> </h2>
                     
                    <div class="box-icon">
                        <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                class="glyphicon glyphicon-chevron-up"></i></a>
                        <a href="#" class="btn btn-close btn-round btn-default"><i
                                class="glyphicon glyphicon-remove"></i></a>
                    
                    
                    </div>
                  
                </div>
                
                
                 <div class="box-content">
                       <form method="POST" action='UserController' name="frmAddUser">
                 
                    <table class="table table-striped table-bordered responsive" 	>
                        
        <tr>
         <td>ID :</td> 
         <td><input type="text" readonly="readonly" size="5" name="idpersona"
            value="<c:out value="${user.idpersona}"  />" /></td>
         </tr> 
          <tr>
        <td style="background-color: #e9ecc2">TIPO DE PERSONA : </td>
        <td> 
        <select  name="idtpersona"  required >
        <option value="<c:out value="${user.idtpersona}"/>">${user.idtpersona} 
        <option value="PROPIETARIO">PROPIETARIO
         <option value="USUARIO">USUARIO 
          <option value="EX-PROPIETARIO">EX-PROPIETARIO
        <option value="INMUEBLE">INMUEBLE
            </select>
           </td>
            </tr>
             <tr> 
        <td>NOMBRE :</td> <td><input size="50"
            type="text" name="nombre" required value="<c:out value="${user.nombre}" />" /> </td>
            </tr> 
             <tr>
          <td>APELLIDO : <td><input size="50" type="text" name="apellido" required
            value="<c:out value="${user.apellido}" />" /></td>
            </tr> 
             <tr>
              <td>DNI : <td><input type="text" name="dni" required
            value="<c:out value="${user.dni}" />" /> </td>
            </tr>
             <tr>
              <td>TELEFONO : <td><input type="text" name="telefono" required
            value="<c:out value="${user.telefono}" />" /> </td>
            </tr> 
             <tr>
              <td>DIRECCION : <td><input type="text"  size="50" name="direccion" required
            value="<c:out value="${user.direccion}" />" /> </td>
            </tr>
             <tr> 
              <td>EMAIL : <td><input type="text" size="50" name="email" required
            value="<c:out value="${user.email}" />" /> </td>
            </tr>
             <tr>
           
           <td> FECHA : </td><td><input 
            type="text"  name="fecha" required
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.fecha}" />" /> </td>
            </tr> 
            <tr>
           <td colspan="2"><center><button class="btn btn-default"
            type="submit" >ACEPTAR</button></center>
            <br>
            </td>
            </tr>
      
   
    </table>
    </form>
    
     </div>
    </div>
    </div>
    </div>
                </div>
            </div>
        </div>
        <!--/span-->

    </div><!--/row-->

    


<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>
   

<input name="animation" type="hidden">
    
</body>
</html>
    
