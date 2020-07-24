package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import com.Node.DAO.ProductDAO;

public final class AdminUI_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"admin.css\">\n");
      out.write("        <style>\n");
      out.write("            ");
      out.write("/*\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("*/\n");
      out.write("/* \n");
      out.write("    Created on : Jul 22, 2020, 9:14:21 PM\n");
      out.write("    Author     : Admin\n");
      out.write("*/\n");
      out.write("\n");
      out.write("#navbarNav{\n");
      out.write("    font-size: 100%;\n");
      out.write("    font-weight: bold;\n");
      out.write("    text-transform: uppercase;  \n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".container{\n");
      out.write("    position: relative;\n");
      out.write("    left: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".nav-item:hover{\n");
      out.write("    background-color: rgba(255, 255, 255, 0.5);\n");
      out.write("}\n");
      out.write("\n");
      out.write("body{\n");
      out.write("    background-color: #81f7f3;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <title>List</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("<body class=\"d-flex flex-row\">\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar navbar-light flex-column p-4\" style=\" background-color: #100000; width: 15vw; height: 100vh;\">\n");
      out.write("        <a class=\"navbar-brand text-white\" href=\"#\">Hi Admin</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\"\n");
      out.write("            aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse flex-column w-95\" id=\"navbarNav\">\n");
      out.write("            <ul class=\"navbar-nav flex-column w-100\">\n");
      out.write("                <li class=\"nav-item p-3 pl-4\">\n");
      out.write("                    <a class=\"nav-link text-white\" href=\"AdminUI.jsp\">\n");
      out.write("                        <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                        <span>Product List</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"insertProduct.jsp\">\n");
      out.write("                            <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                            <span>Add new product</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"BillList.jsp\">\n");
      out.write("                            <i class=\"fas fa-fw fa-tachometer-alt\"></i>\n");
      out.write("                            <span>Bill List</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active p-3 pl-4\">\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"UserList.jsp\">User List</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item p-3 pl-4\">\n");
      out.write("                        <a class=\"nav-link text-white\" href=\"homepage.jsp\">Log out</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    ");
      if (_jspx_meth_product_productTag_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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

  private boolean _jspx_meth_product_productTag_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  product:productTag
    tags.ProductTag _jspx_th_product_productTag_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(tags.ProductTag.class) : new tags.ProductTag();
    _jspx_th_product_productTag_0.setJspContext(_jspx_page_context);
    _jspx_th_product_productTag_0.setDatabase("jewellery");
    _jspx_th_product_productTag_0.setUrl("jdbc:mysql://localhost/");
    _jspx_th_product_productTag_0.setPassword("");
    _jspx_th_product_productTag_0.setUser("root");
    _jspx_th_product_productTag_0.doTag();
    return false;
  }
}
