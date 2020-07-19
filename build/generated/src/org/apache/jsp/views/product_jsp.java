package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.Node.Entity.Product;
import java.util.ArrayList;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Product</title>\r\n");
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
      out.write("            .color-card{\r\n");
      out.write("                background-color:  #ffc7e5;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            h5{\r\n");
      out.write("                font-family: sans-serif;\r\n");
      out.write("                font-size: 10px;\r\n");
      out.write("                font-weight: bold;\r\n");
      out.write("               padding-bottom: 10px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .card{\r\n");
      out.write("                border : 1px solid white;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .card-text{\r\n");
      out.write("                display: block;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            body{\r\n");
      out.write("                background-color: #eee;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .class-control{\r\n");
      out.write("                margin-top: 70px !important;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .products  div {\r\n");
      out.write("                width: 80% !important; \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .filter{\r\n");
      out.write("                width: 50% !important;\r\n");
      out.write("                height: 28vh;\r\n");
      out.write("                border : 4px solid lightsteelblue;\r\n");
      out.write("                margin-right: 20px;\r\n");
      out.write("                padding: 10px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .filter-name{\r\n");
      out.write("                font-size: 22px;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                font-weight: bold;\r\n");
      out.write("                color: darkslateblue;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .pd-price{\r\n");
      out.write("             \r\n");
      out.write("               \r\n");
      out.write("                    font-family: monospace;\r\n");
      out.write("               \r\n");
      out.write("              \r\n");
      out.write("              \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

           // ArrayList<Product> listProduct = (ArrayList<Product>)request.getAttribute("listProduct");
           // pageContext.setAttribute("listProduct", listProduct);

        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container class-control\">\r\n");
      out.write("            <h1 class=\"text-center font-weight-bold\">Product</h1>\r\n");
      out.write("            <hr>\r\n");
      out.write("            <div class=\"row \">\r\n");
      out.write("                <div class=\" col-md-3 filter\">\r\n");
      out.write("                    <h3 class=\"filter-name\">Filter Product</h3>\r\n");
      out.write("                    <form class=\"form my-2 my-lg-0 \">\r\n");
      out.write("                        <input class=\"form-control mr-sm-2 mb-2 \" size=\"10\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                        <button class=\"btn btn-outline-success my-2 my-sm-0 \"  type=\"submit\">Search</button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                    <div style=\"padding-top: 10px\" class=\"btn-group dropright\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                           Sort by:\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <div class=\"dropdown-menu\">\r\n");
      out.write("                           <button class=\"dropdown-item \"  type=\"button\">A-Z</button>\r\n");
      out.write("                            <button class=\"dropdown-item \"  type=\"button\">Z-A</button>\r\n");
      out.write("                             <button class=\"dropdown-item \"  type=\"button\">Highest Money</button>\r\n");
      out.write("                              <button class=\"dropdown-item \"  type=\"button\">Lowest Money</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row col-md-9 product\">\r\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("i");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listProduct}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("       \r\n");
          out.write("                        <div class=\"col-md-4 mb-4\">\r\n");
          out.write("                            <div class=\"card h-100 \">\r\n");
          out.write("                                <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("/img/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.imgID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(".jpg\" class=\"card-img-top\"/>\r\n");
          out.write("                                <div class=\"card-body  color-card\">\r\n");
          out.write("                                    <div class=\"card-text \">\r\n");
          out.write("                                        <h5 class=\"card-title\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\r\n");
          out.write("                                        <span class=\"d-flex justify-content-end pd-price\">Price: $");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\r\n");
          out.write("                                    </div>\r\n");
          out.write("                                    <div class=\"card-text d-flex justify-content-between btn-card\">\r\n");
          out.write("                                        \r\n");
          out.write("                                        <button type=\"button\" onclick=\"window.location.href = '");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("/ProductDetailController?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("'\"\r\n");
          out.write("                                                class=\"btn btn-light\"style=\"font-size: 14px\"> Order </button>\r\n");
          out.write("                                    </div>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                </div>\r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
