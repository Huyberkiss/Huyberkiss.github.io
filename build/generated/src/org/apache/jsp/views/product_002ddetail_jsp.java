package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_002ddetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Product-page</title>\r\n");
      out.write("        <link rel=\"stylesheet\"\r\n");
      out.write("              href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\">\r\n");
      out.write("        <script\r\n");
      out.write("        src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("        <script\r\n");
      out.write("        src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\r\n");
      out.write("        <script\r\n");
      out.write("        src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\"\r\n");
      out.write("              href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .container{\r\n");
      out.write("                margin-top: 100px;\r\n");
      out.write("                padding : 50px;\r\n");
      out.write("                background-color: #fff;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            body{\r\n");
      out.write("                background-color: #eee; \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            h1{\r\n");
      out.write("                margin-bottom: 20px; \r\n");
      out.write("                font-weight: bold;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .newarrival{\r\n");
      out.write("                background: green;\r\n");
      out.write("                width: 50px;\r\n");
      out.write("                color: white;\r\n");
      out.write("                font-size: 12px;\r\n");
      out.write("                font-weight: bold;\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            button{\r\n");
      out.write("                width: 40%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <h1 class=\"text-center\">Product detail</h1>\r\n");
      out.write("            <hr>\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-5\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/img/carousel3.jpg\" class=\"d-block w-100\" alt=\"...\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-7\">\r\n");
      out.write("                    <p class=\"newarrival text-center\">HOT</p>\r\n");
      out.write("                    <h2 style=\"color: #555\">Day chuyen dat gia </h2>\r\n");
      out.write("                    <p><b>product code:</b> #hihi02</p>\r\n");
      out.write("                    <p><b>Availability:</b> In stock</p>\r\n");
      out.write("                    <p><b>Condition:</b> New</p>\r\n");
      out.write("                    <p><b>Type:</b> day chuyen </p>\r\n");
      out.write("                    <p><b>Brand:</b> Company</p>\r\n");
      out.write("                    <p><b>Price:</b> $200</p>\r\n");
      out.write("                    <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn  btn-dark btn-lg\" onclick=\"window.location.href='../ShoppingCartController'\">Order now</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
