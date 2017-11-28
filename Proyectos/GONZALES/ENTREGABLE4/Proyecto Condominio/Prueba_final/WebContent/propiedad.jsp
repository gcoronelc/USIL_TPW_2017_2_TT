<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<title>MANT.PERSONA</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

   
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
 
<jsp:include page="menu.jsp"/>
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>ASIGNAR PROPIEDAD</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
			
			
		<h1>ASIGNAR PROPIEDAD</h1>	
		<br>
   <form method="POST" action='UserController3' name="frmAddUser">
                    <table class="table table-striped table-bordered responsive">
                        <thead>
                        <tr>
                            <th style="background-color: #8ce68f">IDINMUEBLE</th>
                            <td style="background-color: #8ce68f"><input type="text" readonly="readonly" name="idinmueble"
                             value="<c:out value="${user.idinmueble}" />" /></td>
                             </tr>
                             <tr>
                            <th style="background-color:#d3d7e8">SELECCIONA PROPIETARIO</th>
                            <th><select name="idpersona" class="form-control1">
                    <c:forEach items="${users}" var="user">
                    <option value="${user.nombre}&nbsp;${user.apellido}">${user.nombre}&nbsp;${user.apellido}
                    </c:forEach>
                      </select>
                        </th>  
                        </tr>
                        <tr>
                        <td colspan="2">
                        <input class="btn btn-default" type="submit" value="ACEPTAR"></td>
                        </tr>
                        </thead>
                    </table>
                    </form>

</div>


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