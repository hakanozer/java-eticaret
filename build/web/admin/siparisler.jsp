<%-- 
    Document   : siparisler
    Created on : 07.Tem.2015, 04:25:18
    Author     : baro
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>
<%@page import="admin.data" %>
<%
    
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
        
    <title>Siparis Yönetimi</title>
</head>
<body>

<div id="page-wrapper">


    <div class="panel panel-primary">

        <div class="panel-heading">
            <h4 class="text-center">Siparişler</h4>
        </div>

        <div class="panel-body">
            
            <section> 
            <div class="row">
                <div class="col-sm-6"></div>
                    <form action="">
                                <input name="link" type="hidden" value="icerik">
                                <div class="col-md-4">
                                    <select name="durum" class="form-control" id="dr">
                                        <option value="0">-- Hepsi</option>
                                        <option value="1">Aktif Siparişler</option>
                                        <option value="2">Pasif Siparişler</option>
                                        <%  String durumSQL = "select * from siparisler ";
                                        
                                    
                                                
                                            if (request.getParameter("durum") != null) {

                                                if (request.getParameter("durum").equals("0")) {
                                                    durumSQL = "select * from siparisler";
                                                    
                                              
                                                } else if (request.getParameter("durum").equals("1")) {
                                                    durumSQL = "select * from siparisler where durum = '1' or durum = '0'";
                                                    
                                                    
                                                } else if (request.getParameter("durum").equals("2")) {
                                                    durumSQL = "select * from siparisler where durum = '2'";
                                                    
                                                    
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
                                                <th class="text-center sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="
                                                               Müşteri ID
                                                               : activate to sort column descending" style="width: 170px;">
                                                    Müşteri ID
                                                </th>
                                                <th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Ref Kodu
                                                         : activate to sort column ascending" style="width: 137px;">
                                                    Ref Kodu
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Sipariş Fiyatı
                                                         : activate to sort column ascending" style="width: 130px;">
                                                    Sipariş Fiyatı
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Sipariş Tarihi
                                                         : activate to sort column ascending" style="width: 246px;">
                                                    Sipariş Tarihi
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         Sipariş Durumu
                                                         : activate to sort column ascending" style="width: 130px;">
                                                    Sipariş Durumu
                                                </th><th class="text-center sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="
                                                         İşlemler
                                                         : activate to sort column ascending" style="width: 143px;">
                                                    İşlemler
                                                </th></tr>
                                        </thead>

                                        <tbody>
                                            <%
                                                int i = 0;
                                                ResultSet rs = ns.baglan().executeQuery(durumSQL);
                                                while (rs.next()) {
                                                    idLer.add(rs.getString("id"));

                                            %>



                                            <tr role="row" class="odd">
                                                <td class="text-center sorting_1">
                                                    <% out.print(rs.getString("kul_id"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("ref_kodu"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("fiyat"));%>
                                                </td>
                                                <td class="text-center">
                                                    <% out.print(rs.getString("tarih"));%>
                                                </td>
                                                <td class="text-center">
                                                    <%
                                                   
                                                    if (rs.getString("durum").equals("0")) {
                                                    out.print("Hazırlanıyor");
                                                    
                                                    } else if (rs.getString("durum").equals("1")) {
                                                    out.print("Kargoya Verildi");
                                                    
                                                    } else if (rs.getString("durum").equals("2")) {
                                                    out.print("Sipariş Tamam");
                                                    
                                                    }
                                                    
                                                    %>
                                                </td>
                                                <td class="text-center">
                                                    <form action="sirket/inc/icerik.php" method="POST">
                                                        <input name="icerikId" type="hidden" value="24">
                                                        <input name="link" type="hidden" value="icerik">
                                                        <a href="?degisID=<% out.print(idLer.get(i)); %>" class="btn btn-primary">Kargoya Verildi</a>
                                                        <a href="?degID=<% out.print(idLer.get(i)); %>" class="btn btn-danger">Sipariş Tamam</a>
                                                    </form>
                                                    <!--listeleme bitti-->
                                                </td>
                                            </tr>
                                            <%i++;}%>
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

