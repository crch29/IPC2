<%-- 
    Document   : usuarioestudiante
    Created on : 26/12/2015, 03:04:48 AM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Usuario Estudiante</title>
    </head>
    <body class="bg-success">
           <nav role="navigation" class="navbar navbar-default navbar-inverse">
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">Preguntas</a>
        </div>
 
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
               
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Estudiante <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="gestionarperfile.jsp">Gestionar Perfil</a></li>
                    <li><a href="preguntase.jsp">Proponer Pregunta</a></li>
                    <li><a href="avatare.jsp">Agregar Avatar</a></li>
                </ul>
                </li> 
                <li><a href="index.jsp">Salir</a></li>
               </ul>
        </div>
</nav>


        
      <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
