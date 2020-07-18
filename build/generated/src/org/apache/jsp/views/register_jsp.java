package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <form>\r\n");
      out.write("            <div class=\"form-row\">\r\n");
      out.write("                <div class=\"col-md-6 mb-3\">\r\n");
      out.write("                    <label for=\"validationDefault01\">First name</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"validationDefault01\" value=\"Mark\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-6 mb-3\">\r\n");
      out.write("                    <label for=\"validationDefault02\">Last name</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"validationDefault02\" value=\"Otto\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-row\">\r\n");
      out.write("                <div class=\"col-md-6 mb-3\">\r\n");
      out.write("                    <label for=\"validationDefault03\">City</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"validationDefault03\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3 mb-3\">\r\n");
      out.write("                    <label for=\"validationDefault04\">State</label>\r\n");
      out.write("                    <select class=\"custom-select\" id=\"validationDefault04\" required>\r\n");
      out.write("                        <option selected disabled value=\"\">Choose...</option>\r\n");
      out.write("                        <option>...</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3 mb-3\">\r\n");
      out.write("                    <label for=\"validationDefault05\">Zip</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"validationDefault05\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("                <div class=\"form-check\">\r\n");
      out.write("                    <input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"invalidCheck2\" required>\r\n");
      out.write("                    <label class=\"form-check-label\" for=\"invalidCheck2\">\r\n");
      out.write("                        Agree to terms and conditions\r\n");
      out.write("                    </label>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button class=\"btn btn-primary\" type=\"submit\">Submit form</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    </body>\r\n");
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
