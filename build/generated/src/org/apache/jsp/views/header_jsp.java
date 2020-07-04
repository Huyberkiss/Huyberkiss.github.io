package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/css/header.css");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <style>\r\n");
      out.write("            ");
      out.write("body{\n");
      out.write("\tfont-family: sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .nav-link{\n");
      out.write("\tfont-size: 14px;\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("\tpadding: 0 20px !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar-toogler{\n");
      out.write("\toutline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bg-black{\n");
      out.write("\tbackground: #000;\n");
      out.write("}\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <nav class=\"navbar navbar-expand-sm navbar-dark bg-black fixed-top\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <a href=\"#\" class=\"navbar-brand\">BerKissG</a>\r\n");
      out.write("                <button class=\"navbar-toggler\" data-toggle=\"collapse\"\r\n");
      out.write("                        data-target=\"#navbarCollapse\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">\r\n");
      out.write("                    <ul class=\"navbar-nav ml-auto \">\r\n");
      out.write("                        <li class=\"nav-item active\"><a href=\"#\" class=\"nav-link\">Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"#\" class=\"nav-link\">Products</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"#\" class=\"nav-link\">About</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"#\" class=\"nav-link\">Contact</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"#\" class=\"nav-link\"> <i\r\n");
      out.write("                                    class=\"fa fa-shopping-cart fa-2x\"></i>\r\n");
      out.write("                            </a></li>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"dropdown\">\r\n");
      out.write("                            <button class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">Dropdown Example\r\n");
      out.write("                                <span class=\"caret\"></span></button>\r\n");
      out.write("                            <ul class=\"dropdown-menu\">\r\n");
      out.write("                                <li><a href=\"#\">HTML</a></li>\r\n");
      out.write("                                <li><a href=\"#\">CSS</a></li>\r\n");
      out.write("                                <li><a href=\"#\">JavaScript</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <li class=\"nav-item\"><a href=\"../views/login.jsp\" class=\"nav-link\">\r\n");
      out.write("                                <i class=\"fa fa-user-circle-o fa-2x\" aria-hidden=\"true\"></i>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
