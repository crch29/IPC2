<%-- 
    Document   : gestionarcurso
    Created on : 27/12/2015, 10:31:54 AM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>GESTIONAR CURSOS</title>
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
            <label name="codigo">Codigo curso</label>
            <input type="text" name="codigo">
            <input type="submit" value="buscar" name="buscar" />
            </div>
        
                <%! 
                    String a;
                    String b;
                    int codigocurso;
                %>
        
                 <%-- start web service invocation --%><hr/>
    <%
        if(request.getParameter("codigo")!=null){
        String codigoc= request.getParameter("codigo");
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultacurso = String.format("select * from curso where cod_curso=%s;", codigoc);
	// TODO process result here
	java.util.List<ipc2.Curso> result = port.consultarcurso(consultacurso);
        %><div class="container"><table class="table table-bordered table-responsive table-striped"><%
        for(int i=0;i<result.size();i++){
            ipc2.Curso cr=result.get(i);
            %><tr><td><h4>Campos</h4></td><td><h4>Datos Nuevos</h4></td></tr><%
            
            %><tr><td><h6>NOMBRE</h6></td><td><input type="text" name="nombre" value="<%out.println(cr.getNombre());%>"></td></tr><%
            %><tr><td><h6>CARRERA</h6></td><td><input type="text" name="carrera" value="<%out.println(cr.getCarrera());%>"></td></tr><%
            
                
                codigocurso =cr.getCodcurso();
        }
%></table></div><%   
                a=request.getParameter("nombre");
                b=request.getParameter("carrera");
                
                
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
	java.lang.String instruccion = String.format("update curso set nombre='%s', carrera='%s' where cod_curso=%s;",a,b,codigocurso);
	port.ingresar(instruccion);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
    


%></form>

    
        
      <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
