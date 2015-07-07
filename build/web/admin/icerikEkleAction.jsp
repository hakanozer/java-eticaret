<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%
    request.setCharacterEncoding("UTF-8");

    data ns = new data();
    // vt düzenleme işlemi

    // düzenleme işlemi yap
    String baslik = request.getParameter("baslik");
    String kisa_aciklama = request.getParameter("kisa_aciklama");
    String detay = request.getParameter("detay");
    String durum = request.getParameter("durum");
    
      

    try {
        int yazDurum = ns.baglan().executeUpdate("insert into icerikler values (null,'" + durum + "', '" + baslik + "', '" + kisa_aciklama + "','" + detay.replaceAll("'", "/**/") + "',now()) ");
    } catch (Exception ex) {
        System.out.println("Hata: "+ex);
    }

%>


<%    response.sendRedirect("icerik.jsp");%>