<%-- 
    Document   : index
    Created on : 24/12/2015, 09:29:15 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>INICIO</title>
    </head>
    <body class="bg-success">
        <br><br><br>
        
        <div class="panel panel-default center-block">
            <div class="panel-heading">
                <h3 class="panel-title">LOGIN</h3>
            </div>
                <div class="panel-body">
                <form name="login" role="form">
                    <div class="form-group">
                        <label for="log">ingrese usuario</label>
                        <input type="text" class="form-control" placeholder="usuario" name="usuario">
                    </div>
                    <div class="form-group">
                        <label for="contraseñl">ingrese contraseña</label>
                        <input type="password" method="post" class="form-control" placeholder="contraseña" name="contraseña">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn-primary">ingresar</button>
                        <a href="administrador/estudiante.jsp"/><button type="button" class="btn-primary">registrarse</button>
                    </div>
                </form>
            </div>
            
        </div>
        <%! String a,b,c;%>
            <%-- start web service invocation --%><hr/>
    <%  
        if((request.getParameter("usuario")!=null)){
        String usuarios = request.getParameter("usuario");
        String contraseña= request.getParameter("contraseña");
        
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultausuario = String.format("select * from usuario where nombre='%s'",usuarios);
	// TODO process result here
	java.util.List<ipc2.Usuario> result = port.consultarUsuario(consultausuario);
	ipc2.Usuario u = result.get(0);
         a=u.getNombre();
        b=u.getContraseña();
        c= u.getTipousuario();
        
        if((usuarios.equals(a))&&(contraseña.equals(b))){
            if(c.equals("administrador")){
                 %><jsp:forward page="principal.jsp"/><%
             }
                if(c.equals("moderador")){
                %><jsp:forward page="moderador.jsp"/><%
               }
               if(c.equals("estudiante")){
                 %><jsp:forward page="usuarioestudiante.jsp"/><%
                }
        }
        if((usuarios.equals(a))^(contraseña.equals(b))){
%><h4><a href="index.jsp"/>Contraseña Incorrecta</h4><%
        }
        
        

    } catch (Exception ex) {
	
    }
        if(!(usuarios.equals(a))){
            response.sendRedirect("estudiante.jsp");
        }
}
    %>
    <%-- end web service invocation --%><hr/>

        
     <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>