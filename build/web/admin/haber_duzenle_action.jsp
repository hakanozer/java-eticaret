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
        String durum = request.getParameter("durum");
        String baslik = request.getParameter("baslik");
        String detay = request.getParameter("detay");
        
        
        try {
            int yazDurum = ns.baglan().executeUpdate("update haberler set baslik = '"+baslik+"', detay = '"+detay+"', durum = '"+durum+"'  where id = '"+gid+"' limit 1");
            if(yazDurum > 0) {
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
        
    }

%>


<%    response.sendRedirect("haberler.jsp");%>