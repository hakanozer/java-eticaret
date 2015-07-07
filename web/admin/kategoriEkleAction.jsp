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
    int durum=0;
    if(ustId.equals("0")){
        durum=0;
    }else{
        durum=1;
    }
    
    try {
        System.out.println("yazmadan önce");
            
        int yazDurum = ns.baglan().executeUpdate("insert into kategoriler values (null,'" + adi + "', '"+ustId+"','"+durum+"' )");
        System.out.println("yazmadan sonra");
        
    } catch (Exception ex) {
        System.out.println("SQL hatası"+ex);
    }
    

%>


<%    response.sendRedirect("kategori.jsp");%>
