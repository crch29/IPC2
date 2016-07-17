<%-- 
    Document   : Avatar
    Created on : 27/12/2015, 04:38:53 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Principal Estudiante</title>
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
                <li class="active"><a href="principal.jsp">Inicio</a></li>
               
                
                
               </ul>
        </div>
</nav>

            <form name="pregunta" role="form">
         <div class="text-center container">
          <h1>Avatar</h1> 
          <div class="form-group">
              
              <table class="table table-striped table-bordered  table-condensed">
                  		<tr>
                                    <td><h5>NOMBRE</h5></td><td><input type="text" name="nombre"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>EXPERIENCIA</h5></td><td><input type="text" name="experiencia"></td>
                  		</tr>
                  		
             </table>
          </div>
         </div>
                <button class="btn btn-primary" type="submit" name="enviar">GUARDAR</button>
           
                 <%
        String nombre= request.getParameter("nombre");
        String experiencia = request.getParameter("experiencia");
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String instruccion = String.format("insert into avatar(nombre,experiencia) values('%s',%s);", nombre, experiencia);
	port.ingresar(instruccion);
        port.cerrarconexion();
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
                
            </form>
        
    
   


        
      <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
