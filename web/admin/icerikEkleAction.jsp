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

    // düzenleme işlemi yap
    String baslik = request.getParameter("baslik");
    String kisa_aciklama = request.getParameter("kisa_aciklama");
    String detay = request.getParameter("detay");
    String durum = request.getParameter("durum");

    try {
        int yazDurum = ns.baglan().executeUpdate("insert into icerikler values (null,'" + durum + "', '" + baslik + "', '" + kisa_aciklama + "','" + detay + "',now()) ");
    } catch (Exception ex) {
    }

%>


<%    response.sendRedirect("icerik.jsp");%>