
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>
<%@include file="footer.jsp"%>


<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    data ns = new data();

%>  

<%                       
    
        boolean kayitDurum = (request.getParameter("kategoriID") == null);
                        if (!kayitDurum) {
                            // vt sorgusu
                          
                            try {
                                
                                String kategori = request.getParameter("kategoriID");
                                String baslik = request.getParameter("baslik");
                                String kisa_aciklama = request.getParameter("kisaAciklama");
                                String detay = request.getParameter("detay");
                                String fiyat = request.getParameter("fiyat");
                                String piyasa_fiyati = request.getParameter("piyasaFiyati");
                                String kampanya = request.getParameter("kampaya");
                                String stok = request.getParameter("stok");
                                
                                String sorgu ="insert into urunler values(null, '"+kategori+"', '"+baslik+"', '"+kisa_aciklama+"', '"+detay+"', '"+fiyat+"', '"+piyasa_fiyati+"', '"+kampanya+"', '"+stok+"', now())";
                                
                                int kayit = ns.baglan().executeUpdate(sorgu);
                                
                                response.sendRedirect("urun.jsp");
                                
                            }
                            catch (Exception ex) {
                                System.out.print("hata :"+ex);
                            }
                            
                            
                        }
                    %>

<!DOCTYPE html>
<html>
    <head>
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
        <form method="get" style="width: 50%">
           
            <div class="form-group">
                Kategori : <select class="form-control" name="kategoriID" required="required">
                      
                     <option  id="kategori"  value="">Lütfen Seçiniz</option>
                    
                    <%                        try {

                            ResultSet rs = ns.baglan().executeQuery("select * from kategoriler");
                    
                           
                            
                            while (rs.next()) {

                    %>
                    <option  id="kategori"  value="<% out.print(rs.getString("id")); %>"><% out.print(rs.getString("adi")); %></option>

                    <%                                       }

                        } catch (Exception e) {

                        }

                    %>


                </select>
            </div>
            <div class="form-group">
                Başlık : <input class="form-control" type="text" name="baslik" value="" required="required" />
            </div>
            <div class="form-group">
                Kısa Açıklama : <input class="form-control" type="text" name="kisaAciklama" value="" required="required" />
            </div>
            <div class="form-group">
                Detay : 
                <textarea style="max-width: 100%" class="form-control" name="detay" required="required"></textarea>
            </div>
            <div class="form-group">
                Fiyat : <input class="form-control" type="text" name="fiyat" value="" required="required" />
            </div>
            <div class="form-group">
                Piyasa Fiyatı : <input class="form-control" type="text" name="piyasaFiyati" value="" required="required"/>
            </div>
            <div class="form-group">
                Kampanya : <select class="form-control" name="kampaya" required="required">
                    
                    <option  id="kategori"  value="">Lütfen Seçiniz</option>
                    <option  id="kategori"  value="0">Kampanya Yok</option>
                    <option  id="kategori"  value="1">Kampanya Var</option>
                 
                </select>
            </div>
            <div class="form-group">
                Stok : <input class="form-control" type="text" name="stok" value="" required="required" />
                  
            </div>
            <div class="form-group">
                <input class="btn btn-lg btn-info btn-block" type="submit" id="kaydet" value="Kaydet"/>
            </div>
        </form>

    </div>
</div>
</body>
</html>
