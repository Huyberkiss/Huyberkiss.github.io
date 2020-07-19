package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shopping_002dcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Shopping Cart</title>\r\n");
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
      out.write("\r\n");
      out.write("        <style>\r\n");
      out.write("            body {\r\n");
      out.write("                background: #eecda3;\r\n");
      out.write("                background: -webkit-linear-gradient(to right, #eecda3, #ef629f);\r\n");
      out.write("                background: linear-gradient(to right, #eecda3, #ef629f);\r\n");
      out.write("                min-height: 100vh;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"px-4 px-lg-0\">\r\n");
      out.write("            <!-- For demo purpose -->\r\n");
      out.write("            <div class=\"container text-white py-5 text-center\">\r\n");
      out.write("                <h1 class=\"display-4\"> Shopping Cart</h1>\r\n");
      out.write("                <p class=\"lead mb-0\">Your product selected here </p>\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- End -->\r\n");
      out.write("\r\n");
      out.write("            <div class=\"pb-5\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12 p-5 bg-white rounded shadow-sm mb-5\">\r\n");
      out.write("\r\n");
      out.write("                            <!-- Shopping cart table -->\r\n");
      out.write("                            <div class=\"table-responsive\">\r\n");
      out.write("                                <table class=\"table\">\r\n");
      out.write("                                    <thead>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th scope=\"col\" class=\"border-0 bg-light\">\r\n");
      out.write("                                                <div class=\"p-2 px-3 text-uppercase\">Product</div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                            <th scope=\"col\" class=\"border-0 bg-light\">\r\n");
      out.write("                                                <div class=\"py-2 text-uppercase\">Price</div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                            <th scope=\"col\" class=\"border-0 bg-light\">\r\n");
      out.write("                                                <div class=\"py-2 text-uppercase\">Quantity</div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                            <th scope=\"col\" class=\"border-0 bg-light\">\r\n");
      out.write("                                                <div class=\"py-2 text-uppercase\">Remove</div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </thead>\r\n");
      out.write("                                    <tbody>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th scope=\"row\" class=\"border-0\">\r\n");
      out.write("                                                <div class=\"p-2\">\r\n");
      out.write("                                                    <img src=\"https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg\" alt=\"\" width=\"70\" class=\"img-fluid rounded shadow-sm\">\r\n");
      out.write("                                                    <div class=\"ml-3 d-inline-block align-middle\">\r\n");
      out.write("                                                        <h5 class=\"mb-0\"> <a href=\"#\" class=\"text-dark d-inline-block align-middle\">Timex Unisex Originals</a></h5><span class=\"text-muted font-weight-normal font-italic d-block\">Category: Watches</span>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                            <td class=\"border-0 align-middle\"><strong>$79.00</strong></td>\r\n");
      out.write("                                            <td class=\"border-0 align-middle\"><strong>3</strong></td>\r\n");
      out.write("                                            <td class=\"border-0 align-middle\"><a href=\"#\" class=\"text-dark\"><i class=\"fa fa-trash\"></i></a></td>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th scope=\"row\">\r\n");
      out.write("                                                <div class=\"p-2\">\r\n");
      out.write("                                                    <img src=\"https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-3_cexmhn.jpg\" alt=\"\" width=\"70\" class=\"img-fluid rounded shadow-sm\">\r\n");
      out.write("                                                    <div class=\"ml-3 d-inline-block align-middle\">\r\n");
      out.write("                                                        <h5 class=\"mb-0\"><a href=\"#\" class=\"text-dark d-inline-block\">Lumix camera lense</a></h5><span class=\"text-muted font-weight-normal font-italic\">Category: Electronics</span>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </th>\r\n");
      out.write("                                            <td class=\"align-middle\"><strong>$79.00</strong></td>\r\n");
      out.write("                                            <td class=\"align-middle\"><strong>3</strong></td>\r\n");
      out.write("                                            <td class=\"align-middle\"><a href=\"#\" class=\"text-dark\"><i class=\"fa fa-trash\"></i></a>\r\n");
      out.write("                                            </td>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th scope=\"row\">\r\n");
      out.write("                                                <div class=\"p-2\">\r\n");
      out.write("                                                    <img src=\"https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-2_qxjis2.jpg\" alt=\"\" width=\"70\" class=\"img-fluid rounded shadow-sm\">\r\n");
      out.write("                                                    <div class=\"ml-3 d-inline-block align-middle\">\r\n");
      out.write("                                                        <h5 class=\"mb-0\"> <a href=\"#\" class=\"text-dark d-inline-block\">Gray Nike running shoe</a></h5><span class=\"text-muted font-weight-normal font-italic\">Category: Fashion</span>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            <td class=\"align-middle\"><strong>$79.00</strong></td>\r\n");
      out.write("                                            <td class=\"align-middle\"><strong>3</strong></td>\r\n");
      out.write("                                            <td class=\"align-middle\"><a href=\"#\" class=\"text-dark\"><i class=\"fa fa-trash\"></i></a>\r\n");
      out.write("                                            </td>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </tbody>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- End -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row py-5 p-4 bg-white rounded shadow-sm\">\r\n");
      out.write("                        <div class=\"col-lg-6\">\r\n");
      out.write("                            <div class=\"bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold\">Coupon code</div>\r\n");
      out.write("                            <div class=\"p-4\">\r\n");
      out.write("                                <p class=\"font-italic mb-4\">If you have a coupon code, please enter it in the box below</p>\r\n");
      out.write("                                <div class=\"input-group mb-4 border rounded-pill p-2\">\r\n");
      out.write("                                    <input type=\"text\" placeholder=\"Apply coupon\" aria-describedby=\"button-addon3\" class=\"form-control border-0\">\r\n");
      out.write("                                    <div class=\"input-group-append border-0\">\r\n");
      out.write("                                        <button id=\"button-addon3\" type=\"button\" class=\"btn btn-dark px-4 rounded-pill\"><i class=\"fa fa-gift mr-2\"></i>Apply coupon</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                           \r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-lg-6\">\r\n");
      out.write("                            <div class=\"bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold\">Order summary </div>\r\n");
      out.write("                            <div class=\"p-4\">\r\n");
      out.write("                                <p class=\"font-italic mb-4\">Shipping and additional costs are calculated based on values you have entered.</p>\r\n");
      out.write("                                <ul class=\"list-unstyled mb-4\">\r\n");
      out.write("                                    <li class=\"d-flex justify-content-between py-3 border-bottom\"><strong class=\"text-muted\">Order Subtotal </strong><strong>$390.00</strong></li>\r\n");
      out.write("                                    <li class=\"d-flex justify-content-between py-3 border-bottom\"><strong class=\"text-muted\">Shipping and handling</strong><strong>$10.00</strong></li>\r\n");
      out.write("                                    <li class=\"d-flex justify-content-between py-3 border-bottom\"><strong class=\"text-muted\">Tax</strong><strong>$0.00</strong></li>\r\n");
      out.write("                                    <li class=\"d-flex justify-content-between py-3 border-bottom\"><strong class=\"text-muted\">Total</strong>\r\n");
      out.write("                                        <h5 class=\"font-weight-bold\">$400.00</h5>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul><a href=\"#\" class=\"btn btn-dark rounded-pill py-2 btn-block\">Procceed to checkout</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
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
