<%-- 
    Document   : reklamDuzenleAction
    Created on : Jul 7, 2015, 1:23:41 PM
    Author     : recepcoban
--%>

<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    data ns = new data();
    // vt düzenleme işlemi
    boolean duzDurum = (request.getParameter("dID") == null);
    if (!duzDurum) {
        // düzenleme işlemi yap
        String gid = request.getParameter("dID");
        String adi = request.getParameter("adi");
        String gosterim = request.getParameter("gosterim");
        String baslangic = request.getParameter("baslangic");
        String bitis = request.getParameter("bitis");
        String dosya = request.getParameter("dosya");
        String genislik = request.getParameter("genislik");
        String yukseklik = request.getParameter("yukseklik");
        String link = request.getParameter("link");
        String durum = request.getParameter("durum");
        try {
            int yazDurum = ns.baglan().executeUpdate("update reklamlar set adi='" + adi + "',gosterim='" + gosterim + "',bas_tarih='" + baslangic + "',bit_tarih='" + bitis + "',resim='" + dosya + "',reklam_x='" + genislik + "',reklam_y='" + yukseklik + "',link='" + link + "',durum='" + durum + "' where id = '" + gid + "' limit 1");
        } catch (Exception ex) {

        }

    }

%>


<%    response.sendRedirect("reklam.jsp");%>
