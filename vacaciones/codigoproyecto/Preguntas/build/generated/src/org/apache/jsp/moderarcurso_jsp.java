package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class moderarcurso_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
            java.util.List<String> listadocodigoss = new java.util.ArrayList<String>();
            java.util.List<String> listadoestadoss = new java.util.ArrayList<String>();
           
        
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
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("                <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Moderar Curso</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-success\">\n");
      out.write("        <nav role=\"navigation\" class=\"navbar navbar-default navbar-inverse\">\n");
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
      out.write("        ");
      out.write("\n");
      out.write("   \n");
      out.write("        <form role=\"form\">\n");
      out.write("            \n");
      out.write("            <div class=\"form-group col-md-9 center-block\">     \n");
      out.write(" \n");
      out.write("    ");

    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultacurso = "select * from curso where estado=true;";
	// TODO process result here
	java.util.List<ipc2.Curso> result = port.consultarcurso(consultacurso);
        
      out.write("<table class=\"table table-striped table-bordered table-condensed table-responsive\"><tr>\n");
      out.write("                <td>codigo curso</td>\n");
      out.write("                <td>nombre</td>\n");
      out.write("                <td>carrera</td>\n");
      out.write("                <td>aprobar</td>\n");
      out.write("                \n");
      out.write("        </tr>\n");
      out.write("            ");

                
for(int i=0;i<result.size();i++){
            
      out.write("<tr>");

            ipc2.Curso cr = result.get(i);
            
            
      out.write("\n");
      out.write("                    <td>");
out.println(cr.getCodcurso());
      out.write("</td>\n");
      out.write("                    <td>");
out.println(cr.getNombre());
      out.write("</td>\n");
      out.write("                    <td>");
out.println(cr.getCarrera());
      out.write("</td>\n");
      out.write("                    <td><select name=\"");
      out.print(cr.getCodcurso());
      out.write("\" class=\"form-group\"><option value=\"true\">true</option><option value=\"false\">false</option></select> </td>\n");
      out.write("                     ");
 
                         String cod= String.format("%s", cr.getCodcurso());
                         String esti=request.getParameter(cod);
                         listadoestadoss.add(esti);
                         listadocodigoss.add(cod);
                     
      out.write("\n");
      out.write("            </tr>");

             
    }

      out.write("</table>");

	
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
            

    



    
      out.write("\n");
      out.write("    \n");
      out.write("     \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write(" <button type=\"submit\" class=\"btn btn-primary\">GUARDAR CAMBIOS</button>\n");
      out.write("    <button type=\"submit\" class=\"btn btn-default\"><a href=\"moderarcurso.jsp\">ACTUALIZAR</a></button> \n");
      out.write("\n");
      out.write("    \n");
      out.write("            </div></form>\n");
      out.write("            \n");
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write(" \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("          <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
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
