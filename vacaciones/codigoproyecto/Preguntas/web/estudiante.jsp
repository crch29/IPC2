<%-- 
    Document   : estudiante
    Created on : 23/12/2015, 12:26:07 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        
        <title>Registro estudiante</title>
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
        
        <form role="form">
         <div class="form-group text-center container">
          <h1>REGISTRO</h1> 
          <div class="form-group">
              <table class="table table-striped table-bordered table-condensed">
                  <tr>
                      <td><h5>CARNET</h5></td><td><input type="text" name="carnet"></td>
                  </tr>
                  <tr>
                      <td><h5>NOMBRE</h5></td><td><input type="text" name="nombre"></td>
                  </tr>
                  <tr>
                      	<td><h5>APELLIDO</h5></td><td><input type="text" name="apellido"></td>
                  </tr>
                  <tr>
                      	<td><h5>CARRERA</h5></td><td><input type="text" name="carrera"></td>
                  </tr>
                  <tr>
                      	<td><h5>UNIVERSIDAD</h5></td><td><input type="text" name="universidad"></td>
                  </tr>
              </table>    
            
            <button class="btn btn-primary" type="submit" name="enviar">ENVIAR</button>
            <button class="btn btn-default" type="submit" name="siguiente"><a href="usuario.jsp"/>SIGUIENTE</button>
                    
           </div>
 
        </div>
        </form>
            <%
                if(request.getParameter("carnet")!=null){
        String carnet = request.getParameter("carnet");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String carrera = request.getParameter("carrera");
        String universidad = request.getParameter("universidad");
        
        
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String instruccion = String.format("insert into estudiante(carnet,nombre,apellido,carrera,universidad) values(%s,'%s','%s','%s','%s');",carnet,nombre,apellido,carrera,universidad);
	port.ingresar(instruccion);
        port.cerrarconexion();
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
     }
    %>
     <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
       </body>
</html>
