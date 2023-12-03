package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css_login/style.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"img js-fullheight\" style=\"background-image: url(images/bg.jpg);\">\n");
      out.write("        <section class=\"ftco-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-md-6 text-center mb-5\">\n");
      out.write("                        <h2 class=\"heading-section\">Welcome</h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-md-6 col-lg-4\">\n");
      out.write("                        <div class=\"login-wrap p-0\">\n");
      out.write("                            <h3 class=\"mb-4 text-center\">Have an account?</h3>\n");
      out.write("                            <form action=\"MainControl\" method=\"post\" class=\"signin-form\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"userID\" placeholder=\"Username\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input id=\"password-field\" type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("                                    <span toggle=\"#password-field\" class=\"fa fa-fw fa-eye field-icon toggle-password\"></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"error-message\" style=\"color: white; text-align: center; margin-top: -5px; margin-bottom: 10px; ");
 if (request.getAttribute("errorMessage") != null) { 
      out.write(" display: block; ");
 } else { 
      out.write(" display: none; ");
 } 
      out.write("\">\n");
      out.write("                                    ");
 if (request.getAttribute("errorMessage") != null) {
      out.write("\n");
      out.write("                                    ");
      out.print( request.getAttribute("errorMessage"));
      out.write("\n");
      out.write("                                    ");
 }
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <button style=\"opacity: 80%;\" type=\"submit\" name=\"action\" value=\"Sign In\" \" class=\"form-control btn btn-primary submit px-3\">Sign In</button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <button style=\"background-color: white; opacity: 50%;\" type=\"submit\"  class=\"form-control btn btn-primary submit px-3\" onclick=\"redirectToSignup()\">Sign Up</button>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                \n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        </form>\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <script src=\"js_login/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js_login/popper.js\"></script>\n");
      out.write("    <script src=\"js_login/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js_login/main.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        function redirectToSignup() {\n");
      out.write("            window.location.href = 'signup.jsp';\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
