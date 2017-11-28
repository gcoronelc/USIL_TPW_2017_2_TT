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
<title>REGISTRAR INMUEBLE</title>

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
				<span>REGISTRAR INMUEBLE</span>
				</h2>
		    </div>
     <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page" >
			<div class="row">
     
      <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well" >
                    <h2><i class="glyphicon glyphicon-user"></i> <strong> REGISTRAR INMUEBLE</strong> </h2>
                     
                    <div class="box-icon">
                        <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                class="glyphicon glyphicon-chevron-up"></i></a>
                        <a href="#" class="btn btn-close btn-round btn-default"><i
                                class="glyphicon glyphicon-remove"></i></a>
                    
                    
                    </div>
                  
                </div>
                
                
                 <div class="box-content">
                       <form method="POST" action='UserController2' name="frmAddUser">
                 
                    <table class="table table-striped table-bordered responsive" 	>
                        
        <tr>
         <td>ID INMUEBLE :</td> 
         <td><input type="text" size="5"readonly="readonly" name="idinmueble"
            value="<c:out value="${user.idinmueble}"  />" /></td>
         </tr> 
          <tr>
        <td style="background-color: #e9ecc2">PISO : </td>
        <td> 
        <select name="piso">
        <option value="<c:out value="${user.piso}" />">${user.piso}
        <option value="PISO 1">PISO 1
         <option value="PISO 2">PISO 2
          <option value="PISO 3">PISO 3
           <option value="PISO 4">PISO 4
            <option value="PISO 5">PISO 5
        </select> <br />
           </td>
            </tr>
             <tr> 
        <td>DESCRIPCION :</td> <td><input type="text" size="50" name="descripcion"
            value="<c:out value="${user.descripcion}" />" /> <br />  </td>
            </tr> 
              
             <tr>
              <td>TIPO DE INMUEBLE : <td><select name="idtinmueble" >
        <option value="<c:out value="${user.idtinmueble}"/>">${user.idtinmueble} 
        <option value="2">DEPARTAMENTO
         <option value="4">OFICINA 
          <option value="3">COCHERA
        <option value="5">AUDITORIO
        <option value="1">CONDOMINIO
            </select>
             <br /> </td>
            </tr>
             <tr>
              <td>TORRE : <td><select name="idtorre">
        <option value="<c:out value="${user.idtorre}"/>"> ${user.idtorre}
        <option value="TORRE 1">TORRE 1
         <option value="TORRE 2">TORRE 2 
          <option value="TORRE 3">TORRE 3
        <option value="TORRE 4">TORRE 4
        </select> <br /> </td>
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
    
