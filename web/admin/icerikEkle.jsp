<%-- 
    Document   : icerikDuzenle
    Created on : Jul 4, 2015, 11:17:45 PM
    Author     : Ensar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>
            İçerik Ekleme
        </title>


        <script src="js/ckeditor_4.5.1_standard/ckeditor/ckeditor.js" type="text/javascript"></script>

        <link href="../css/bulut.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="dist/css/timeline.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="bower_components/morrisjs/morris.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style type="text/css"></style>
        <link href="../css/skin.min.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div id="page-wrapper">

            <content style="padding: 40px 0px">

                <div class="text-right" style="margin-bottom: 25px">
                    <a href="icerik.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-backward"> </i> Geri Dön</a>
                </div>

                <section>
                    <!-- İŞLEM MESAJ -->
                    <!-- İŞLEM MESAJ -->
                    <script>
                        function yonlendirBasarili() {
                            var page_url = window.location.href;
                            page_url = page_url.replace("&sonuc=basarili", "");
                            window.location.href = page_url;
                        }
                        ;

                        function yonlendirBasarisiz() {
                            var page_url = window.location.href;
                            page_url = page_url.replace("&sonuc=basarisiz", "");
                            window.location.href = page_url;
                        }
                        ;
                    </script>



                    <div class="panel panel-primary" style="width: 75%; margin: 0 auto; margin-bottom: 50px">

                        <div class="panel-heading">
                            <h4 class="panel-title text-center">İçerik Ekleme</h4>
                        </div>

                        <div class="panel-body">

                            <p class="text-center">İçerik bilgilerinizi aşağıda girebilirsiniz.</p>
                            <hr>
                            <form class="form-horizontal" action="icerikEkleAction.jsp" method="post" style="width: 90%; margin: 0 auto;">

                                <!-- Başlık -->
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="baslik">İçerik Başlık</label>
                                        </div>
                                        <div class="col-md-9">
                                            <input type="text" required id="baslik" name="baslik" value="" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <!-- Kısa Açıklama -->
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="kisa_aciklama">Kısa Açıklama</label>
                                        </div>
                                        <div class="col-md-9">
                                            <input type="text" required id="kisa_aciklama" name="kisa_aciklama" value="" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <!-- Detay -->
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="detay">Detaylı Açıklama</label>
                                        </div>
                                        <div class="col-md-9">
                                            <textarea name="detay" id="detay" cols="30" rows="10" class="form-control"></textarea>
                                            <script>
                                                CKEDITOR.replace('detay');
                                            </script>
                                        </div>
                                    </div>

                                </div>
                                <!-- Durum -->
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="durum">Durum</label>
                                        </div>
                                        <div class="col-md-9">
                                            <select class="form-control" name="durum" id="durum">
                                                <option value="0">Pasif</option>
                                                <option value="1">Aktif</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <!-- Buton -->
                                <div class="form-group" >
                                    <div class="row">
                                        <div class="col-md-3"> </div>
                                        <div class="col-md-9 text-right">

                                            <input type="submit" value="Kaydet" name="duzenle" class="btn btn-primary">
                                            <a class="btn btn-danger" href="icerik.jsp">İptal</a>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>

                        <div class="panel-footer"></div>
                    </div>

                </section>

            </content>
        </div>
        <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
        <script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script type="text/javascript" src="bower_components/raphael/raphael-min.js"></script>
        <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="dist/js/sb-admin-2.js"></script>            

    </body>
</html>
