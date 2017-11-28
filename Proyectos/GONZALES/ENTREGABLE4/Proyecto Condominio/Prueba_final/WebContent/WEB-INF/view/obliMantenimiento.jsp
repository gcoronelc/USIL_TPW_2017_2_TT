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
<title>MANTENIMIENTO</title>
<jsp:include page="menu.jsp"/>

</head>
<body>
 
	
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
		    	<h2>
				<a href="main.htm">ITEM</a>
				<i class="fa fa-angle-right"></i>
				<span>OBLIGACIONES DE MANTENIMIENTO</span>
				</h2>
		    </div>
 <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page">
   <div class="row">
   
   <form id="form1">
	
	   <input type="hidden" name="tipo" value="2" />
	 <div class="box col-md-12">
	   <table class="table table-striped table-bordered responsive">
	   
	       <tr>
	           <td>Periodo</td>
	           <td>Mes</td>
	       </tr>
	   
	       <tr>
               <td>
                   <select id="periodo" name="periodo" class="form-control">
                      <option value="2017">2017</option>
                      <option value="2018">2018</option>
                   </select>
               </td>
               <td>
                    <select id="mes" name="mes" class="form-control">
                        <option value="1">Enero</option>
                        <option value="2">Febrero</option>
                        <option value="3">Marzo</option>
                        <option value="4">Abril</option>
                        <option value="5">Mayo</option>
                        <option value="6">Junio</option>
                        <option value="7">Julio</option>
                        <option value="8">Agosto</option>
                        <option value="9">Setiembre</option>
                        <option value="10">Octubre</option>
                        <option value="11">Noviembre</option>
                        <option value="12">Diciembre</option>
                    </select>
               </td>
           </tr>
           
	   </table>
	</div>
	</form>
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well" data-original-title="">
                    <h2><i class="glyphicon glyphicon-user"></i> <strong>OBLIGACIONES DE MANTENIMIENTO</strong> </h2>
                     
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
                        <th>ID</th>
	           <th>INMUEBLE</th>
	           <th>TORRE</th>
	           <th>PISO</th>
	           <th>DESCRIPCION</th>
	           <th>OBLIGACION</th>
	           <th>AÑO</th>
	           <th>MES</th>
	           <th>IMPORTE</th>
	           <th>VENCIMIENTO</th>
	           <th>PAGADA</th>
                            </tr>
                             <tbody id="tabla">
	   </tbody>
	
	</table>
	<br>
	<div id="divGrabar" style="display: none;">
		<input id="btnGrabar" class="btn-primary btn" type="button" value="Grabar" />
	</div>
	
	<script>
	
	fnCargarTabla();
	
	$("#btnGrabar").click(function(){
		var data = $("#form1").serialize();
		$.post("grabarObliMant.htm",data,function(response){
			
			var objJson =  $.parseJSON(response);
			
			if( objJson.code == 1 ){
				fnCargarTabla();
				alert("Proceso ejecutado correctamente.");
			} else {
				alert(objJson.mensaje);
			}
			
			
		});
	});
	
	$("#periodo").change(fnCargarTabla);
	
	$("#mes").change(fnCargarTabla);
	
	function fnCargarTabla(){
		
		$("#divGrabar").hide();
		$("#tabla").html("");
		var data = $("#form1").serialize();
		
		$.post("leerObligaciones.htm", data, function(dataJson){
		
			var lista = $.parseJSON(dataJson);
			
			if( lista.length == 0 ) {
				
				$.post("generaObligaciones.htm", data, function(dataJson){
					var lista = $.parseJSON(dataJson);
					mostrarList(lista);
					$("#divGrabar").show();
				});
				
			} else {
				mostrarList(lista);	
			}
			
		});
		
	}
	
	function mostrarList(lista){
	   $.each(lista, function (index, r) {
            
            var row = "<tr>";
            row += "<td>" + r.id + "</td>";
            row += "<td>" + r.inmueble + "</td>";
            row += "<td>" + r.torre + "</td>";
            row += "<td>" + r.piso + "</td>";
            row += "<td>" + r.descripcion + "</td>";
            row += "<td>" + r.nomobligacion + "</td>";
            row += "<td>" + r.anio + "</td>";
            row += "<td>" + r.mes + "</td>";
            row += "<td>" + r.importe + "</td>";
            row += "<td>" + r.vencimiento + "</td>";
            row += "<td>" + r.pagada + "</td>";
            row += "</tr>";
            
            $("#tabla").append( row );
            
        });
	}

	</script>
   
   

    

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