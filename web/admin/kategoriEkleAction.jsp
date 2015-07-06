<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data"%>


<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    data ns = new data();
    // vt düzenleme işlemi

    // düzenleme işlemi yap
    String ustId = request.getParameter("topCategory");
    String adi = request.getParameter("kategori_adi");
    

    try {
        System.out.println("yazmadan önce");
            
        int yazDurum = ns.baglan().executeUpdate("insert into kategoriler values (null,'" + adi + "', '"+ustId+"')");
        System.out.println("yazmadan sonra");
        
    } catch (Exception ex) {
        System.out.println("SQL hatası"+ex);
    }

%>


<%    response.sendRedirect("kategori.jsp");%>
