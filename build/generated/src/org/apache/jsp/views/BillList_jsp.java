package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import com.Node.DAO.ProductDAO;

public final class BillList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/WEB-INF/tlds/mylib.tld");
    _jspx_dependants.add("/css/admin.css");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\"\r\n");
      out.write("              integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"admin.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            ");
      out.write("/*\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("*/\r\n");
      out.write("/* \r\n");
      out.write("    Created on : Jul 22, 2020, 9:14:21 PM\r\n");
      out.write("    Author     : Admin\r\n");
      out.write("*/\r\n");
      out.write("\r\n");
      out.write("#navbarNav{\r\n");
      out.write("    font-size: 100%;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    text-transform: uppercase;  \r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".container{\r\n");
      out.write("    position: relative;\r\n");
      out.write("    left: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".nav-item:hover{\r\n");
      out.write("    background-color: rgba(255, 255, 255, 0.5);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("    background-color: #81f7f3;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("        <title>Bill List</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("<body class=\"d-flex flex-row\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar navbar-light flex-column p-4\" style=\" background-color: #100000; width: 15vw; height: 100vh;\">\r\n");
      out.write("        <a class=\"navbar-brand text-white\" href=\"#\">Hi Admin</a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\"\r\n");
      out.write("            aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse flex-column w-95\" id=\"navbarNav\">\r\n");
      out.write("            <ul class=\"navbar-nav flex-column w-100\">\r\n");
      out.write("                <li class=\"nav-item p-3 pl-4\">\r\n");
      out.write("                    <a class=\"nav-link text-white\" href=\"AdminUI.jsp\">\r\n");
      out.write("                        <i class=\"fas fa-fw fa-tachometer-alt\"></i>\r\n");
      out.write("                        <span>Product List</span>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </li>\r\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\r\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"insertProduct.jsp\">\r\n");
      out.write("                            <i class=\"fas fa-fw fa-tachometer-alt\"></i>\r\n");
      out.write("                            <span>Add new product</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\r\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"BillList.jsp\">\r\n");
      out.write("                            <i class=\"fas fa-fw fa-tachometer-alt\"></i>\r\n");
      out.write("                            <span>Bill List</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item active p-3 pl-4\">\r\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"UserList.jsp\">User List</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\r\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"homepage.jsp\">Log out</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    ");
      if (_jspx_meth_mytag_billTag_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_mytag_billTag_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  mytag:billTag
    tags.BillTag _jspx_th_mytag_billTag_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(tags.BillTag.class) : new tags.BillTag();
    _jspx_th_mytag_billTag_0.setJspContext(_jspx_page_context);
    _jspx_th_mytag_billTag_0.setDatabase("jewellery");
    _jspx_th_mytag_billTag_0.setUrl("jdbc:mysql://localhost/");
    _jspx_th_mytag_billTag_0.setPassword("");
    _jspx_th_mytag_billTag_0.setUser("root");
    _jspx_th_mytag_billTag_0.doTag();
    return false;
  }
}
