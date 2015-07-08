<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");

    data ns = new data();
    // vt düzenleme işlemi

    // düzenleme işlemi yap
    String mail = request.getParameter("newsletter");
    int yazDurum = -2;
    try {
        yazDurum = ns.baglan().executeUpdate("insert into maillist values (null,'" + mail + "',now()) ");
        response.sendRedirect("index.jsp");
    } catch (Exception ex) {
        if(yazDurum == -2){
            response.sendRedirect("index.jsp?mail=no");
        }
        System.out.println("Hata: "+ex);
    }

%>


<%//    response.sendRedirect("index.jsp");%>