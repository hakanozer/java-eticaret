
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        data ns = new data();
        
        boolean ekDurum = (request.getParameter("duzenle") == null);//duyururular ekle deki submit buton name i buraya yönlendiriliyor
      if(!ekDurum){
          // vt sorgusu
         // ResultSet rss = null;
        
          String aid = request.getParameter("duyuruEkle");
          String durum_id = request.getParameter("durum_id");
          String duyuru_baslik = request.getParameter("duyuru_baslik");
          String duyuru_detay = request.getParameter("duyuru_detay");
          
          try {
              
           int rss = ns.baglan().executeUpdate("insert into duyurular values (null, '"+durum_id+"', '"+duyuru_baslik+"', '"+duyuru_detay+"', now())");
          if(rss>0){
              response.sendRedirect("duyurular.jsp");
             System.err.println("Ekleme Hatası : Ekleme Başarılı");
          }
          }catch (Exception ex) {
              System.err.println("Ekleme Hatası :" + ex);
             
          
          }
      }      
  %>


<%    response.sendRedirect("duyurular.jsp");%>