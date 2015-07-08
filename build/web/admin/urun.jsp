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
                    <div style="text-align: right; margin-bottom: 10px;">
                        <form action="urunEkle.jsp" method="post">
                            <input class="btn btn-success" type="submit" value="Yeni Ürün Ekle"/>
                        </form>
                    </div>
                    <section> 
                        <div class="row">
                            <div class="col-sm-6"></div>
                        </div>
                        <!-- Mesaj -->
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
                        <!-- dataTable işlemleri -->
                        <div id="siparisler_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <!-- listeleme yapılıyor -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table display table-hover table-condensed table-responsive dataTable no-footer" id="siparisler" role="grid" aria-describedby="siparisler_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Başlık
                                                    : activate to sort column ascending" style="width: 150px;">
                                                    Başlık
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Kategori
                                                         : activate to sort column ascending" style="width: 100px;">
                                                    Kategori
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Açıklama
                                                         : activate to sort column ascending" style="width: 250px;">
                                                    Açıklama
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Fiyat
                                                         : activate to sort column ascending" style="width: 100px;">
                                                    Fiyat
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Piyasa Fiyatı
                                                    : activate to sort column ascending" style="width: 100px;">
                                                    Piyasa
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Kampanya
                                                    : activate to sort column ascending" style="width: 100px;">
                                                    Kampanya
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Stok
                                                    : activate to sort column ascending" style="width: 100px;">
                                                    Stok
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Resim
                                                    : activate to sort column ascending" style="width: 10px;">
                                                    Resim
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Düzenle
                                                    : activate to sort column ascending" style="width: 10px;">
                                                    Düzenle
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                    Sil
                                                    : activate to sort column ascending" style="width: 10px;">
                                                    Sil
                                                </th></tr>
                                        </thead>

                                        <tbody>
                                            <jsp:useBean id="yetenek" class="admin.urunBean" scope="request">
                                                <jsp:setProperty name="yetenek" property="*"/>
                                            </jsp:useBean>
                                            <% ResultSet rs = ns.baglan().executeQuery("select *from urunler left join kategoriler on urunler.kategori_id=kategoriler.id"); %>
                                            <c:forEach var="urunler" items="${yetenek.urunListe()}">
                                                <tr role="row" class="odd">
                                                    <td class="text-center">
                                                        ${urunler.baslik}
                                                    </td>
                                                    <td class="text-center">
                                                        <%
                                                            rs.next();
                                                            out.print(rs.getString("adi"));
                                                        %>
                                                    </td>
                                                    <td class="text-center">
                                                        ${urunler.kisa_aciklama}
                                                    </td>
                                                    <td class="text-center">
                                                        ${urunler.fiyat}
                                                    </td>
                                                    <td class="text-center">
                                                        ${urunler.piyasa_fiyati}
                                                    </td>
                                                    <td class="text-center">
                                                        <%
                                                            if (rs.getString("kampaya").equals("0")) {
                                                                out.print("Kampanyasız");
                                                            } else if (rs.getString("kampaya").equals("1")) {
                                                                out.print("Kampanyalı");
                                                            } else {
                                                                out.print("Belirtilmemiş");
                                                            }
                                                        %>
                                                    </td>
                                                    <td class="text-center">
                                                        ${urunler.stok}
                                                    </td>
                                                    <td class="text-center">
                                                        <form action="resim_ekle.jsp?resim_id=${urunler.id}" method="post">
                                                            <input class="btn btn-info" type="submit" value="Resim"/>
                                                        </form>
                                                    </td>
                                                    <td class="text-center">
                                                        <form action="urunDuzenle.jsp" method="post">
                                                            <input type="hidden" name="gelenId" value="${urunler.id}"/>
                                                            <input class="btn btn-primary" type="submit" value="Düzenle"/>
                                                        </form>
                                                    </td>
                                                    <td class="text-center">
                                                        <input class="btn btn-danger" id="silinecek" onclick="uyari(${urunler.id})" type="submit" value="Sil"/>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="dataTables_info" id="siparisler_info" role="status" aria-live="polite">1 / 1
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
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