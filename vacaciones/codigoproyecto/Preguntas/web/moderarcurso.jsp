<%-- 
    Document   : moderarcurso
    Created on : 27/12/2015, 04:25:35 AM
    Author     : carlosrene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <title>Moderar Curso</title>
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
            java.util.List<String> listadocodigoss = new java.util.ArrayList<String>();
            java.util.List<String> listadoestadoss = new java.util.ArrayList<String>();
           
        %>
   
        <form role="form">
            
            <div class="form-group col-md-9 center-block">     
 
    <%
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultacurso = "select * from curso where estado=true;";
	// TODO process result here
	java.util.List<ipc2.Curso> result = port.consultarcurso(consultacurso);
        %><table class="table table-striped table-bordered table-condensed table-responsive"><tr>
                <td>codigo curso</td>
                <td>nombre</td>
                <td>carrera</td>
                <td>aprobar</td>
                
        </tr>
            <%
                
for(int i=0;i<result.size();i++){
            %><tr><%
            ipc2.Curso cr = result.get(i);
            
            %>
                    <td><%out.println(cr.getCodcurso());%></td>
                    <td><%out.println(cr.getNombre());%></td>
                    <td><%out.println(cr.getCarrera());%></td>
                    <td><select name="<%=cr.getCodcurso()%>" class="form-group"><option value="true">true</option><option value="false">false</option></select> </td>
                     <% 
                         String cod= String.format("%s", cr.getCodcurso());
                         String esti=request.getParameter(cod);
                         listadoestadoss.add(esti);
                         listadocodigoss.add(cod);
                     %>
            </tr><%
             
    }
%></table><%
	
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
        
            for(int i=0;i<listadocodigoss.size();i++){
                String esta=listadoestadoss.get(i);
                String cod=listadocodigoss.get(i);
                try {
                    ipc2.General_Service servicios = new ipc2.General_Service();
                    ipc2.General portos = servicios.getGeneralPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String instruccion = String.format("update curso set estado=%s where cod_curso=%s;",esta,cod);
                    portos.ingresar(instruccion);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
                
            }
            

    



    %>
    
     
    
    
    

    
    
 <button type="submit" class="btn btn-primary">GUARDAR CAMBIOS</button>
    <button type="submit" class="btn btn-default"><a href="moderarcurso.jsp">ACTUALIZAR</a></button> 

    
            </div></form>
            
 
 

 
    



            
          <script src="js/jquery.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
