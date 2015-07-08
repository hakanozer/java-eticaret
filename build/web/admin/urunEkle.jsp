
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>


<script TYPE="text/javascript">

    // alttaki fonksiyon form gönderilirken id sini aldığı inputlarda boşluk kontrolü sağlıyor.

    $(document).ready(function () {
        $('#kaydet').click(function () {
            var gelenBaslik = $('#baslik').val().trim();
            var gelenKisaAciklama = $('#kisa_acikla').val().trim();
            var gelenDetay = $('#detayli').val().trim();
            var gelenSatisFiyat = $('#satisFiyati').val().trim();
            var gelenPiyasaFiyat = $('#piyasaFiyat').val().trim();
            var gelenStok = $('#stokk').val().trim();

            if (gelenBaslik == "") {
                $('#baslik').val("");
                $('#baslik').focus();
            } else if (gelenKisaAciklama == "") {
                $('#kisa_acikla').val("");
                $('#kisa_acikla').focus();
            } else if (gelenDetay == "") {
                $('#detayli').val("");
                $('#detayli').focus();
            } else if (gelenSatisFiyat == "") {
                $('#satisFiyati').val("");
                $('#satisFiyati').focus();
            } else if (gelenPiyasaFiyat == "") {
                $('#piyasaFiyat').val("");
                $('#piyasaFiyat').focus();
            } else if (gelenStok == "") {
                $('#stokk').val("");
                $('#stokk').focus();
            }

        });
    });

</script>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    data ns = new data();

%>  

<%    boolean kayitDurum = (request.getParameter("kategoriID") == null);
    if (!kayitDurum) {
        try {

            String kategori = request.getParameter("kategoriID");
            String baslik = request.getParameter("baslik").trim();
            String kisa_aciklama = request.getParameter("kisaAciklama").trim();
            String detay = request.getParameter("detay").trim();
            String fiyat = request.getParameter("fiyat").trim();
            String piyasa_fiyati = request.getParameter("piyasaFiyati").trim();
            String kampanya = request.getParameter("kampaya");
            String stok = request.getParameter("stok").trim();

            String sorgu = "insert into urunler values(null, '" + kategori + "', '" + baslik + "', '" + kisa_aciklama + "', '" + detay + "', '" + fiyat + "', '" + piyasa_fiyati + "', '" + kampanya + "', '" + stok + "', now())";

            int kayit = ns.baglan().executeUpdate(sorgu);

            response.sendRedirect("urun.jsp");

        } catch (Exception ex) {
            System.out.print("hata :" + ex);
        }

    }
%>



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
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="bower_components/raphael/raphael-min.js"></script>
<script src="dist/js/sb-admin-2.js"></script>

</head>
<body>

<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Yeni Ürün Ekle</h2>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <form action="" method="post" style="width: 50%">

            <div class="form-group">
                Kategori : <select class="form-control" name="kategoriID" required="required">

                    <option  id="kategori"  value="">Lütfen Seçiniz</option>

                    <%
                        try {
                           ResultSet rs = ns.baglan().executeQuery("select * from kategoriler");
                            while (rs.next()) {
                    %>
                    <option  id="kategori"  value="<% out.print(rs.getString("id")); %>"><% out.print(rs.getString("adi")); %></option>
                    <%                                       }
                        } catch (Exception e) {
                            System.out.print("Kategori Listeleme Hatası : "+e);
                        }
                    %>

                </select>
            </div>
            <div class="form-group">
                Başlık : <input class="form-control" type="text" name="baslik" value="" id="baslik" required="required"  />
            </div>
            <div class="form-group">
                Kısa Açıklama : <input class="form-control" type="text" id="kisa_acikla" name="kisaAciklama" value="" required="required" />
            </div>
            <div class="form-group">
                Detay : 
                <textarea style="max-width: 100%" class="form-control" name="detay" id="detayli" required="required"></textarea>
            </div>
            <div class="form-group">
                Fiyat : <input class="form-control" type="text" name="fiyat" id="satisFiyati" required="required" />
            </div>
            <div class="form-group">
                Piyasa Fiyatı : <input class="form-control" type="text" name="piyasaFiyati" id="piyasaFiyat" required="required"/>
            </div>
            <div class="form-group">
                Kampanya : <select class="form-control" name="kampaya" required="required">
                    <option  id="kategori"  value="">Lütfen Seçiniz</option>
                    <option  id="kategori"  value="0">Kampanya Yok</option>
                    <option  id="kategori"  value="1">Kampanya Var</option>

                </select>
            </div>
            <div class="form-group">
                Stok : <input class="form-control" type="text" name="stok" id="stokk" required="required" />

            </div>
            <div class="form-group">
                <input class="btn btn-lg btn-info btn-block" type="submit" id="kaydet" value="Kaydet"/>
            </div>

        </form>

    </div>
</div>

</body>
</html>
