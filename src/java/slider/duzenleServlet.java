package slider;

import admin.data;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class duzenleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adi = req.getParameter("adi");
        String yolu = req.getParameter("yolu");
        String url = req.getParameter("url");
        String anabaslik = req.getParameter("anabaslik");
        String baslik = req.getParameter("baslik");
        String aciklama = req.getParameter("aciklama");
        String id = req.getParameter("dServletID");

        data db = new data();
        try {
            int durum = db.baglan().executeUpdate("update slider set adi='" + adi + "', path='" + yolu + "', tourl='" + url + "', anabaslik='" + anabaslik + "', baslik='" + baslik + "', aciklama='" + aciklama + "' where id='" + id + "'");
            if (durum > 0) {
                //getServletContext().getRequestDispatcher("/sonhal.jsp").forward(req, resp);
                resp.sendRedirect("/1-proje/faces/admin/sliderlistele.jsp");
                System.out.println("düzenlendi");
            } else {
                System.out.println("düzenlemedi " + durum + "id : " + id);
            }
        } catch (Exception e) {
            System.out.println("düzenleme hatası " + e);
        }
    }
}
