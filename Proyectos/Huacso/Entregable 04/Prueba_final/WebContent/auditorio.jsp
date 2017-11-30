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
<jsp:include page="recursos.jsp"/>
</head>

<body>
 
<jsp:include page="menu1.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span> ALQUILER DE AUDITORIO</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			
			<div class="blank-page">
   <div class="row">
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well" data-original-title="">
                    <h2><i class="glyphicon glyphicon-user"></i> <strong>AQUILER DE AUDITORIO</strong> </h2>
                     
                    <div class="box-icon">
                        <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                class="glyphicon glyphicon-chevron-up"></i></a>
                        <a href="#" class="btn btn-close btn-round btn-default"><i
                                class="glyphicon glyphicon-remove"></i></a>
                    
                    
                    </div>
                  
                </div>
                <div class="box-content">
                    <table class="table table-striped table-bordered responsive">
                        <thead>
                        <tr>
                            <th>ID AUDITORIO</th>
                            <th>PERSONA</th>
                            <th>FECHA</th>
                            <th>PAGO DE ALQUILER</th>
                            <th>PAGO DE LIMPIEZA</th>
                            <th>ACCION</th>
                        </tr>
                        </thead>
                        <tbody>

                    <c:forEach items="${users2}" var="user2">
                        <tr>
                          <td class="center">${user2.idauditorio}</td>
                          <td class="center">${user2.persona}</td>
                       <td class="center">${user2.fecha}</td>
         <td class="center">${user2.pagoa}</td>
         <td class="center">${user2.pagol}</td>
         <td> <a class="btn btn-info" href="UserController4?action=edit&userId=<c:out value="${user2.idauditorio}"/>">
                                    <i class="glyphicon glyphicon-edit icon-white"></i>
                                    Actualizar
                                </a>
                                <a class="btn btn-danger"  href="UserController4?action=delete&userId=<c:out value="${user2.idauditorio}"/>">
                                    <i class="glyphicon glyphicon-trash icon-white"></i>
                                    Eliminar
                                </a>
                            </td>
                        </tr>
                      </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!--/span-->

    </div><!--/row-->

    
    
    </br>
    
    
<div class="row">
        <div class="box col-md-5">
            <div class="box-inner">
                <div class="box-header well" data-original-title="">
                    <h2><i class="glyphicon glyphicon-user"></i> <strong>NUEVO ALQUILER </strong> </h2>
                     
                    <div class="box-icon">
                        <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                class="glyphicon glyphicon-chevron-up"></i></a>
                        <a href="#" class="btn btn-close btn-round btn-default"><i
                                class="glyphicon glyphicon-remove"></i></a>
                    
                    
                    </div>
                  
                </div>
                <div class="box-content">
      <form method="POST" action='UserController4' name="frmAddUser">
                
                    <table class="table table-striped table-bordered responsive">
                        <thead>
                        <tr>
                            <th>SELECCIONE PROPIETARIO</th>
                            <td>
                     <select name="persona" class="form-control1">
                    <c:forEach items="${users}" var="user">
                    <option value="${user.nombre}&nbsp;${user.apellido}">${user.nombre},${user.apellido}
                    </c:forEach>
             </select>
              </td>
                        </tr>
                        
                         <tr>
            <th>
            FECHA DE REGISTRO :
            </th>
             <td>
            <input type="text" class="form-control1" name="fecha"  />
            </td>
            </tr><tr>
                   <td colspan="2"> 
                    <input class="btn btn-default" type="submit" value="Submit" >
                    </td>
              </tr>
                        
                    </table>
                                        
                    </form>
                </div>
            </div>
        </div>
        <!--/span-->

    </div><!--/row-->
</div><!--/.fluid-container-->

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
   
</div></div>
</div>
<input name="animation" type="hidden">

</body>
</html>