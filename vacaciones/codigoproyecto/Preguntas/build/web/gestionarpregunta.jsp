<%-- 
    Document   : gestionarpregunta
    Created on : 26/12/2015, 11:41:08 AM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Gestionar Pregunta</title>
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
            <div class="form-group col-lg-offset-5">
            <label name="cod_preguntas">Codigo pregunta</label>
            <input type="text" name="cod_pregunta">
            <input type="submit" value="buscar" name="buscar" />
            </div>
        
                <%! 
                    String a;
                    String b,c,d,e,f,g;
                    int codigop;
                %>
        
                 <%-- start web service invocation --%><hr/>
    <%
        if(request.getParameter("cod_pregunta")!=null){
        String cod_curso= request.getParameter("cod_pregunta");
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cadenaconsulta = String.format("select * from pregunta where cod_pregunta=%s;",cod_curso);
	// TODO process result here
	java.util.List<ipc2.Pregunta> result = port.generarconsultapreguntas(cadenaconsulta);
        %><div class="container"><table class="table table-bordered table-responsive table-striped"><%
        for(int i=0;i<result.size();i++){
            ipc2.Pregunta pr =result.get(i);
            %><tr><td><h4>Campos</h4></td><td><h4>Datos Nuevos</h4></td></tr><%
            %><tr><td><h6>Codigo Curso</h6></td><td><input type="text" name="codigocurso" value="<%out.println(pr.getCodcurso());%>"></td></tr><%
            %><tr><td><h6>Descripcion</h6></td><td><input type="text" name="descripcion" value="<%out.println(pr.getDescripcion());%>"></td></tr><%
            %><tr><td><h6>Respuesta</h6></td><td><input type="text" name="respuesta" value="<%out.println(pr.getRespuesta());%>"></td></tr><%
            %><tr><td><h6>Respuesta 1</h6></td><td><input type="text" name="respuesta1" value="<%out.println(pr.getRespuesta1());%>"></td></tr><%
            %><tr><td><h6>Respuesta 2</h6></td><td><input type="text" name="respuesta2" value="<%out.println(pr.getRespuesta2());%>"></td></tr><%
            %><tr><td><h6>Nivel</h6></td><td><input type="text" name="nivel" value="<%out.println(pr.getNivel());%>"></td></tr><%
            %><tr><td><h6>Puntos Experiencia</h6></td><td><input type="text" name="puntosexp" value="<%out.println(pr.getPuntos());%>"></td></tr><%
                
                codigop=pr.getCodpregunta();
        }
%></table></div><%   
                a=request.getParameter("codigocurso");
                b=request.getParameter("descripcion");
                c=request.getParameter("respuesta");
                d=request.getParameter("respuesta1");
                e=request.getParameter("respuesta2");
                f=request.getParameter("nivel");
                g=request.getParameter("puntosexp");
                
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
	java.lang.String instruccion = String.format("update pregunta set cod_curso=%s, descripcion='%s', respuesta='%s', respuesta1='%s', respuesta2='%s', nivel=%s, puntos_exp; where cod_pregunta=%s;",a,b,c,d,e,f,g,codigop);
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
