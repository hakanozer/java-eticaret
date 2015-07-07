<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    
    data ns = new data();
    // vt düzenleme işlemi
    boolean duzDurum = (request.getParameter("dID") == null);
    if(!duzDurum) {
        // düzenleme işlemi yap
        String gid = request.getParameter("dID");
        String durum_id = request.getParameter("durum_id");
        String baslik = request.getParameter("duyuru_baslik");
        String detay = request.getParameter("duyuru_detay");
        //String tarih = request.getParameter("tarih");
        
        try {
            int yazDurum = ns.baglan().executeUpdate("update duyurular set duyuru_baslik = '"+baslik+"', duyuru_detay = '"+detay+"', durum_id = '"+durum_id+"'  where duyuru_id = '"+gid+"' limit 1");
            if(yazDurum > 0) {
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
        
    }

%>


<%    response.sendRedirect("duyurular.jsp");%>