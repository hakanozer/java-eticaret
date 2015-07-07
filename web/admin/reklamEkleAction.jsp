<%-- 
    Document   : reklamEkleAction
    Created on : Jul 7, 2015, 12:12:13 PM
    Author     : recepcoban
--%>

<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    data ns = new data();
    // vt düzenleme işlemi

    // düzenleme işlemi yap
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
        int yazDurum = ns.baglan().executeUpdate("insert into reklamlar values (null,'" + adi + "', '" + Integer.valueOf(gosterim) + "', '" + baslangic + "','" + bitis + "','" + dosya + "','" + Integer.valueOf(genislik) + "','" + Integer.valueOf(yukseklik) + "','" + link + "','" + Integer.valueOf(durum) + "' )");
    } catch (Exception ex) {
    }

%>


<%    response.sendRedirect("reklam.jsp");%>
