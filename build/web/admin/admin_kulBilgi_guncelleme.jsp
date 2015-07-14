    <%@page import="java.util.Enumeration"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="admin.data"%>
    <%@page import="java.sql.ResultSet"%>
     
          
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

    </head>

    <body>

        <div id="wrapper">



            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                         <div class="input-group custom-search-form">
                                <span class="input-group-btn">
                                </span>
                            </div>
                            </div>
                </div>
            </div>
    </body>
    
      
      <%
    request.setCharacterEncoding("UTF-8");
    
    data ns = new data();
    String gid = "";
    String adi = "";
    String soyadi = "";
    String kuladi = "";
    String mail = "";
    boolean kulDuzenle = (request.getParameter("kulDuzenle") == null);
    if(!kulDuzenle) {
        
        boolean sesssID = (session.getAttribute("adminId") == null);
     
        gid = request.getParameter("fId");
        adi = request.getParameter("adi");
        soyadi = request.getParameter("soyadi");
        kuladi = request.getParameter("kuladi");
        mail = request.getParameter("mail");
        
        if(!sesssID){
                            
        String giddd = admin.AdminBean.decode(session.getAttribute("adminId").toString());
        
        try {
            
            int yazDurum = ns.baglan().executeUpdate("update kullanicilar set adi = '"+adi+"', soyadi = '"+soyadi+"', kuladi = '"+kuladi+"', mail = '"+mail+"'  where id = '"+giddd+"' limit 1");
             
            if(yazDurum > 0) {
                
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
        
    }else {
            response.sendRedirect("index.jsp");
        } 
}
%>

 <%
                        boolean sesID = (session.getAttribute("adminId") == null);
                        ResultSet rss = null;
                        String adid = "";
                        String soyadid = "";
                        String kuladid = "";
                        String maild = "";
                        
                        if(!sesID){
                            
                            String gidd = admin.AdminBean.decode(session.getAttribute("adminId").toString());
                            try {
                                rss = ns.baglan().executeQuery("select *from kullanicilar where id = '" + gidd + "' ");
                                rss.next();
                                adid = rss.getString("adi");
                                soyadid = rss.getString("soyadi");
                                kuladid = rss.getString("kuladi");
                                maild = rss.getString("mail");
                                
                            } catch (Exception ex) {
                                out.print("Hata :" + ex);
                            }
                       
                        }else{
                            response.sendRedirect("index.jsp");
                        }
                    %>
      
      
      
      <div class="row">

            <div class="col-md-6 col-md-offset-3">

                <div class="panel panel-primary">

                    <div class="panel-heading text-center">
                        <h3>Kullanıcı Düzenleme</h3>
                    </div>

                    <div class="panel-body">


                        <form action="" method="post">
                            <input name="fId" type="hidden" value="<%out.print(gid);%>">

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fAdi">Adınız:</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="adi" id="adi" value="<%out.print(adid); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fSoyadi">Soyadınız:</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="soyadi" id="soyadi" value="<%out.print(soyadid); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fKulAdi">Kullanıcı Adınız</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="kuladi" id="kuladi" value="<%out.print(kuladid); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fMail">Mail Adresiniz</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="mail" id="mail" value="<%out.print(maild); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-9 col-md-offset-3">
                               
                                        <input class="btn btn-default btn-sm btn-primary" type="submit" name="kulDuzenle" value="Kaydet">
                                        <a href="admin_ayarlar.jsp" class="btn btn-sm btn-danger">İptal</a>
                                        <a class="btn btn-warning btn-sm" href="admin_sifre_degistirme.jsp">Şifre Değiştir</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        
                        </div>
                    
                    <%@include file="footer.jsp"%>