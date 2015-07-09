<%@page import="java.awt.SystemColor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="slider.Elements" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    Elements elements = new Elements();

    boolean dSil = (request.getParameter("silID") == null);
    if (!dSil) {
        elements.sil(request.getParameter("silID"));
    }

    pageContext.setAttribute("table", elements.getElements());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">
<html>
    <head>
    <script src="eklejs.js" type="text/javascript"></script>
    <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>
    <link href="dist/css/timeline.css" rel="stylesheet"/>
    <link href="dist/css/sb-admin-2.css" rel="stylesheet"/>
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Dashboard</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comments fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">26</div>
                                <div>New Comments!</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">View Details</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">12</div>
                                <div>New Tasks!</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">View Details</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">124</div>
                                <div>New Orders!</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">View Details</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-support fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">13</div>
                                <div>Support Tickets!</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">View Details</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="page-header">Slider Resim Ekleme</h1>

                    </div>

                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form method="post" action="uploadServlet" enctype="multipart/form-data">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <tr class="odd gradeA">
                                        <td>Lütfen fotoğraf seçiniz: </td>
                                        <td><input type="file" name="photo" id="foto"/>
                                    Width : <input type="text" name="photoWidth" id="photoWidth" size="1"/>
                                    Height : <input type="text" name="photoHeight" id="photoHeight" size="1"/>
                                    </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Adı : </td>
                                        <td><input type="text" name="adi" id="adi" size="70"/></td>
                                    </tr >
                                    <tr class="odd gradeX">
                                        <td>Yolu : </td>
                                        <td><input type="text" name="yolu" id="yolu" size="70"/></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Gideceği URL : </td>
                                        <td><input type="text" name="url" id="url" size="70"/></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Ana Başlık : </td>
                                        <td><input type="text" name="anabaslik" id="anabaslik" size="70"/></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Başlık : </td>
                                        <td><input type="text" name="baslik" id="baslik" size="70"/></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>Açıklama : </td>
                                        <td><input type="text" name="aciklama" id="aciklama" size="70"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                    <input type="submit" class="btn btn-success" value="Ekle" id="gonder" />
                                    </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>