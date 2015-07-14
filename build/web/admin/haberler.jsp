<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>
<%
    data ns = new data();
    ArrayList idLer = new ArrayList();

    // sil işlemi varsa yapılacak işlemler
    boolean silD = (request.getParameter("silID") == null);
    if (!silD) {
        String silID = request.getParameter("silID");
        // silme işlemi yapılıyor
        int sil = ns.baglan().executeUpdate("delete from haberler where id = '" + silID + "' limit 1 ");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>
        <link href="dist/css/timeline.css" rel="stylesheet"/>
        <link href="dist/css/sb-admin-2.css" rel="stylesheet"/>
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Haber Yönetimi</title>
    </head>
    <body>
        <div id="wrapper">

            <div id="page-wrapper">

                <content style="padding: 40px 0px">

                    <div class="text-right" style="margin-bottom: 25px">
                        <a href="admin.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-backward"> </i> Geri Dön</a>
                    </div>

                    <section>
                        <form action="">

                            
                                <div class="col-md-5" style="padding-bottom: 15px">
                                    <a href="haber_ekle.jsp" class="btn btn-primary">Haber Ekle</a>
                                </div>


                                <input name="link" type="hidden" value="icerik">
                                <div class="col-md-5">
                                    <select name="durum" class="form-control" id="">
                                        <option value="0">-- Hepsi</option>
                                        <option value="1">Aktif Haberler</option>
                                        <option value="2">Pasif Haberler</option>
                                        <%      String durumFiltre1 = "0";
                                            String durumFiltre2 = "1";
                                            if (request.getParameter("durum") != null) {

                                                if (request.getParameter("durum").equals("0")) {
                                                    durumFiltre1 = "0";
                                                    durumFiltre2 = "1";
                                                } else if (request.getParameter("durum").equals("1")) {
                                                    durumFiltre1 = "1";
                                                    durumFiltre2 = "1"; // aktif olanlar
                                                } else if (request.getParameter("durum").equals("2")) {
                                                    durumFiltre1 = "0";
                                                    durumFiltre2 = "0";// pasif olanlar
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                                
                                <div class="col-md-2">
                                    <input class="btn btn-primary" type="submit" name="yolla" value="SEÇ">
                                </div>

                            
                        </form>
                        <hr>

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


                        <!-- dataTable.js işlemleri -->
                        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.6/css/jquery.dataTables.css">

                        <div id="haberler_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">



                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table display table-hover table-condensed table-responsive dataTable no-footer" id="haberler" role="grid" aria-describedby="haberler_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="text-center sorting" tabindex="0" aria-controls="haberler" rowspan="1" colspan="1" aria-label="Aktif/Pasif: activate to sort column ascending" style="width: 91px;">Aktif/Pasif</th>
                                                <th class="text-center sorting_asc" tabindex="0" aria-controls="haberler" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Haberler: activate to sort column descending" style="width: 95px;">Haberler</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="haberler" rowspan="1" colspan="1" aria-label="Eklenme Tarihi: activate to sort column ascending" style="width: 192px;">Eklenme Tarihi</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="haberler" rowspan="1" colspan="1" aria-label="İşlem: activate to sort column ascending" style="width: 177px;">İşlem</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <%
                                                int i = 0;
                                                ResultSet rs = ns.baglan().executeQuery("select *from haberler WHERE durum = '" + durumFiltre1 + "' OR durum = '" + durumFiltre2 + "'");
                                                while (rs.next()) {
                                                    idLer.add(rs.getString("id"));

                                            %>

                                        <td class="text-center">
                                            <% out.print(rs.getString("durum"));%>
                                        </td>
                                        <td class="text-center">
                                            <% out.print(rs.getString("baslik"));%>
                                        </td>
                                        <td class="text-center">
                                            <% out.print(rs.getString("tarih"));%>
                                        </td>
                                        <td class="text-center">
                                            <form action="sirket/inc/icerik.php" method="POST">
                                                <input name="icerikId" type="hidden" value="24">
                                                <input name="link" type="hidden" value="haber">
                                                <a href="haber_duzenle.jsp?duzenleID=<% out.print(idLer.get(i)); %>" class="btn btn-primary">Düzenle</a>
                                                <a href="?silID=<% out.print(idLer.get(i)); %>" class="btn btn-danger">Sil</a>
                                            </form>
                                            <!--//////////////listeleme bitti-->
                                        </td>
                                        </tr><%i++;
                                            }%>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="dataTables_info" id="haberler_info" role="status" aria-live="polite">1 / 1
                                    </div>

                                </div>

                            </div>
                        </div>

                    </section>

                </content>
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
