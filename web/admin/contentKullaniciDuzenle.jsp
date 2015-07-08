
<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type"%>
<%@page import="org.omg.PortableInterceptor.SYSTEM_EXCEPTION"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data" %>

<jsp:useBean id="KullaniciBean" class="admin.KullaniciBean" scope="request">
    <jsp:setProperty name="KullaniciBean" property="*"/>
</jsp:useBean>

<%
    int kayit = 0;
    boolean duzenleD = (request.getParameter("duzenle") == null);

    if (!duzenleD) {

        int gelen = KullaniciBean.kullaniciGuncelle(KullaniciBean.getId(), KullaniciBean.getKuladi(), KullaniciBean.getSifre(), KullaniciBean.getAdi(), KullaniciBean.getSoyadi(), KullaniciBean.getMail(), KullaniciBean.getSeviye());
        if (gelen > 0) {
            kayit = 1;
        } else {
            kayit = -1;
        }
        
    }
%> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#duzenle').click(function () {
                var adi = $('#adi').val().trim();
                var mail = $('#mail').val().trim();
                var kuladi = $('#kuladi').val().trim();
                var sifre = $('#sifre').val().trim();
                var soyadi = $('#soyadi').val().trim();
                var seviye = $('#seviye').val().trim();
                if (adi === "") {
                    $('#adi').css({
                        border: "1px solid red"
                    });
                    return false;
                } else if (mail === "") {
                    $('#mail').css({
                        border: "1px solid red"
                    });
                    return false;
                } else if (kuladi === "") {
                    $('#kuladi').css({
                        border: "1px solid red"
                    });
                    return false;
                } else if (sifre === "") {
                    $('#sifre').css({
                        border: "1px solid red"
                    });
                    return false;
                } else if (soyadi === "") {
                    $('#soyadi').css({
                        border: "1px solid red"
                    });
                    return false;
                } else {
                    return true;
                }

            })
        });
    </script>
    <title>JSP Page</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Düzenle</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Kullanıcı Düzenleme Formu
                </div>
                <div class="panel-body">
                    <div class="row">
                        <%
                            data ns = new data();
                            String duzenle = request.getParameter("duzenleID");
                            boolean yazDurum = (duzenle == null);
                            if (!yazDurum) {
                                String kuladi = request.getParameter("kuladi");
                                String sifre = request.getParameter("sifre");
                                String mail = request.getParameter("mail");
                                String adi = request.getParameter("adi");
                                String soyadi = request.getParameter("soyadi");
                                String seviye = request.getParameter("seviye");
                            }

                            ResultSet rs = ns.baglan().executeQuery("SELECT * FROM kullanicilar WHERE id = '" + duzenle + "'");
                            while (rs.next()) {
                        %>
                        <form role="form" method="post">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Kullanıcı Adı</label>
                                    <input class="form-control" name="kuladi" id="kuladi" value="<%=rs.getString("kuladi")%>">                                        
                                </div>
                                <div class="form-group">
                                    <label>Şifre</label>
                                    <input class="form-control" name="sifre" id="sifre" value="<%=rs.getString("sifre")%>">
                                </div>
                                <div class="form-group">
                                    <label>Mail</label>
                                    <input class="form-control" name="mail" id="mail" value="<%=rs.getString("mail")%>">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Adı</label>
                                    <input class="form-control" name="adi" id="adi" value="<%=rs.getString("adi")%>">
                                </div>
                                <div class="form-group">
                                    <label>Soyadı</label>
                                    <input class="form-control" name="soyadi" id="soyadi" value="<%=rs.getString("soyadi")%>">
                                </div>

                                <div class="form-group">
                                    <label>Seviye</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="seviye" id="optionsRadios1" value="0" checked="">Admin
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="seviye" id="optionsRadios2" value="1">Üye
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input class="hidden" name="id" value="<%=rs.getString("id")%>">
                                        <input type="submit" name="duzenle" class="btn btn-primary" id="duzenle" value="Düzenle" />
                                </div>
                                <%}
                                    if (kayit == 1) {%>
                                <div class="alert alert-success">
                                    Güncelleme Başarılı. <a href="kullanici.jsp" class="alert-link">Geri Dön</a>.
                                </div>

                                <%} else if (kayit == -1) {%>
                                <div class="alert alert-danger">
                                    Başarısız <a href="kullanici.jsp" class="alert-link">Tamam</a>.
                                </div>

                                <%}%>

                            </div>
                        </form>
                        <!-- /.col-lg-6 (nested) -->

                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->

<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>

</body>
</html>
