<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    // çerez siliniyor
    Cookie cerez = new Cookie("adminId", "");
    cerez.setMaxAge(0);
    response.addCookie(cerez);

    // sessionlar siliniyor
    session.invalidate();
    response.sendRedirect("index.jsp");

%>