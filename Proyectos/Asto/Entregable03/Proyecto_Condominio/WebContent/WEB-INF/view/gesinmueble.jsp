<jsp:include page="menu.jsp"/>
<section class="engine"><a href="#">bootstrap buttons</a></section><section class="header6 cid-qyUzfpWTSb mbr-fullscreen" data-bg-video="https://www.youtube.com/watch?v=BPnBKLO6LfQ" id="header6-h" data-rv-view="41">

    

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 0);">
    </div>

    <div class="container">
    <br>
    
     <H3 style="color: white"><P ALIGN=center>GESTION DE INMUEBLES</P></H3>
     <br>
    <br>
   
 <H3 style="color: white"><P ALIGN=left>PROPIETARIOS.</P></H3>
 <div class="row justify-content-md-center">
   <table border="0" width="120%" >
      <tr>
    <td width="80px";>
     <table style="border: white 10px solid; width:95%;">
    <tr>
        <td style="background-color: #d2795c; height:40; border: white 10px solid;"><b style="color: white">COD.</b></td>
        <td style="background-color: #d2795c; height:50; border: white 10px solid;"><b style="color: white">NOMBRES</b></td>
        <td style="background-color: #d2795c; height:50; border: white 10px solid;"><b style="color: white">APELLIDOS</b></td>
        <td style="background-color: #d2795c; height:50; border: white 10px solid;"><b style="color: white">ESTADO</b></td>
       <td style="background-color: #d2795c; height:50; border: white 10px solid;"><center><b style="color: white">ACCION</b></center></td>
       
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
        <td colspan="2" style="background-color: #d2795c; height:40; border: white 10px solid;"><b style="color: white"><center>ASIGNAR INMUEBLE</center></b></td>
        
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
    <td colspan="2" style="background-color:#d2795c;border: white 10px solid;"><center><input class="button"  type="submit" value="Grabar" /></center></td>
    </tr>
    
  </table>
  </form>
 </td>
</tr>
</table>
</div>
</td>
</tr></table>
</div>
</div>
</section>

<section class="cid-qyUyWfCZpg" id="footer1-g" data-rv-view="45">

    

    <div class="mbr-overlay" style="background-color: rgb(60, 60, 60); opacity: 0.5;"></div>

    <div class="container">
        <div class="media-container-row content text-white">
            
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3"></h5>
                <p class="mbr-text"></p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3"></h5>
                <p class="mbr-text"></p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3"></h5>
                <p class="mbr-text"></p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 CondoSoft - Todos Los Derechos Reservados
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="" target="_blank">
                                <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


	

