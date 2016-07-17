<%-- 
    Document   : gestionarperfilm
    Created on : 27/12/2015, 11:06:47 PM
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
                <li class="active"><a href="moderador.jsp">Inicio</a></li>
               
                
                
               </ul>
        </div>
</nav>
        
        
        <form role="form">
            <div class="form-group col-lg-offset-5">
            <label name="carne">Carnet</label>
            <input type="text" name="carnet">
            <input type="submit" value="buscar" name="buscar" />
            </div>
        
                <%! 
                    String a;
                    String b,c,d;
                    int carne;
                %>
        
                 <%-- start web service invocation --%><hr/>
    <%
        if(request.getParameter("carnet")!=null){
        String carnet= request.getParameter("carnet");
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultaestudiante = String.format("select * from estudiante where carnet=%s;",carnet);
	// TODO process result here
	java.util.List<ipc2.Estudiante> result = port.consultarestudiante(consultaestudiante);
        %><div class="container"><table class="table table-bordered table-responsive table-striped"><%
        for(int i=0;i<result.size();i++){
            ipc2.Estudiante es=result.get(i);
            %><tr><td><h4>Campos</h4></td><td><h4>Datos Nuevos</h4></td></tr><%
            %><tr><td><h6>Nombre</h6></td><td><input type="text" name="nombre" value="<%out.println(es.getNombre());%>"></td></tr><%
            %><tr><td><h6>Apellido</h6></td><td><input type="text" name="apellido" value="<%out.println(es.getApellido());%>"></td></tr><%
            %><tr><td><h6>Carrera</h6></td><td><input type="text" name="carrera" value="<%out.println(es.getCarrera());%>"></td></tr><%
            %><tr><td><h6>Universidad</h6></td><td><input type="text" name="universidad" value="<%out.println(es.getUniversidad());%>"></td></tr><%
                
                carne=es.getCodestudiante();
        }
%></table></div><%   
                a=request.getParameter("nombre");
                b=request.getParameter("apellido");
                c=request.getParameter("carrera");
                d=request.getParameter("universidad");
                
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
}
%><form role="form">
        <div class="container center-block form-group">
            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
        </div>
<%
    
   
    
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String instruccion = String.format("update estudiante set nombre='%s', apellido='%s', carrera='%s', universidad='%s' where carnet=%s;",a,b,c,d,carne);
	port.ingresar(instruccion);
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
    


%></form>
    <%-- end web service invocation --%><hr/>
    
   

        

        
      <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>

