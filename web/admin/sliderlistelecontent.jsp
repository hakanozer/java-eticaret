<%@page import="java.awt.SystemColor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="slider.Elements" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%
    request.setCharacterEncoding("utf-8");
    Elements elements = new Elements();

    boolean dSil = (request.getParameter("silID") == null);
    if (!dSil) {
        elements.sil(request.getParameter("silID"));
    }

    pageContext.setAttribute("table", elements.getElements());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">
<html lang="en">

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
                        <h1 class="page-header">Slider Resim İşlemleri</h1>

                    </div>
                    <form action="sliderekle.jsp" method="post">
                        <input type="submit" class="btn btn-success" style="margin-top: 10px;margin-left: 14px;width:60px;" value="Ekle"/>
                    </form>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">

                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Adı</th>
                                        <th>Path</th>
                                        <th>URL</th>
                                        <th>Ana Başlık</th>
                                        <th>Başlık</th>
                                        <th>Açıklama</th>
                                        <th>Resim</th>
                                        <th>Düzenle</th>
                                        <th>Sil</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="#{table}" var="current">
                                        <tr class="odd gradeX">
                                            <td><c:out value="${current.adi}" /></td>
                                            <td><c:out value="${current.path}" /></td>
                                            <td><c:out value="${current.tourl}" /></td>
                                            <td><c:out value="${current.anabaslik}" /></td>
                                            <td><c:out value="${current.baslik}" /></td>
                                            <td><c:out value="${current.aciklama}" /></td>
                                            <td><a href="${current.tourl}"><img src="../img/${current.yoladi}" alt="${current.adi}"  style="width:80px;height:60px;"/></a></td>
                                            <td><a href="sliderduzenle.jsp?duzenleID=${current.id}"><input class="btn btn-primary" type="button" value="Düzenle"/></a></td>
                                            <td><a href="?silID=${current.id}"><input class="btn btn-danger" type="button" value="Sil" name="silID"/></a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>