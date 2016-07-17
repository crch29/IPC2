<%-- 
    Document   : usuario
    Created on : 23/12/2015, 12:41:07 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>agregar Usuario</title>
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
                     Administrador <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Mi Cuenta</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Cambiar Email</a></li>
                    <li><a href="#">Cambiar Password</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Logout</a></li>
                </ul>
                </li> 
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Estudiante <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Mi Cuenta</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Cambiar Email</a></li>
                    <li><a href="#">Cambiar Password</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Logout</a></li>
                </ul>
                </li> 
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                     Moderador <b></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Mi Cuenta</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Cambiar Email</a></li>
                    <li><a href="#">Cambiar Password</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Logout</a></li>
                </ul>
                </li>  
               </ul>
        </div>
</nav>
        
        
        
        
        
         <form name="pregunta" role="form">
         <div class="text-center container">
          <h1>USUARIOS</h1> 
          <div class="form-group">
              
              <table class="table table-striped table-bordered  table-condensed">
                  		<tr>
                  			<td><h5>CARNET</h5></td><td><%
            
            try {
            ipc2.General_Service service = new ipc2.General_Service();
            ipc2.General port = service.getGeneralPort();
             // TODO initialize WS operation arguments here
            java.lang.String consulta = "select * from estudiante;";
            java.lang.String parametro = "carnet";
            // TODO process result here
            java.util.List<java.lang.Object> result = port.consultalistas(consulta, parametro);
            %> <select name="carnet" class="form-group"><%
                for(int i=0;i<result.size();i++){
                    %><option><%=result.get(i)%></option><%
                }
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
        %></select></td>
                  		</tr>
                  		<tr>
                  			<td><h5>NICKNAME</h5></td><td><input type="text" name="nickname"></td>
                  		</tr>
                  		<tr>
                  			<td><h5>CONTRASEÑA</h5></td><td><input type="password" name="contraseña"></td>
                  		</tr>
             </table>
         
            <button class="btn btn-primary" type="submit" name="enviar">CREAR USUARIO</button>
                    
           </div>
 
        </div>
            
      <%
          if(request.getParameter("nickname")!=null){
            String carnet = request.getParameter("carnet");
            String nickname = request.getParameter("nickname");
            String contraseña = request.getParameter("contraseña");
            try {
                ipc2.General_Service service = new ipc2.General_Service();
                ipc2.General port = service.getGeneralPort();
                 // TODO initialize WS operation arguments here
                java.lang.String instruccion = String.format("insert into usuario(carnet,nombre,contraseña) values(%s,'%s','%s');",carnet,nickname,contraseña);
                port.ingresar(instruccion);
                port.cerrarconexion();
            } catch (Exception ex) {
                
            }
          }
    %>
       </form>

        
      <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>