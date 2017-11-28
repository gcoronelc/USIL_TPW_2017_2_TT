<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js"> 
    <head>
        <meta charset="UTF-8" />
        <title>Sistema MiCondominio</title>
		
		
		<link rel="stylesheet" type="text/css" href='<c:url value="css/demo.css" />'>
		<link rel="stylesheet" type="text/css" href='<c:url value="css/style.css" />'>
		<link rel="stylesheet" type="text/css" href='<c:url value="css/animate-custom.css" />'>
		<link rel="stylesheet" type="text/css" href='<c:url value="css/styleMensaje.css" />'>
        <link rel="icon" type="img/png" href="images/LogoCondominio.png" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
     
    </head>
    <body>
        <div class="container">
            <header>
                <img src='<c:url value="images/LogoCondominio.png" />' height="200" />
            </header>
            <section>				
               
                <div id="container_demo" >
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="ingresar.htm" method="post" autocomplete="on"> 
                                <h1>Ingreso a MiCondominio</h1> 
								
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Usuario</label>
                                    <input id="username" name="usuario" required="required" type="text" placeholder="Escribe tu usuario"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Contraseña </label>
                                    <input id="password" name="clave" required="required" type="password" placeholder="Escribe tu contraseña" /> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Ingresar" /> 
								</p>
								<p>${error}</p>                          
                            </form>
                        </div>      
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>