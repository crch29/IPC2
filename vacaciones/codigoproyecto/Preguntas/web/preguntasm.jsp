<%-- 
    Document   : preguntasm
    Created on : 27/12/2015, 11:08:14 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        
        <title>AGREGAR PREGUNTAS</title>
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
                <li class="active"><a href="moderador.jsp">Inicio</a></li>
               
                
                
               </ul>
        </div>
</nav>
           
           
        
        <form name="pregunta" role="form">
         <div class="text-center container">
          <h1>AGREGAR PREGUNTA</h1> 
          <div class="form-group">
              
              <table class="table table-striped table-bordered table-condensed">
                  		<tr>
                  			<td><h5>CURSO</h5></td><td><%
        try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cadenaconsulta = "select * from curso";
        java.lang.String parametro="cod_curso";
	// TODO process result here
	java.util.List<java.lang.Object> result = port.consultalistas(cadenaconsulta,parametro);
        %> <select name="curso" class="form-group"><%
            for(int i=0;i<result.size();i++){
                %><option><%=result.get(i)%></option><%
            }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
%></select></td>
                  		</tr>
                  		<tr>
                  			<td><h5>PREGUNTA</h5></td><td><input type="text" name="pregunta"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>RESPUESTA 1</h5></td><td><input type="text" name="respuesta"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>RESPUESTA 2</h5></td><td><input type="text" name="respuesta1"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>RESPUESTA 3</h5></td><td><input type="text" name="respuesta2"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>TIEMPO</h5></td><td><input type="text" name="tiempo"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>PUNTOS EXPERIENCIA</h5></td><td><input type="text" name="puntos"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>ELIJA NIVEL</h5></td><td><select name="nivel" class="form-group">
                <option>Facil</option>
                <option>Intermedio</option>
                <option>Dificil</option>
                <option>Muy dificil</option>
            </select></td>
                  		</tr>
            </table>
           <button class="btn btn-primary" type="submit" name="enviar">enviar</button>
                    
           </div>
 
        </div>
            
            <%
        String codigo = request.getParameter("curso");
        String nivel = request.getParameter("nivel");
        String pregunta = request.getParameter("pregunta");
        String respuesta1 = request.getParameter("respuesta1");
        String respuesta2 = request.getParameter("respuesta2");
        String respuesta = request.getParameter("respuesta");
        String tiempo = request.getParameter("tiempo");
        String experiencia = request.getParameter("puntos");
        
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String instruccion = String.format("insert into Pregunta(cod_curso,descripcion,respuesta,tiempo,estado_pregunta,nivel,puntos_exp,respuesta1,respuesta2) values(%s,'%s','%s',%s,false,'%s',%s,'%s','%s');",codigo,pregunta,respuesta,tiempo,nivel,experiencia,respuesta1,respuesta2);
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