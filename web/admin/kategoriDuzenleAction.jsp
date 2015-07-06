
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data"%>


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
        String ust = request.getParameter("ust_kat_id");
      
        try{
            System.out.println("yazmadan önce");
            int yazDurum = ns.baglan().executeUpdate("update kategoriler set adi='" + adi + "',ust_kat_id = '" + ust + "' where id = '" + gid + "' limit 1");
        System.out.println("yazmadan sonra");
        } catch (Exception ex) {
            System.out.println("SQL hatası  "+ex);

        }

    }

%>


<%    response.sendRedirect("kategori.jsp");%>