package slider;

import admin.data;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author aykut
 */
public class Elements {

    data db = new data();

    public ArrayList getElements() {
        ArrayList list = null;
        try {
            ResultSet rs = db.baglan().executeQuery("select * from slider");
            list = new ArrayList();
            while (rs.next()) {

                Map degerler = new HashMap();
                degerler.put("id", rs.getInt("id"));
                degerler.put("adi", rs.getString("adi"));
                degerler.put("path", rs.getString("path"));
                degerler.put("tourl", rs.getString("tourl"));
                degerler.put("anabaslik", rs.getString("anabaslik"));
                degerler.put("baslik", rs.getString("baslik"));
                degerler.put("aciklama", rs.getString("aciklama"));
                degerler.put("yoladi", isminiDondur(rs.getInt("id"), rs.getString("adi")));
                System.out.println("oku: " + isminiDondur(rs.getInt("id"), rs.getString("adi")));
                list.add(degerler);
            }
        } catch (Exception ex) {
            System.err.println("tablo getirme hatasi " + ex);
        }

        return list;
    }

    public String oku(int id, String adi, InputStream stream) throws SQLException, Exception {
        String imageURL = null;
        if (adi.toLowerCase().endsWith(".jpg")) {
            imageURL = FileUploadDBServlet.path + id + ".jpg";
        } else if (adi.toLowerCase().endsWith(".png")) {
            imageURL = FileUploadDBServlet.path + id + ".png";
        }

        return imageURL;
    }

    private String isminiDondur(int id, String s) {
        if (s.toLowerCase().endsWith(".jpg")) {
            s = id + ".jpg";
        }
        if (s.toLowerCase().endsWith(".png")) {
            s = id + ".png";
        }
        return s;
    }

    public boolean sil(String sil) {
        try {
            int durum = db.baglan().executeUpdate("delete from slider where id='" + sil + "';");
            if (durum > 0) {
                System.out.println("başarıyla silindi");
                return true;
            } else {
                System.out.println("silinemedi");
                return false;
            }
        } catch (Exception ex) {
            System.err.println("silme hatası " + ex);
        }
        return false;
    }

    public ArrayList getSelectedElements(String id) {
        ArrayList list = null;
        try {
            ResultSet rs = db.baglan().executeQuery("select * from slider where id='" + id + "'");
            list = new ArrayList();
            while (rs.next()) {

                Map degerler = new HashMap();
                degerler.put("id", rs.getInt("id"));
                degerler.put("adi", rs.getString("adi"));
                degerler.put("path", rs.getString("path"));
                degerler.put("tourl", rs.getString("tourl"));
                degerler.put("anabaslik", rs.getString("anabaslik"));
                degerler.put("baslik", rs.getString("baslik"));
                degerler.put("aciklama", rs.getString("aciklama"));
                degerler.put("yoladi", isminiDondur(rs.getInt("id"), rs.getString("adi")));
                System.out.println("oku: " + isminiDondur(rs.getInt("id"), rs.getString("adi")));
                System.out.println("selected id " + degerler.get("id"));
                list.add(degerler);
            }
        } catch (Exception ex) {
            System.err.println("tablo getirme hatasi " + ex);
        }

        return list;
    }
}
