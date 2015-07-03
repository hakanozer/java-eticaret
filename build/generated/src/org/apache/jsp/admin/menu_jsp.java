package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"dist/css/timeline.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bower_components/morrisjs/morris.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <div class=\"navbar-default sidebar\" role=\"navigation\">\n");
      out.write("                <div class=\"sidebar-nav navbar-collapse\">\n");
      out.write("                    <ul class=\"nav\" id=\"side-menu\">\n");
      out.write("                        <li class=\"sidebar-search\">\n");
      out.write("                            <div class=\"input-group custom-search-form\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Search...\">\n");
      out.write("                                <span class=\"input-group-btn\">\n");
      out.write("                                    <button class=\"btn btn-default\" type=\"button\">\n");
      out.write("                                        <i class=\"fa fa-search\"></i>\n");
      out.write("                                    </button>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- /input-group -->\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"index.html\"><i class=\"fa fa-dashboard fa-fw\"></i> Dashboard</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-bar-chart-o fa-fw\"></i> Charts<span class=\"fa arrow\"></span></a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"flot.html\">Flot Charts</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"morris.html\">Morris.js Charts</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <!-- /.nav-second-level -->\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"tables.html\"><i class=\"fa fa-table fa-fw\"></i> Tables</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"forms.html\"><i class=\"fa fa-edit fa-fw\"></i> Forms</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-wrench fa-fw\"></i> UI Elements<span class=\"fa arrow\"></span></a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"panels-wells.html\">Panels and Wells</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"buttons.html\">Buttons</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"notifications.html\">Notifications</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"typography.html\">Typography</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"icons.html\"> Icons</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"grid.html\">Grid</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <!-- /.nav-second-level -->\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-sitemap fa-fw\"></i> Multi-Level Dropdown<span class=\"fa arrow\"></span></a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Second Level Item</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Second Level Item</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Third Level <span class=\"fa arrow\"></span></a>\n");
      out.write("                                    <ul class=\"nav nav-third-level\">\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\">Third Level Item</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\">Third Level Item</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\">Third Level Item</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\">Third Level Item</a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                    <!-- /.nav-third-level -->\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <!-- /.nav-second-level -->\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-files-o fa-fw\"></i> Sample Pages<span class=\"fa arrow\"></span></a>\n");
      out.write("                            <ul class=\"nav nav-second-level\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"blank.html\">Blank Page</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"login.html\">Login Page</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <!-- /.nav-second-level -->\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.sidebar-collapse -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("        <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("        <script src=\"bower_components/raphael/raphael-min.js\"></script>\n");
      out.write("        <script src=\"bower_components/morrisjs/morris.min.js\"></script>\n");
      out.write("        <script src=\"js/morris-data.js\"></script>\n");
      out.write("        <script src=\"dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
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
