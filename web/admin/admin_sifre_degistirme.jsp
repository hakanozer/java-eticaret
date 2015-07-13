<%@page import="com.sun.xml.ws.security.opt.impl.crypto.SSBData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="menu.jsp"%>



<%@page import="admin.data"%>
<%@page import="java.sql.ResultSet"%>

<%
    request.setCharacterEncoding("UTF-8");
    data ns = new data();
    // vt düzenleme işlemi

    boolean duzDurum = (request.getParameter("kulSifre") == null);
   
        // düzenleme işlemi yap
 
       if(!duzDurum) {
           
        boolean fSifreTekrar = (request.getParameter("fSifreTekrar")== null);
        boolean fSifre = (request.getParameter("fSifre")== null);
       
        if(fSifreTekrar==fSifre){    
           
            boolean sesID = (session.getAttribute("adminId") == null);
            String gid = "";
            if(!sesID){
                gid = admin.AdminBean.decode(session.getAttribute("adminId").toString());
            }else{
                System.out.println("HATA!!!");
            }
            String sifre = request.getParameter("fSifre");
           
           
        
        try {
            int yazDurum = ns.baglan().executeUpdate("update kullanicilar set sifre = '"+sifre+"' where id = '"+gid+"' limit 1");
            if(yazDurum > 0) {
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
       
    }
    }

%>




<div class="row">

        <div class="col-md-6 col-md-offset-3">

            <div class="panel panel-primary">
<div class="panel-heading text-center">
                    <h3>Şifre Değiştirme</h3>
                </div>

                <div class="panel-body">

                    <form action="" method="post">

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fSifre">Şifre:</label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="password" name="fSifre" id="fSifre">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fSifreTekrar">Şifre Tekrar:</label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="password" name="fSifreTekrar" id="fSifreTekrar">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-9 col-md-offset-3">
                                    
                                    <input class="btn btn-default btn-sm btn-primary" type="submit" name="kulSifre" value="Kaydet">
                                    <a href="admin_ayarlar.jsp" class="btn btn-sm btn-danger">İptal</a>
                                </div>
                            </div>
                        </div>
                </div>
                    </div>
            </div>
</form>

                </div>


<%@include file="footer.jsp"%>