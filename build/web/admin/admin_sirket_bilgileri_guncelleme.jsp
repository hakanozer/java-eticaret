<%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@include file="menu.jsp"%>


    
    
    
     <%
    request.setCharacterEncoding("UTF-8");
    String gid = "";
    String sirket_adi  = "";
    String adres = "";
    String telefon = "";
   
    data ns = new data();
    
    boolean kulDuzenle = (request.getParameter("fKulduzenle") == null);
    if(!kulDuzenle) {
       
        gid = request.getParameter("fID");
        sirket_adi = request.getParameter("sirket_adi");
        adres = request.getParameter("adres");
        telefon = request.getParameter("fTel");
        
         
        
        try {
            
            int yazDurum = ns.baglan().executeUpdate("update sirket_bilgileri set sirket_adi = '"+sirket_adi+"', adres= '"+adres+"', telefon = '"+telefon+"' where id = '"+gid+"' limit 1");
          
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
                        String sirketadid = "";
                        String adresd = "";
                        String telefond = "";
                       
                        if(!sesID){
                            
                            String gidd = admin.AdminBean.decode(session.getAttribute("adminId").toString());
                            
                            try {                
                                rss = ns.baglan().executeQuery("select *from sirket_bilgileri where id = '" + gidd + "' ");
                                rss.next();
                                sirketadid = rss.getString("sirket_adi");
                                adresd = rss.getString("adres");
                                telefond = rss.getString("telefon");
                                
                                
                            } catch (Exception ex) {
                                out.print("Hata :" + ex);
                            }
                        
                        }
                    %>
    <div class="row">

        <div class="col-md-8 col-md-offset-3">

            <div class="panel panel-primary">

                <div class="panel-heading text-center">
                    <h3>Şirket Bilgileri Düzenleme</h3>
                </div>

                <div class="panel-body">

                    <form action="" method="post">
                        <input name="fID" type="hidden" value=" <% out.print(gid); %>"/>

                        <!-- şirket adı -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fAdi">
                                        Şirketinizin Adı:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="sirket_adi" id="sirket_adi" value=" <% out.print(sirketadid); %>"/>
                                </div>
                            </div>
                        </div>

                        <!-- şirket adresi -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fAdres">
                                        Adresi:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="fAdres" id="adres" value=" <% out.print(adresd); %>"/>
                                </div>
                            </div>
                        </div>

                        <!-- telefon -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fTel">Telefon: </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="fTel" id="fTel" value="<% out.print(telefond); %>"/>
                                </div>
                            </div>
                        </div>

                       

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-9 col-md-offset-3">
                                    <input type="submit" class="btn btn-sm btn-primary" value="Kaydet" name="fKulduzenle"/>
                                    <a href="admin_ayarlar.jsp" class="btn btn-sm btn-danger">İptal</a>
                                </div>
                            </div>
                        </div>





                    </form>

                </div>

            </div>

        </div>

    </div>
    <%@include file="footer.jsp"%>