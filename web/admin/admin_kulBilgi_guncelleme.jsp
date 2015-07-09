     <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@include file="header.jsp"%>
    <%@include file="menu.jsp"%>

    
      <%@page import="admin.data"%>
      <%@page import="java.sql.ResultSet"%>
     
      
      <%
    request.setCharacterEncoding("UTF-8");
    
    data ns = new data();
    // vt düzenleme işlemi
    boolean kulDuzenle = (request.getParameter("kulDuzenle") == null);
    if(!kulDuzenle) {
        // düzenleme işlemi yap
        String gid = request.getParameter("id");
        String adi = request.getParameter("adi");
        String soyadi = request.getParameter("soyadi");
        String kuladi = request.getParameter("kuladi");
        String mail = request.getParameter("mail");
        
        try {
            int yazDurum = ns.baglan().executeUpdate("update duyurular set adi = '"+adi+"', soyadi = '"+soyadi+"', kuladi = '"+kuladi+"', mail = '"+mail+"'  where id = '"+gid+"' limit 1");
            if(yazDurum > 0) {
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
        
    }

%>

 <%
                        boolean sesID = (session.getAttribute("adminId") == null);
                        ResultSet rss = null;
                        if(!sesID){
                            
                            String gid = admin.AdminBean.decode(session.getAttribute("adminId").toString());
                            try {
                                rss = ns.baglan().executeQuery("select *from kullanicilar where id = '" + gid + "' ");
                                if(rss.next()) {}else{out.print("Admin Hatası ");}
                            } catch (Exception ex) {
                                out.print("Hata :" + ex);
                            }
                       
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
                            <input name="fId" type="hidden" value="20">

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fAdi">Adınız:</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="fAdi" id="fAdi" value="<% out.print(rss.getString("adi")); %> ">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fMail">Soyadınız:</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="fSoyadi" id="fSoyadi" value="<% out.print(rss.getString("soyadi")); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fMail">Kullanıcı Adınız</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="fMail" id="" value="<% out.print(rss.getString("kuladi")); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fMail">Mail Adresiniz</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="fMail" id="" value="<% out.print(rss.getString("mail")); %>">
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