<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="recursos.jsp"/>

<title>CONDOMINIO APP</title>
</head>
<body>

  <div class="egcc_pagina">
  
   
    
    <div class="egcc_menu">
      <jsp:include page="menu.jsp"/>
    </div>
    
    <div id="egcc_contenido" class="egcc_contenido">
      <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
    <div class="banner">
    
		    	<h2>
				<a href="main.htm">HOME</a>
				<i class="fa fa-angle-right"></i>
				<span>CondoSoft</span>
				</h2>
		    </div>
     <div class="blank" style=" background-image:url(./images/fondo.png)">
			<div class="blank-page" >
			<div class="content-bottom">
			<div class="col-md-6 post-top">
				<div class="post">
					<form class="text-area">
						<textarea   required="" > ¿Como estas el día de hoy?...</textarea>
					</form>
					<div class="post-at">
						<ul class="icon">
							
							
							<div  class="post-file">
							<i class="fa fa-location-arrow"></i>
							<input id="input-1" name="input1[]" type="file" multiple="" class="">
							</div>
							<div  class="post-file">
							<i class="fa fa-camera"></i>
							<input id="input-2" name="input2[]" type="file" multiple="" class="">
							</div>
							<div  class="post-file">
							<i class="fa fa-video-camera"></i>
							<input id="input-3" name="input3[]" type="file" multiple="" class="">
							</div>
							<div  class="post-file">
							<i class="fa fa-microphone"></i>
							<input id="input-4" name="input4[]" type="file" multiple="" class="">
							</div>
							
							<script>
							$(document).on('ready', function() {
								$("#input-1").fileinput({showCaption: false});
							});
							</script>
							<script>
							$(document).on('ready', function() {
								$("#input-2").fileinput({showCaption: false});
							});
							</script>
							<script>
							$(document).on('ready', function() {
								$("#input-3").fileinput({showCaption: false});
							});
							</script>
							<script>
							$(document).on('ready', function() {
								$("#input-4").fileinput({showCaption: false});
							});
							</script>
						</ul>
						<form class="text-sub">
							<input type="submit" value="post">
						</form>
						<div class="clearfix"> </div>
					</div>
				</div>
			<div class="post-bottom">
				<div class="post-bottom-1">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<p>15k <label>Likes</label></p>
				</div>
				<div class="post-bottom-2">
					<a href="#"><i class="fa fa-twitter"></i></a>
					<p>20M <label>Followers</label></p>
				</div>
				<div class="clearfix"> </div>
			</div>
				
			</div>
			<div class="col-md-6">
				<div class="weather">
					<div class="weather-top">
						<div class="weather-top-left">
							<div class="degree">
							<figure class="icons">
								<canvas id="partly-cloudy-day" width="64" height="64">
								</canvas>
							</figure>
							<span>37°</span>
							<div class="clearfix"></div>
							</div>
				<script>
							 var icons = new Skycons({"color": "#1ABC9C"}),
								  list  = [
									"clear-night", "partly-cloudy-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
							<p>FRIDAY
								<label>13</label>
								<sup>th</sup>
								AUG
							</p>
						</div>
						<div class="weather-top-right">
							<p><i class="fa fa-map-marker"></i>Peru Lima</p>
							<label>Peru Lima</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="weather-bottom">
			<div class="weather-bottom1">
				<div class="weather-head">
				<h4>Cloudy</h4>
				<figure class="icons">
					<canvas id="cloudy" width="58" height="58"></canvas>
				</figure>					
					<script>
							 var icons = new Skycons({"color": "#999"}),
								  list  = [
									"clear-night", "cloudy",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
				<h6>20°</h6>
				<div class="bottom-head">
					<p>Noviembre 25</p>
					<p>Sabado</p>
				</div>
			</div>
			</div>
			<div class="weather-bottom1 ">
				<div class="weather-head">
			<h4>Sunny</h4>
			<figure class="icons">
				<canvas id="clear-day" width="58" height="58">
				</canvas>				
			</figure>					
					<script>
							 var icons = new Skycons({"color": "#999"}),
								  list  = [
									"clear-night", "clear-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
			<h6>37°</h6>
			<div class="bottom-head">
					<p>August 17</p>
					<p>Tuesday</p>
				</div>
			</div>
			</div>
			<div class="weather-bottom1">
				<div class="weather-head">
				<h4>Rainy</h4>
				<figure class="icons">
					<canvas id="sleet" width="58" height="58">
					</canvas>
				</figure>
				<script>
							 var icons = new Skycons({"color": "#999"}),
								  list  = [
									"clear-night", "clear-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
		
				<h6>7°</h6>
				<div class="bottom-head">
					<p>August 18</p>
					<p>Wednesday</p>
				</div>
			</div>
			</div>
			<div class="weather-bottom1 ">
				<div class="weather-head">
			<h4>Snowy</h4>
			<figure class="icons">
					<canvas id="snow" width="58" height="58">
					</canvas>
				</figure>
				<script>
							 var icons = new Skycons({"color": "#999"}),
								  list  = [
									"clear-night", "clear-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
			<h6>-10°</h6>
			<div class="bottom-head">
					<p>August 16</p>
					<p>Thursday</p>
				</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>

				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!--//content-->
             
              
        </div>
    </div>
   

    </div>
    </div> 
    </div>
  
   
  
  </div>

</body>
</html>