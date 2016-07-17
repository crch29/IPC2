<%-- 
    Document   : moderarpregunta
    Created on : 24/12/2015, 08:13:32 PM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <title>Moderar preguntas</title>
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
            java.util.List<String> listadocodigos = new java.util.ArrayList<String>();
            java.util.List<String> listadoestados = new java.util.ArrayList<String>();
            
        %>
   
        <form role="form">
            
            <div class="form-group col-md-9 center-block table-responsive">     
    <%
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cadenaconsulta = "select * from pregunta where estado_pregunta=false";
	// TODO process result here
	java.util.List<ipc2.Pregunta> result = port.generarconsultapreguntas(cadenaconsulta);
        %><table class="table table-striped table-bordered table-hover table-condensed"><tr>
                <td>codigo curso</td>
                <td>codigo producto</td>
                <td>pregunta</td>
                <td>respuesta</td>
                <td>respuesta alternativa</td>
                <td>tiempo para responder</td>
                <td>nivel</td>
                <td>puntos de experiencia</td>
                <td>Aprobar</td>
        </tr>
            <%
                for(int i=0;i<result.size();i++){
                    
                }
for(int i=0;i<result.size();i++){
            %><tr><%
            ipc2.Pregunta pr = result.get(i);
            
            %>
                    <td><%out.println(pr.getCodcurso());%></td>
                    <td><%out.println(pr.getCodpregunta());%></td>
                    <td><%out.println(pr.getDescripcion());%></td>
                    <td><%out.println(pr.getRespuesta());%></td>
                    <td><%out.println(pr.getRespuesta1());%></td>
                    <td><%out.println(pr.getTiempo());%></td>
                    <td><%out.println(pr.getNivel());%></td>
                    <td><%out.println(pr.getPuntos());%></td>
                    <td><select name="<%=pr.getCodpregunta()%>" class="form-group"><option value="false">false</option><option value="true">true</option></select> </td>
                     <% 
                         String cod= String.format("%s", pr.getCodpregunta());
                         String esti=request.getParameter(cod);
                         listadoestados.add(esti);
                         listadocodigos.add(cod);
                     %>
            </tr><%
             
    }
%></table><%
    
}catch (Exception ex) {
	// TODO handle custom exceptions here
    }          
       
            for(int i=0;i<listadocodigos.size();i++){
                String esta=listadoestados.get(i);
                String cod=listadocodigos.get(i);
                try {
                    ipc2.General_Service services = new ipc2.General_Service();
                    ipc2.General ports = services.getGeneralPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String instruccion = String.format("update pregunta set estado_pregunta=%s where cod_pregunta=%s;",esta,cod);
                    ports.ingresar(instruccion);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
                
            }
            

    
    %>
    <button type="submit" class="btn btn-success">Aprobar</button>
    <button type="submit" class="btn btn-default"><a href="moderarpregunta.jsp">Actualizar</a></button>        
            </div></form>
            
 
   
 
    



            
          <script src="js/jquery.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
