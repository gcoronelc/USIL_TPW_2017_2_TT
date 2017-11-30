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
<title>ACTUALIZAR REGISTRO</title>

</head>
<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>ACTUALIZAR REGISTRO</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
   <div class="row">
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well" data-original-title="">
                    <h2><i class="glyphicon glyphicon-user"></i> <strong>ALQUILER DE AUDITORIO</strong> </h2>
                     
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
                        <tr style="background-color: #f5cccc">
                            <th>ID_ALQUILER</th>
                            <th><input type="text" readonly="readonly" name="idauditorio"
                             value="<c:out value="${user.idauditorio}" />" /> <br /></th>
                            </tr>
                            <tr>
                            <th>PERSONA</th>
                            <th><select name="persona" >
                    <c:forEach items="${users}" var="user">
                    <option value="<c:out value="${user.nombre}&nbsp;${user.apellido}"/>">${user.nombre},${user.apellido}
                    </c:forEach>
             </select></th>
                   </tr>
                    <tr>
                            <th>FECHA</th>
                             <th><input 
            type="text"  name="fecha" 
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.fecha}" />" /> </th>
                           
                           </tr>
                           <tr> 
                           <th>PAGO DE ALQUILER</th>
                             <th><input type="text"  name="pagoa"
              value="<c:out value="${user.pagoa}" />" /> <br /> </th>
                            </tr>
                            <tr>
                            <th>PAGO DE LIMPIEZA</th>
                             <th><select name="pagol" >
                   <option value="<c:out value="${user.pagol}"/>">${user.pagol} 
                   <option value="NONE">NONE
                   <option value="S/100.00">PAGO 
                         </select>
            
                     </th>
                       </tr>
                       <tr>    
                      <th><input class="btn btn-default" type="submit" value="Submit" /></th>
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