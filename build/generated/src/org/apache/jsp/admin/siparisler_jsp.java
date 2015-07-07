package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.ResultSet;
import admin.data;

public final class siparisler_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/admin/header.jsp");
    _jspx_dependants.add("/admin/menu.jsp");
    _jspx_dependants.add("/admin/footer.jsp");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("    <title>Admin Paneli</title>\r\n");
      out.write("    <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/timeline.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Navigation -->\r\n");
      out.write("    <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("        <div class=\"navbar-header\">\r\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.html\">Admin Paneli</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.navbar-header -->\r\n");
      out.write("\r\n");
      out.write("        <ul class=\"nav navbar-top-links navbar-right\">\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\r\n");
      out.write("                    <i class=\"fa fa-envelope fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu dropdown-messages\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <strong>John Smith</strong>\r\n");
      out.write("                                <span class=\"pull-right text-muted\">\r\n");
      out.write("                                    <em>Yesterday</em>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <strong>John Smith</strong>\r\n");
      out.write("                                <span class=\"pull-right text-muted\">\r\n");
      out.write("                                    <em>Yesterday</em>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <strong>John Smith</strong>\r\n");
      out.write("                                <span class=\"pull-right text-muted\">\r\n");
      out.write("                                    <em>Yesterday</em>\r\n");
      out.write("                                </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a class=\"text-center\" href=\"#\">\r\n");
      out.write("                            <strong>Read All Messages</strong>\r\n");
      out.write("                            <i class=\"fa fa-angle-right\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- /.dropdown-messages -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <!-- /.dropdown -->\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\r\n");
      out.write("                    <i class=\"fa fa-tasks fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu dropdown-tasks\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>Task 1</strong>\r\n");
      out.write("                                    <span class=\"pull-right text-muted\">40% Complete</span>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <div class=\"progress progress-striped active\">\r\n");
      out.write("                                    <div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"40\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 40%\">\r\n");
      out.write("                                        <span class=\"sr-only\">40% Complete (success)</span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>Task 2</strong>\r\n");
      out.write("                                    <span class=\"pull-right text-muted\">20% Complete</span>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <div class=\"progress progress-striped active\">\r\n");
      out.write("                                    <div class=\"progress-bar progress-bar-info\" role=\"progressbar\" aria-valuenow=\"20\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 20%\">\r\n");
      out.write("                                        <span class=\"sr-only\">20% Complete</span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>Task 3</strong>\r\n");
      out.write("                                    <span class=\"pull-right text-muted\">60% Complete</span>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <div class=\"progress progress-striped active\">\r\n");
      out.write("                                    <div class=\"progress-bar progress-bar-warning\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 60%\">\r\n");
      out.write("                                        <span class=\"sr-only\">60% Complete (warning)</span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>Task 4</strong>\r\n");
      out.write("                                    <span class=\"pull-right text-muted\">80% Complete</span>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <div class=\"progress progress-striped active\">\r\n");
      out.write("                                    <div class=\"progress-bar progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"80\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 80%\">\r\n");
      out.write("                                        <span class=\"sr-only\">80% Complete (danger)</span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a class=\"text-center\" href=\"#\">\r\n");
      out.write("                            <strong>See All Tasks</strong>\r\n");
      out.write("                            <i class=\"fa fa-angle-right\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- /.dropdown-tasks -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <!-- /.dropdown -->\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\r\n");
      out.write("                    <i class=\"fa fa-bell fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu dropdown-alerts\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <i class=\"fa fa-comment fa-fw\"></i> New Comment\r\n");
      out.write("                                <span class=\"pull-right text-muted small\">4 minutes ago</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <i class=\"fa fa-twitter fa-fw\"></i> 3 New Followers\r\n");
      out.write("                                <span class=\"pull-right text-muted small\">12 minutes ago</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <i class=\"fa fa-envelope fa-fw\"></i> Message Sent\r\n");
      out.write("                                <span class=\"pull-right text-muted small\">4 minutes ago</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <i class=\"fa fa-tasks fa-fw\"></i> New Task\r\n");
      out.write("                                <span class=\"pull-right text-muted small\">4 minutes ago</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <i class=\"fa fa-upload fa-fw\"></i> Server Rebooted\r\n");
      out.write("                                <span class=\"pull-right text-muted small\">4 minutes ago</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a class=\"text-center\" href=\"#\">\r\n");
      out.write("                            <strong>See All Alerts</strong>\r\n");
      out.write("                            <i class=\"fa fa-angle-right\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- /.dropdown-alerts -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <!-- /.dropdown -->\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\r\n");
      out.write("                    <i class=\"fa fa-user fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"dropdown-menu dropdown-user\">\r\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-user fa-fw\"></i> User Profile</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li><a href=\"#\"><i class=\"fa fa-gear fa-fw\"></i> Settings</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"divider\"></li>\r\n");
      out.write("                    <li><a href=\"cikis.jsp\"><i class=\"fa fa-sign-out fa-fw\"></i> Logout</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- /.dropdown-user -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <!-- /.dropdown -->\r\n");
      out.write("        </ul>\r\n");
      out.write("        <!-- /.navbar-top-links -->\r\n");
      out.write("    </nav>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\r\n");
      out.write("<script src=\"bower_components/raphael/raphael-min.js\"></script>\r\n");
      out.write("<script src=\"dist/js/sb-admin-2.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("    <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/timeline.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"navbar-default sidebar\" role=\"navigation\">\r\n");
      out.write("        <div class=\"sidebar-nav navbar-collapse\">\r\n");
      out.write("            <ul class=\"nav\" id=\"side-menu\">\r\n");
      out.write("                <li class=\"sidebar-search\">\r\n");
      out.write("                    <div class=\"input-group custom-search-form\">\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Ara...\">\r\n");
      out.write("                            <span class=\"input-group-btn\">\r\n");
      out.write("                                <button class=\"btn btn-default\" type=\"button\">\r\n");
      out.write("                                    <i class=\"fa fa-search\"></i>\r\n");
      out.write("                                </button>\r\n");
      out.write("                            </span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /input-group -->\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"siparisler.jsp\"><i class=\"fa fa-gift fa-fw\"></i> Sipariş Yönetimi</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"index.html\"><i class=\"fa fa-dashboard fa-fw\"></i> Dashboard</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-bar-chart-o fa-fw\"></i> Charts<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                    <ul class=\"nav nav-second-level\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"flot.html\">Flot Charts</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"morris.html\">Morris.js Charts</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /.nav-second-level -->\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"tables.html\"><i class=\"fa fa-table fa-fw\"></i> Tables</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"forms.html\"><i class=\"fa fa-edit fa-fw\"></i> Forms</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-wrench fa-fw\"></i> UI Elements<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                    <ul class=\"nav nav-second-level\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"panels-wells.html\">Panels and Wells</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"buttons.html\">Buttons</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"notifications.html\">Notifications</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"typography.html\">Typography</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"icons.html\"> Icons</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"grid.html\">Grid</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /.nav-second-level -->\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-sitemap fa-fw\"></i> Multi-Level Dropdown<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                    <ul class=\"nav nav-second-level\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\">Second Level Item</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\">Second Level Item</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\">Third Level <span class=\"fa arrow\"></span></a>\r\n");
      out.write("                            <ul class=\"nav nav-third-level\">\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"#\">Third Level Item</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"#\">Third Level Item</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"#\">Third Level Item</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li>\r\n");
      out.write("                                    <a href=\"#\">Third Level Item</a>\r\n");
      out.write("                                </li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                            <!-- /.nav-third-level -->\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /.nav-second-level -->\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-files-o fa-fw\"></i> Sample Pages<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                    <ul class=\"nav nav-second-level\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"blank.html\">Blank Page</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"login.html\">Login Page</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <!-- /.nav-second-level -->\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.sidebar-collapse -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.navbar-static-side -->\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\r\n");
      out.write("<script src=\"dist/js/sb-admin-2.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");

    
    data ns = new data();
    ArrayList idLer = new ArrayList();

    // sipariş durum değiştirme işlemleri
    
    boolean degD = (request.getParameter("degID") == null);
    if (!degD) {
        String degID = request.getParameter("degID");
        // sipariş "sipariş tamam(yani '2')" durumuna getiriliyor
        int degis = ns.baglan().executeUpdate("update siparisler set durum = '2' where id = '" + degID + "' limit 1 ");
    }
        
    boolean degisD = (request.getParameter("degisID") == null);
    if (!degisD) {
        String degisID = request.getParameter("degisID");
        // sipariş "kargoya verildi(yani '1')" durumuna getiriliyor
        int degistir = ns.baglan().executeUpdate("update siparisler set durum = '1' where id = '" + degisID + "' limit 1 ");
    }


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"bower_components/datatables/media/css/jquery.dataTables.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <script src=\"bower_components/datatables/media/css/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        <script src=\"bower_components/datatables/media/css/jquery.dataTables.js\"></script>\r\n");
      out.write("        <script src=\"bower_components/datatables/media/css/jquery.js\"></script>\r\n");
      out.write("        <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <link href=\"dist/css/timeline.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        \r\n");
      out.write("    <title>Siparis Yönetimi</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"page-wrapper\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"panel panel-primary\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"panel-heading\">\r\n");
      out.write("            <h4 class=\"text-center\">Siparişler</h4>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"panel-body\">\r\n");
      out.write("            \r\n");
      out.write("            <section> \r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-sm-6\"></div>\r\n");
      out.write("                    <form action=\"\">\r\n");
      out.write("                                <input name=\"link\" type=\"hidden\" value=\"icerik\">\r\n");
      out.write("                                <div class=\"col-md-4\">\r\n");
      out.write("                                    <select name=\"durum\" class=\"form-control\" id=\"dr\">\r\n");
      out.write("                                        <option value=\"0\">-- Hepsi</option>\r\n");
      out.write("                                        <option value=\"1\">Aktif Siparişler</option>\r\n");
      out.write("                                        <option value=\"2\">Pasif Siparişler</option>\r\n");
      out.write("                                        ");
  String durumSQL = "select * from siparisler ";
                                        
                                    
                                                
                                            if (request.getParameter("durum") != null) {

                                                if (request.getParameter("durum").equals("0")) {
                                                    durumSQL = "select * from siparisler";
                                                    
                                              
                                                } else if (request.getParameter("durum").equals("1")) {
                                                    durumSQL = "select * from siparisler where durum = '1' or durum = '0'";
                                                    
                                                    
                                                } else if (request.getParameter("durum").equals("2")) {
                                                    durumSQL = "select * from siparisler where durum = '2'";
                                                    
                                                    
                                                }
                                            }
                                        
      out.write("\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"form-group col-md-1\">\r\n");
      out.write("                                    <input class=\"btn btn-primary\" type=\"submit\" name=\"yolla\" value=\"SEÇ\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                                    <!-- Mesaj -->\r\n");
      out.write("                        <script>\r\n");
      out.write("                            function yonlendirBasarili() {\r\n");
      out.write("                                var page_url = window.location.href;\r\n");
      out.write("                                page_url = page_url.replace(\"&sonuc=basarili\", \"\");\r\n");
      out.write("                                window.location.href = page_url;\r\n");
      out.write("                            }\r\n");
      out.write("                            ;\r\n");
      out.write("\r\n");
      out.write("                            function yonlendirBasarisiz() {\r\n");
      out.write("                                var page_url = window.location.href;\r\n");
      out.write("                                page_url = page_url.replace(\"&sonuc=basarisiz\", \"\");\r\n");
      out.write("                                window.location.href = page_url;\r\n");
      out.write("                            }\r\n");
      out.write("                            ;\r\n");
      out.write("                        </script>\r\n");
      out.write("\r\n");
      out.write("                            <!-- dataTable işlemleri -->\r\n");
      out.write("\r\n");
      out.write("                        <div id=\"siparisler_wrapper\" class=\"dataTables_wrapper form-inline dt-bootstrap no-footer\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <!-- listeleme yapılıyor -->\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-sm-12\">\r\n");
      out.write("                                    <table class=\"table display table-hover table-condensed table-responsive dataTable no-footer\" id=\"siparisler\" role=\"grid\" aria-describedby=\"siparisler_info\">\r\n");
      out.write("                                        \r\n");
      out.write("                                        <thead>\r\n");
      out.write("                                            <tr role=\"row\">\r\n");
      out.write("                                                <th class=\"text-center sorting_asc\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-sort=\"ascending\" aria-label=\"\r\n");
      out.write("                                                               Müşteri ID\r\n");
      out.write("                                                               : activate to sort column descending\" style=\"width: 170px;\">\r\n");
      out.write("                                                    Müşteri ID\r\n");
      out.write("                                                </th>\r\n");
      out.write("                                                <th class=\"text-center sorting\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-label=\"\r\n");
      out.write("                                                         Ref Kodu\r\n");
      out.write("                                                         : activate to sort column ascending\" style=\"width: 137px;\">\r\n");
      out.write("                                                    Ref Kodu\r\n");
      out.write("                                                </th><th class=\"text-center sorting\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-label=\"\r\n");
      out.write("                                                         Sipariş Fiyatı\r\n");
      out.write("                                                         : activate to sort column ascending\" style=\"width: 130px;\">\r\n");
      out.write("                                                    Sipariş Fiyatı\r\n");
      out.write("                                                </th><th class=\"text-center sorting\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-label=\"\r\n");
      out.write("                                                         Sipariş Tarihi\r\n");
      out.write("                                                         : activate to sort column ascending\" style=\"width: 246px;\">\r\n");
      out.write("                                                    Sipariş Tarihi\r\n");
      out.write("                                                </th><th class=\"text-center sorting\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-label=\"\r\n");
      out.write("                                                         Sipariş Durumu\r\n");
      out.write("                                                         : activate to sort column ascending\" style=\"width: 130px;\">\r\n");
      out.write("                                                    Sipariş Durumu\r\n");
      out.write("                                                </th><th class=\"text-center sorting\" tabindex=\"0\" aria-controls=\"DataTables_Table_0\" rowspan=\"1\" colspan=\"1\" aria-label=\"\r\n");
      out.write("                                                         İşlemler\r\n");
      out.write("                                                         : activate to sort column ascending\" style=\"width: 143px;\">\r\n");
      out.write("                                                    İşlemler\r\n");
      out.write("                                                </th></tr>\r\n");
      out.write("                                        </thead>\r\n");
      out.write("\r\n");
      out.write("                                        <tbody>\r\n");
      out.write("                                            ");

                                                int i = 0;
                                                ResultSet rs = ns.baglan().executeQuery(durumSQL);
                                                while (rs.next()) {
                                                    idLer.add(rs.getString("id"));

                                            
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                            <tr role=\"row\" class=\"odd\">\r\n");
      out.write("                                                <td class=\"text-center sorting_1\">\r\n");
      out.write("                                                    ");
 out.print(rs.getString("kul_id"));
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                <td class=\"text-center\">\r\n");
      out.write("                                                    ");
 out.print(rs.getString("ref_kodu"));
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                <td class=\"text-center\">\r\n");
      out.write("                                                    ");
 out.print(rs.getString("fiyat"));
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                <td class=\"text-center\">\r\n");
      out.write("                                                    ");
 out.print(rs.getString("tarih"));
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                <td class=\"text-center\">\r\n");
      out.write("                                                    ");

                                                   
                                                    if (rs.getString("durum").equals("0")) {
                                                    out.print("Hazırlanıyor");
                                                    
                                                    } else if (rs.getString("durum").equals("1")) {
                                                    out.print("Kargoya Verildi");
                                                    
                                                    } else if (rs.getString("durum").equals("2")) {
                                                    out.print("Sipariş Tamam");
                                                    
                                                    }
                                                    
                                                    
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                <td class=\"text-center\">\r\n");
      out.write("                                                    <form action=\"sirket/inc/icerik.php\" method=\"POST\">\r\n");
      out.write("                                                        <input name=\"icerikId\" type=\"hidden\" value=\"24\">\r\n");
      out.write("                                                        <input name=\"link\" type=\"hidden\" value=\"icerik\">\r\n");
      out.write("                                                        <a href=\"?degisID=");
 out.print(idLer.get(i)); 
      out.write("\" class=\"btn btn-primary\">Kargoya Verildi</a>\r\n");
      out.write("                                                        <a href=\"?degID=");
 out.print(idLer.get(i)); 
      out.write("\" class=\"btn btn-danger\">Sipariş Tamam</a>\r\n");
      out.write("                                                    </form>\r\n");
      out.write("                                                    <!--listeleme bitti-->\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            ");
i++;}
      out.write("\r\n");
      out.write("                                        </tbody>\r\n");
      out.write("\r\n");
      out.write("                                    </table>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-sm-5\">\r\n");
      out.write("                                    <div class=\"dataTables_info\" id=\"siparisler_info\" role=\"status\" aria-live=\"polite\">1 / 1\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </section>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("                                        \r\n");
      out.write("        <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"bower_components/metisMenu/dist/metisMenu.min.js\"></script>\r\n");
      out.write("        <script src=\"bower_components/raphael/raphael-min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/dataTables.bootstrap.js\"></script>\r\n");
      out.write("        <script src=\"dist/js/sb-admin-2.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("        <script>\r\n");
      out.write("                            var jk = jQuery.noConflict();\r\n");
      out.write("                            jk(document).ready(function () {\r\n");
      out.write("                                if (jk('table.display')) {\r\n");
      out.write("\r\n");
      out.write("                                    jk('table.display').dataTable({\r\n");
      out.write("                                        \"language\": {\r\n");
      out.write("                                            \"lengthMenu\": \"Sayfa başına _MENU_ kayıt göster.\",\r\n");
      out.write("                                            \"zeroRecords\": \"Kayıt bulunamadı.\",\r\n");
      out.write("                                            \"info\": \"_PAGE_ / _PAGES_\",\r\n");
      out.write("                                            \"infoEmpty\": \"Kayıt bulunamadı.\",\r\n");
      out.write("                                            \"infoFiltered\": \"(Toplam _MAX_ kayıttan filtre edildi.)\",\r\n");
      out.write("                                            \"search\": \"Arama yapın.\",\r\n");
      out.write("                                            \"paginate\": {\r\n");
      out.write("                                                \"first\": \"İlk\",\r\n");
      out.write("                                                \"previous\": \"<<<\",\r\n");
      out.write("                                                \"next\": \">>>\",\r\n");
      out.write("                                                \"last\": \"Son\"\r\n");
      out.write("                                            }\r\n");
      out.write("\r\n");
      out.write("                                        },\r\n");
      out.write("                                        \"lengthMenu\": [[5, 10, 25, -1], [5, 10, 25, \"Hepsi\"]],\r\n");
      out.write("                                        \"pagingType\": \"full\"\r\n");
      out.write("                                    });\r\n");
      out.write("                                }\r\n");
      out.write("                            });\r\n");
      out.write("\r\n");
      out.write("        </script>                                \r\n");
      out.write("                                        \r\n");
      out.write("        \r\n");
      out.write("</body>\r\n");
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
}
