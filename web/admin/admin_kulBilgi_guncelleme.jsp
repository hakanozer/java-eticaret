    <%@page import="java.util.Enumeration"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@include file="menu.jsp"%>

    
      <%@page import="admin.data"%>
      <%@page import="java.sql.ResultSet"%>
     
      
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
        
     
        gid = request.getParameter("fId");
        adi = request.getParameter("adi");
        soyadi = request.getParameter("soyadi");
        kuladi = request.getParameter("kuladi");
        mail = request.getParameter("mail");
        
        try {
            
            int yazDurum = ns.baglan().executeUpdate("update kullanicilar set adi = '"+adi+"', soyadi = '"+soyadi+"', kuladi = '"+kuladi+"', mail = '"+mail+"'  where id = '"+gid+"' limit 1");
             
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
                                        <input class="form-control" type="text" name="adi" id="adi" value="<% out.print(adid); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fSoyadi">Soyadınız:</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="soyadi" id="soyadi" value="<% out.print(soyadid); %>">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="fKulAdi">Kullanıcı Adınız</label>
                                    </div>
                                    <div class="col-md-9">
                                        <input class="form-control" type="text" name="kuladi" id="kuladi" value="<% out.print(kuladid); %>">
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