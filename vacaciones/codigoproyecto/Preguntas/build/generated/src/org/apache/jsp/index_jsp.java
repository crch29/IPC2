package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("                <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("        <title>INICIO</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-success\">\n");
      out.write("        <br><br><br>\n");
      out.write("        \n");
      out.write("        <div class=\"panel panel-default center-block\">\n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("                <h3 class=\"panel-title\">LOGIN</h3>\n");
      out.write("            </div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                <form name=\"login\" role=\"form\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"log\">ingrese usuario</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"usuario\" name=\"usuario\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contraseñl\">ingrese contraseña</label>\n");
      out.write("                        <input type=\"password\" class=\"form-control\" placeholder=\"contraseña\" name=\"contraseña\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <button type=\"submit\" class=\"btn-primary\">ingresar</button>\n");
      out.write("                        <a href=\"administrador/usuario.jsp\"/><button type=\"button\" class=\"btn-primary\">registrarse</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("            ");
      out.write("<hr/>\n");
      out.write("    ");

        String usuarios = request.getParameter("usuario");
        String contraseña= request.getParameter("contraseña");
        
        
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String consultausuario = String.format("select * from usuario where nombre='%s'",usuarios);
	// TODO process result here
	java.util.List<ipc2.Usuario> result = port.consultarUsuario(consultausuario);
	ipc2.Usuario usu= result.get(0);
        if(usu!=null){
            response.sendRedirect("administrador/cursos.jsp");
        }
        
        
       
        
       
        
    } catch (Exception ex) {
	
    }
    
      out.write("\n");
      out.write("    ");
      out.write("<hr/>\n");
      out.write("\n");
      out.write("        \n");
      out.write("     <script src=\"js/jquery.js\"></script>\n");
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
