<%-- 
    Document   : iceirkDuzenleAction
    Created on : Jul 5, 2015, 12:29:41 AM
    Author     : Ensar
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
        String baslik = request.getParameter("baslik");
        String kisa_aciklama = request.getParameter("kisa_aciklama");
        String detay = request.getParameter("detay");
        String durum = request.getParameter("durum");
        try {
            int yazDurum = ns.baglan().executeUpdate("update icerikler set durum='" + durum + "',baslik = '" + baslik + "', kisa_aciklama = '" + kisa_aciklama + "',detay = '" + detay + "', tarih = now() where id = '" + gid + "' limit 1");
        } catch (Exception ex) {

        }

    }

%>


<%    response.sendRedirect("icerik.jsp");%>