<%-- 
    Document   : reklam
    Created on : Jul 7, 2015, 10:52:43 AM
    Author     : recepcoban
--%>

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
        int sil = ns.baglan().executeUpdate("delete from reklamlar where id = '" + silID + "' limit 1 ");
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

        <title>Reklam Yönetimi</title>
    </head>
    <body>
        <div id="wrapper">

            <div id="page-wrapper">

                <content style="padding: 40px 0px">

                    <div class="text-right" style="margin-bottom: 25px">
                        <a href="admin.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-backward"> </i> Geri Dön</a>
                    </div>

                    <section>
                        <div class="row">
                            <div class="col-md-5" style="padding-bottom: 15px">
                                <a href="reklamEkle.jsp" class="btn btn-primary">Reklam Ekle</a>
                            </div>
                            <div class="col-md-2">
                            </div>

                            <form action="">
                                <input name="link" type="hidden" value="icerik">
                                <div class="col-md-4">
                                    <select name="durum" class="form-control" id="">
                                        <option value="0">-- Hepsi --</option>
                                        <option value="1">Aktif Reklamlar</option>
                                        <option value="2">Pasif Reklamlar</option>
                                        <%      String durumFiltre1 = "0";
                                            String durumFiltre2 = "1";
                                            if (request.getParameter("durum") != null) {

                                                if (request.getParameter("durum").equals("1")) {
                                                    durumFiltre1 = "1";
                                                    durumFiltre2 = "2";
                                                } else if (request.getParameter("durum").equals("2")) {
                                                    durumFiltre1 = "0";
                                                    durumFiltre2 = "2"; // aktif olanlar
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="form-group col-md-1">
                                    <input class="btn btn-primary" type="submit" name="yolla" value="SEÇ">
                                </div>
                            </form>
                        </div>
                        <hr>

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


                        <!-- dataTable.js işlemleri -->
                        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.6/css/jquery.dataTables.css">

                        <div id="duyurular_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">


                            <!--////////////////listeleme yapılıyor////////////////////-->
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table display table-hover table-condensed table-responsive dataTable no-footer" id="duyurular" role="grid" aria-describedby="duyurular_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="text-center sorting_asc" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" aria-sort="ascending">Adı</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Gösterim</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Başlangıç</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Bitiş</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Resim</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Genişlik</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Yükseklik</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Link</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >Durum</th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="duyurular" rowspan="1" colspan="1" >İşlemler</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <%
                                                int i = 0;
                                                ResultSet rs = ns.baglan().executeQuery("select * from reklamlar WHERE durum = '" + durumFiltre1 + "' OR durum = '" + durumFiltre2 + "'");
                                                while (rs.next()) {
                                                    idLer.add(rs.getString("id"));

                                            %>



                                            <tr role="row" class="odd">
                                                <td class="text-center sorting_1">
                                                    <% out.print(rs.getString("adi"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("gosterim"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("bas_tarih"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("bit_tarih"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("resim"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("reklam_x"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("reklam_y"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("link"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("durum"));%>
                                                </td>
                                                <td class="text-center">
                                                    <a href="reklamDuzenle.jsp?duzenleID=<% out.print(idLer.get(i)); %>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal"><i class="fa fa-trash"></i></button>
                                                    <!--//////////////listeleme bitti-->
                                                </td>
                                                <!-- Modal -->
                                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">İşlem Uyarısı!</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        Silmek İstediğinize Emin Misiniz?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a href="?silID=<% out.print(idLer.get(i));%>" class="btn btn-success">Evet</a>
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </tr><%i++;
                                            }%>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="dataTables_info" id="duyurular_info" role="status" aria-live="polite">1 / 1
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
