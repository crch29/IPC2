package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gestionarpregunta_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
                    String a;
                    String b,c,d,e,f,g;
                    int codigop;
                
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("         <!-- Latest compiled and minified CSS -->\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Gestionar Pregunta</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-success\">\n");
      out.write("           <nav role=\"navigation\" class=\"navbar navbar-default navbar-inverse\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("            <button type=\"button\" data-target=\"#navbarCollapse\" data-toggle=\"collapse\" class=\"navbar-toggle\">\n");
      out.write("                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("            </button>\n");
      out.write("            <a href=\"#\" class=\"navbar-brand\">Preguntas</a>\n");
      out.write("        </div>\n");
      out.write(" \n");
      out.write("        <div id=\"navbarCollapse\" class=\"collapse navbar-collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                <li class=\"active\"><a href=\"principal.jsp\">Inicio</a></li>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("               </ul>\n");
      out.write("        </div>\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form role=\"form\">\n");
      out.write("            <div class=\"form-group col-lg-offset-5\">\n");
      out.write("            <label name=\"cod_preguntas\">Codigo pregunta</label>\n");
      out.write("            <input type=\"text\" name=\"cod_pregunta\">\n");
      out.write("            <input type=\"submit\" value=\"buscar\" name=\"buscar\" />\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("                ");
      out.write("\n");
      out.write("        \n");
      out.write("                 ");
      out.write("<hr/>\n");
      out.write("    ");

        if(request.getParameter("cod_pregunta")!=null){
        String cod_curso= request.getParameter("cod_pregunta");
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cadenaconsulta = String.format("select * from pregunta where cod_pregunta=%s;",cod_curso);
	// TODO process result here
	java.util.List<ipc2.Pregunta> result = port.generarconsultapreguntas(cadenaconsulta);
        
      out.write("<div class=\"container\"><table class=\"table table-bordered table-responsive table-striped\">");

        for(int i=0;i<result.size();i++){
            ipc2.Pregunta pr =result.get(i);
            
      out.write("<tr><td><h4>Campos</h4></td><td><h4>Datos Nuevos</h4></td></tr>");

            
      out.write("<tr><td><h6>Codigo Curso</h6></td><td><input type=\"text\" name=\"codigocurso\" value=\"");
out.println(pr.getCodcurso());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Descripcion</h6></td><td><input type=\"text\" name=\"descripcion\" value=\"");
out.println(pr.getDescripcion());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Respuesta</h6></td><td><input type=\"text\" name=\"respuesta\" value=\"");
out.println(pr.getRespuesta());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Respuesta 1</h6></td><td><input type=\"text\" name=\"respuesta1\" value=\"");
out.println(pr.getRespuesta1());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Respuesta 2</h6></td><td><input type=\"text\" name=\"respuesta2\" value=\"");
out.println(pr.getRespuesta2());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Nivel</h6></td><td><input type=\"text\" name=\"nivel\" value=\"");
out.println(pr.getNivel());
      out.write("\"></td></tr>");

            
      out.write("<tr><td><h6>Puntos Experiencia</h6></td><td><input type=\"text\" name=\"puntosexp\" value=\"");
out.println(pr.getPuntos());
      out.write("\"></td></tr>");

                
                codigop=pr.getCodpregunta();
        }

      out.write("</table></div>");
   
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

      out.write("<form role=\"form\">\n");
      out.write("        <div class=\"container center-block form-group\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Guardar Cambios</button>\n");
      out.write("        </div>\n");

    
   
    
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String instruccion = String.format("update pregunta set cod_curso=%s, descripcion='%s', respuesta='%s', respuesta1='%s', respuesta2='%s', nivel=%s, puntos_exp; where cod_pregunta=%s;",a,b,c,d,e,f,g,codigop);
	port.ingresar(instruccion);
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
    



      out.write("</form>\n");
      out.write("    ");
      out.write("<hr/>\n");
      out.write("    \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("        \n");
      out.write("      <script src=\"js/jquery.js\"></script>\n");
      out.write("     <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
