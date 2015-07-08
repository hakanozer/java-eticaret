<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>
<%@page import="admin.data" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

    ArrayList idLer = new ArrayList();
    data ns = new data();
    // sil işlemi varsa yapılacak işlemler
    boolean silD = (request.getParameter("silID") == null);
    if (!silD) {
        String silID = request.getParameter("silID");
        // silme işlemi yapılıyor
        int sil = ns.baglan().executeUpdate("delete from urunler where id = '" + silID + "' limit 1 ");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bower_components/datatables/media/css/jquery.dataTables.css" rel="stylesheet"/>
        <script src="bower_components/datatables/media/css/jquery.dataTables.min.js"></script>
        <script src="bower_components/datatables/media/css/jquery.dataTables.js"></script>
        <script src="bower_components/datatables/media/css/jquery.js"></script>
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>
        <link href="dist/css/timeline.css" rel="stylesheet"/>
        <link href="dist/css/sb-admin-2.css" rel="stylesheet"/>
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript">
            function uyari(id) {
                durum = confirm("Silmek istediğinize emin misiniz?");
                if (durum == true) {
                    window.location.href = "?silID=" + id;
                } else {
                }
            }
        </script>

        <title>Ürün Yönetimi</title>
    </head>
    <body>

        <div id="page-wrapper">


            <div class="panel panel-primary">

                <div class="panel-heading">
                    <h4 class="text-center">Ürünler</h4>
                </div>

                <div class="panel-body">

                    <section> 
                       
                        
                        <iframe src="http://localhost:8095/resim/index.php?resim_id=<% out.print(request.getParameter("resim_id"));%>" style="width: 100%; height: 500px;" frameborder="0"></iframe>


                    </section>

                </div>

            </div>


            <script src="bower_components/jquery/dist/jquery.min.js"></script>
            <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
            <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
            <script src="bower_components/raphael/raphael-min.js"></script>
            <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="js/dataTables.bootstrap.js"></script>
            <script src="dist/js/sb-admin-2.js"></script>

            <script>
                                                            var jk = jQuery.noConflict();
                                                            jk(document).ready(function () {
                                                                if (jk('table.display')) {

                                                                    jk('table.display').dataTable({
                                                                        "language": {
                                                                            "lengthMenu": "Sayfa başına _MENU_ kayıt göster.",
                                                                            "zeroRecords": "Kayıt bulunamadı.",
                                                                            "info": "_PAGE_ / _PAGES_",
                                                                            "infoEmpty": "Kayıt bulunamadı.",
                                                                            "infoFiltered": "(Toplam _MAX_ kayıttan filtre edildi.)",
                                                                            "search": "Arama yapın.",
                                                                            "paginate": {
                                                                                "first": "İlk",
                                                                                "previous": "<<<",
                                                                                "next": ">>>",
                                                                                "last": "Son"
                                                                            }

                                                                        },
                                                                        "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "Hepsi"]],
                                                                        "pagingType": "full"
                                                                    });
                                                                }
                                                            });

            </script>
    </body>

</html>