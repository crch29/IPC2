<%-- 
    Document   : moderarusuario
    Created on : 27/12/2015, 12:04:38 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Moderar usuarios</title>
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

         <%! 
            java.util.List<String> listadocodigosu = new java.util.ArrayList<String>();
            java.util.List<String> listadoestadosu = new java.util.ArrayList<String>();
           
        %>
   
        <form role="form">
            <div class="form-group col-md-9 center-block">     
 
                    <%-- start web service invocation --%><hr/>
    <%
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultausuario = "select * from usuario where estado_usuario=false;";
	// TODO process result here
	java.util.List<ipc2.Usuario> result = port.consultarUsuario(consultausuario);
	%><table class="table table-striped table-bordered table-condensed table-responsive"><tr>
                
                <td>nickname</td>
                <td>contraseña</td>
                <td>carnet</td>
                <td>tipo usuario</td>
                <td>aprobar</td>
                
        </tr>
            <%
                for(int i=0;i<result.size();i++){
                    
                }
for(int i=0;i<result.size();i++){
            %><tr><%
            ipc2.Usuario us = result.get(i);
            
            %>
                    <td><%out.println(us.getNombre());%></td>
                    <td><%out.println(us.getContraseña());%></td>
                    <td><%out.println(us.getCarnet());%></td>
                    <td><%out.println(us.getTipousuario());%></td>
                    <td><select name="<%=us.getNombre()%>" class="form-group"><option value="false">false</option><option value="true">true</option></select> </td>
                     <% 
                         String cod= us.getNombre();
                         String esti=request.getParameter(cod);
                         listadoestadosu.add(esti);
                         listadocodigosu.add(cod);
                     %>
            </tr><%
             
    }
%></table><%
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
         for(int i=0;i<listadocodigosu.size();i++){
                String esta=listadoestadosu.get(i);
                String cod=listadocodigosu.get(i);
                try {
                    ipc2.General_Service servicios = new ipc2.General_Service();
                    ipc2.General portos = servicios.getGeneralPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String instruccion = String.format("update usuario set estado_usuario=%s where nombre='%s';",esta,cod);
                    portos.ingresar(instruccion);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
                
            }
            


    %>
    <%-- end web service invocation --%><hr/>
<button type="submit" class="btn btn-primary">GUARDAR CAMBIOS</button>
    <button type="submit" class="btn btn-default"><a href="moderarusuario.jsp">ACTUALIZAR</a></button> 
            </div></form>
            <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
