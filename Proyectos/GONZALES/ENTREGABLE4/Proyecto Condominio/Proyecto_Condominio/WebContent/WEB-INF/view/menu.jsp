<!DOCTYPE HTML>
<html>
<head>
<title>Minimal an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="./css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="./css/style.css" rel='stylesheet' type='text/css' />
<link href="./css/font-awesome.css" rel="stylesheet"> 
<script src="./js/jquery.min.js"> </script>
<!-- Mainly scripts -->
<script src="./js/jquery.metisMenu.js"></script>
<script src="./js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="./css/custom.css" rel="stylesheet">
<script src="./js/custom.js"></script>
<script src="./js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});
			

			
		});
		</script>

<!----->

<!--pie-chart--->
<script src="js/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#3bb2d0',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#fbb03b',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ed6498',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<body>
<div id="wrapper">

<!----->
        <nav class="navbar-default navbar-static-top" role="navigation">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <h1> <a class="navbar-brand" href="index.html">CondoSoft</a></h1>         
			   </div>
			 <div class=" border-bottom">
        	<div class="full-left">
        	  <section class="full-top">
				<button id="toggle"><i class="fa fa-arrows-alt"></i></button>	
			</section>
			<form class=" navbar-left-right">
              <input type="text"  value="Buscar..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
              <input type="submit" value="" class="fa fa-search">
            </form>
            <div class="clearfix"> </div>
           </div>
     
       
            <!-- Brand and toggle get grouped for better mobile display -->
		 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="drop-men" >
		        <ul class=" nav_1">
		           
		    		<li class="dropdown at-drop">
		              <a href="#" class="dropdown-toggle dropdown-at " data-toggle="dropdown"><i class="fa fa-globe"></i> <span class="number">5</span></a>
		              <ul class="dropdown-menu menu1 " role="menu">
		                <li><a href="#">
		               
		                	<div class="user-new">
		                	<p>Nuevos Usuarios Registrados</p>
		                	<span>Hace 40 Segundos</span>
		                	</div>
		                	<div class="user-new-left">
		                
		                	<i class="fa fa-user-plus"></i>
		                	</div>
		                	<div class="clearfix"> </div>
		                	</a></li>
		                
		                <li><a href="#" class="view">Ver Todos Los Mensajes</a></li>
		              </ul>
		            </li>
					<li class="dropdown">
		              <a href="#" class="dropdown-toggle dropdown-at" data-toggle="dropdown"><span class=" name-caret">Galvan Garcia,Bruno Alexander<i class="caret"></i></span><i class="fa fa-user nav_icon "></i></a>
		              <ul class="dropdown-menu " role="menu">

		                <li><a href="index.htm"><i class="fa fa-clipboard"></i>Salir</a></li>
		              </ul>
		            </li>
		           
		        </ul>
		     </div><!-- /.navbar-collapse -->
			<div class="clearfix">
       
     </div>
	  
		    <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                
                <ul class="nav" id="side-menu">
				<center>
				<img src="images/Edificio.png">
				<br>
				<br>
                        <a href="index.htm" ><img src="images/off.png"></a>
                   <br><br>
				</center>
				
                    <li>
                        <a href="main.htm" class=" hvr-bounce-to-right"><i class="fa fa-home nav_icon "></i><span class="nav-label"><strong style="color: #01090c">Casa</strong></span> </a>
                    </li>
                    <li>
                        <a href="auditorio.htm" class=" hvr-bounce-to-right"><i class="fa fa-tags nav_icon "></i><span class="nav-label"><strong style="color: #01090c">Auditorio</strong></span> </a>
                    </li>
                    <li>
                        <a href="#" class=" hvr-bounce-to-right"><i class="fa fa-edit nav_icon"></i> <span class="nav-label"><strong style="color: #01090c">Obligaciones</strong></span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a style="color: #1f4050" href="obagua.htm" class=" hvr-bounce-to-right"> <i class="fa fa-wrench nav_icon"></i>Generar Oblig.Agua</a></li>
                            
                            <li><a style="color: #1f4050" href="obmant.htm" class=" hvr-bounce-to-right"><i class="fa fa-wrench nav_icon"></i>Generar Oblig.Mant</a></li>
			

					   </ul>
                    </li>
                       <li>
                        <a href="#" class=" hvr-bounce-to-right"><i class="fa fa-area-chart nav_icon"></i> <span class="nav-label"><strong style="color: #01090c">Finanzas</strong></span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a  style="color: #1f4050" href="ingresos.htm" class=" hvr-bounce-to-right"> <i class="fa fa-bar-chart nav_icon"></i>Ingresos</a></li>
                            
                            <li><a  style="color: #1f4050" href="gastos.htm" class=" hvr-bounce-to-right"><i class="fa fa-bar-chart nav_icon"></i>Gastos</a></li>
			
						<li><a  style="color: #1f4050" href="obpagos.htm" class=" hvr-bounce-to-right"><i class="fa fa-bar-chart nav_icon"></i>Pagos Ob</a></li>

					   </ul>
                    </li>
                    <li>
                        <a href="#" class=" hvr-bounce-to-right"><i class="fa fa-upload nav_icon"></i> <span class="nav-label"><strong style="color: #01090c">Registros</strong></span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a  style="color: #1f4050" href="regispro.htm" class=" hvr-bounce-to-right"> <i class="fa fa-user-plus nav_icon"></i >Registrar Propietarios</a></li>
                            
                    

					   </ul>
                    </li>
                    <li>
                        <a href="#" class=" hvr-bounce-to-right"><i class="fa fa-automobile nav_icon"></i> <span class="nav-label"><strong style="color: #01090c">Inmuebles</strong></span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a style="color: #1f4050"  href="gesinmueble.htm" class=" hvr-bounce-to-right"> <i class="fa fa-navicon nav_icon"></i>Registrar Inmuebles</a></li>
                            <li><a  style="color: #1f4050" href="proinmueble.htm" class=" hvr-bounce-to-right"> <i class="fa fa-navicon nav_icon"></i>Lista de Inmuebles</a></li>
     
					   </ul>
                    </li>
					 
                </ul>
            </div>
			</div>
        </nav>
<!--scrolling js-->
	<script src="./js/jquery.nicescroll.js"></script>
	<script src="./js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="./js/bootstrap.min.js"> </script>
</body>
</html>
