<%-- 
    Document   : principal
    Created on : 22/12/2015, 07:59:08 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Principal Administrador</title>
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
            <a href="#" class="navbar-brand">PREGUNTAS</a>
        </div>
 
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
               <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Cursos <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="cursos.jsp">Agregar Curso</a></li>
                    <li><a href="moderarcurso.jsp">Moderar curso</a></li>
                    <li><a href="gestionarcurso.jsp">Modificar curso</a></li>
                     
                </ul>
                </li> 
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Preguntas <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="preguntas.jsp">Agregar Pregunta</a></li>
                    <li><a href="moderarpregunta.jsp">Moderar Pregunta</a></li>
                    <li><a href="gestionarpregunta.jsp">Modificar Pregunta</a></li>
                     
                </ul>
                </li> 
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Estudiantes <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="estudiante.jsp">Agregar Estudiante</a></li>
                    <li><a href="moderarusuario.jsp">Moderar usuario</a></li>
                    <li><a href="gestionarperfil.jsp">Modificar Estudiante</a></li>
                     
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
