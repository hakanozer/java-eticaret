package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.awt.SystemColor;
import slider.Elements;

public final class slidereklecontent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");

    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    Elements elements = new Elements();

    boolean dSil = (request.getParameter("silID") == null);
    if (!dSil) {
        elements.sil(request.getParameter("silID"));
    }

    pageContext.setAttribute("table", elements.getElements());

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("    <script src=\"eklejs.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"jquery-1.11.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <link href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/timeline.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\"/>\r\n");
      out.write("    <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("    <div id=\"page-wrapper\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-12\">\r\n");
      out.write("                <h1 class=\"page-header\">Dashboard</h1>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.col-lg-12 -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.row -->\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                <div class=\"panel panel-primary\">\r\n");
      out.write("                    <div class=\"panel-heading\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-xs-3\">\r\n");
      out.write("                                <i class=\"fa fa-comments fa-5x\"></i>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-xs-9 text-right\">\r\n");
      out.write("                                <div class=\"huge\">26</div>\r\n");
      out.write("                                <div>New Comments!</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a href=\"#\">\r\n");
      out.write("                        <div class=\"panel-footer\">\r\n");
      out.write("                            <span class=\"pull-left\">View Details</span>\r\n");
      out.write("                            <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                <div class=\"panel panel-green\">\r\n");
      out.write("                    <div class=\"panel-heading\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-xs-3\">\r\n");
      out.write("                                <i class=\"fa fa-tasks fa-5x\"></i>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-xs-9 text-right\">\r\n");
      out.write("                                <div class=\"huge\">12</div>\r\n");
      out.write("                                <div>New Tasks!</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a href=\"#\">\r\n");
      out.write("                        <div class=\"panel-footer\">\r\n");
      out.write("                            <span class=\"pull-left\">View Details</span>\r\n");
      out.write("                            <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                <div class=\"panel panel-yellow\">\r\n");
      out.write("                    <div class=\"panel-heading\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-xs-3\">\r\n");
      out.write("                                <i class=\"fa fa-shopping-cart fa-5x\"></i>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-xs-9 text-right\">\r\n");
      out.write("                                <div class=\"huge\">124</div>\r\n");
      out.write("                                <div>New Orders!</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a href=\"#\">\r\n");
      out.write("                        <div class=\"panel-footer\">\r\n");
      out.write("                            <span class=\"pull-left\">View Details</span>\r\n");
      out.write("                            <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                <div class=\"panel panel-red\">\r\n");
      out.write("                    <div class=\"panel-heading\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-xs-3\">\r\n");
      out.write("                                <i class=\"fa fa-support fa-5x\"></i>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-xs-9 text-right\">\r\n");
      out.write("                                <div class=\"huge\">13</div>\r\n");
      out.write("                                <div>Support Tickets!</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <a href=\"#\">\r\n");
      out.write("                        <div class=\"panel-footer\">\r\n");
      out.write("                            <span class=\"pull-left\">View Details</span>\r\n");
      out.write("                            <span class=\"pull-right\"><i class=\"fa fa-arrow-circle-right\"></i></span>\r\n");
      out.write("                            <div class=\"clearfix\"></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-12\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"panel panel-default\">\r\n");
      out.write("                    <div class=\"panel-heading\">\r\n");
      out.write("                        <h1 class=\"page-header\">Slider Resim Ekleme</h1>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- /.panel-heading -->\r\n");
      out.write("                    <div class=\"panel-body\">\r\n");
      out.write("                        <div class=\"dataTable_wrapper\">\r\n");
      out.write("                            <form method=\"post\" action=\"uploadServlet\" enctype=\"multipart/form-data\">\r\n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\r\n");
      out.write("                                    <tr class=\"odd gradeA\">\r\n");
      out.write("                                        <td>Lütfen fotoğraf seçiniz: </td>\r\n");
      out.write("                                        <td><input type=\"file\" name=\"photo\" id=\"foto\"/>\r\n");
      out.write("                                    Width : <input type=\"text\" name=\"photoWidth\" id=\"photoWidth\" size=\"1\"/>\r\n");
      out.write("                                    Height : <input type=\"text\" name=\"photoHeight\" id=\"photoHeight\" size=\"1\"/>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Adı : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"adi\" id=\"adi\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr >\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Yolu : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"yolu\" id=\"yolu\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Gideceği URL : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"url\" id=\"url\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Ana Başlık : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"anabaslik\" id=\"anabaslik\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Başlık : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"baslik\" id=\"baslik\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr class=\"odd gradeX\">\r\n");
      out.write("                                        <td>Açıklama : </td>\r\n");
      out.write("                                        <td><input type=\"text\" name=\"aciklama\" id=\"aciklama\" size=\"70\"/></td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td colspan=\"2\">\r\n");
      out.write("                                    <input type=\"submit\" class=\"btn btn-success\" value=\"Ekle\" id=\"gonder\" />\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
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
