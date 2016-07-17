package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class usuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("         <!-- Latest compiled and minified CSS -->\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Principal Estudiante</title>\n");
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
      out.write("               <li class=\"dropdown\">\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" data-hover=\"dropdown\">\n");
      out.write("                     Administrador <b></b>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"#\">Mi Cuenta</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Email</a></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Password</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("                </li> \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" data-hover=\"dropdown\">\n");
      out.write("                     Estudiante <b></b>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"#\">Mi Cuenta</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Email</a></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Password</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("                </li> \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" data-hover=\"dropdown\">\n");
      out.write("                     Moderador <b></b>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"#\">Mi Cuenta</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Email</a></li>\n");
      out.write("                    <li><a href=\"#\">Cambiar Password</a></li>\n");
      out.write("                    <li class=\"divider\"></li>\n");
      out.write("                    <li><a href=\"#\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("                </li>  \n");
      out.write("               </ul>\n");
      out.write("        </div>\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <form name=\"pregunta\" role=\"form\">\n");
      out.write("         <div class=\"text-center container\">\n");
      out.write("          <h1>USUARIOS</h1> \n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              \n");
      out.write("              <table class=\"table table-striped table-bordered  table-condensed\">\n");
      out.write("                  \t\t<tr>\n");
      out.write("                  \t\t\t<td><h5>CARNET</h5></td><td>");

            
            try {
            ipc2.General_Service service = new ipc2.General_Service();
            ipc2.General port = service.getGeneralPort();
             // TODO initialize WS operation arguments here
            java.lang.String consulta = "select * from estudiante;";
            java.lang.String parametro = "carnet";
            // TODO process result here
            java.util.List<java.lang.Object> result = port.consultalistas(consulta, parametro);
            
      out.write(" <select name=\"carnet\" class=\"form-group\">");

                for(int i=0;i<result.size();i++){
                    
      out.write("<option>");
      out.print(result.get(i));
      out.write("</option>");

                }
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
        
      out.write("</select></td>\n");
      out.write("                  \t\t</tr>\n");
      out.write("                  \t\t<tr>\n");
      out.write("                  \t\t\t<td><h5>NICKNAME</h5></td><td><input type=\"text\" name=\"nickname\"></td>\n");
      out.write("                  \t\t</tr>\n");
      out.write("                  \t\t<tr>\n");
      out.write("                  \t\t\t<td><h5>CONTRASEÑA</h5></td><td><input type=\"password\" name=\"contraseña\"></td>\n");
      out.write("                  \t\t</tr>\n");
      out.write("             </table>\n");
      out.write("         \n");
      out.write("            <button class=\"btn btn-primary\" type=\"submit\" name=\"enviar\">CREAR USUARIO</button>\n");
      out.write("                    \n");
      out.write("           </div>\n");
      out.write(" \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("      ");

          if(request.getParameter("nickname")!=null){
            String carnet = request.getParameter("carnet");
            String nickname = request.getParameter("nickname");
            String contraseña = request.getParameter("contraseña");
            try {
                ipc2.General_Service service = new ipc2.General_Service();
                ipc2.General port = service.getGeneralPort();
                 // TODO initialize WS operation arguments here
                java.lang.String instruccion = String.format("insert into usuario(carnet,nombre,contraseña) values(%s,'%s','%s');",carnet,nickname,contraseña);
                port.ingresar(instruccion);
                port.cerrarconexion();
            } catch (Exception ex) {
                
            }
          }
    
      out.write("\n");
      out.write("       </form>\n");
      out.write("\n");
      out.write("        \n");
      out.write("      <script src=\"js/jquery.js\"></script>\n");
      out.write("     <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
