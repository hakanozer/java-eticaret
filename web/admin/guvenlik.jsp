
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="yetenek" class="admin.AdminBean" scope="request">



</jsp:useBean>


<%
    
    String cerezDegeri = null;

    if (request.getCookies() != null) {
        Cookie arrCerez[] = request.getCookies();

        for (int i = 0; i < arrCerez.length; i++) {
            if (arrCerez[i].getName().equals("adminId")) {
                // cerez var
                cerezDegeri = arrCerez[i].getValue();
                break;
            }
        }

    }
    boolean durumCerez = false;
    System.out.println(yetenek.getAdminId());
    if (request.getCookies() != null) {
        durumCerez = yetenek.decode(cerezDegeri).equals(yetenek.getAdminId());
    }
    boolean durumOturum = (session.getAttribute("adminId") == null);

    if (!durumOturum || durumCerez) {
// oturum açık ise

    } else {
// oturum kapalı
        response.sendRedirect("index.jsp");
    }


%>

