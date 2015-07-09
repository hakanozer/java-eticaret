package slider;

import admin.data;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {

    public static String path = "\\\\192.168.39.111\\Users\\java-1\\Documents\\NetBeansProjects\\proje\\java-eticaret\\web\\img\\";

    private String photoWidth = null, photoHeight = null;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String adi = request.getParameter("adi");
        String yolu = request.getParameter("yolu");
        String url = request.getParameter("url");
        String anabaslik = request.getParameter("anabaslik");
        String baslik = request.getParameter("baslik");
        String aciklama = request.getParameter("aciklama");

        photoHeight = request.getParameter("photoHeight");
        photoWidth = request.getParameter("photoWidth");
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();

        }

        Connection conn = null; // connection to the database

        try {
            // connects to the database
            data db = new data();

            // constructs SQL statement
            String sql = "INSERT INTO slider values (null,'" + adi + "','" + escapeQuotes(yolu) + "','" + url + "','" + anabaslik + "','" + baslik + "','" + aciklama + "');";

            int row = db.baglan().executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);

            // sends the statement to the database server
            int id = 0;
            ResultSet rs = db.baglan().getGeneratedKeys();

            if (rs.next()) {
                id = rs.getInt(1);
            }
            if (inputStream != null) {
                try {
                    dosyaYazdir(id, adi, inputStream);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (row > 0) {
                System.out.println("başarıyla eklendi");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }

            getServletContext().getRequestDispatcher("/faces/admin/sliderekle.jsp").forward(request, response);
        }

    }

    private void dosyaYazdir(int id, String ad, InputStream input) throws FileNotFoundException, IOException {
        File file = null;
        FileOutputStream fout = null;

        if (ad.toLowerCase().endsWith(".png")) {
            file = new File(path + id + ".png");
            fout = new FileOutputStream(file);
        }

        if (ad.toLowerCase().endsWith(".jpg")) {
            file = new File(path + id + ".jpg");
            fout = new FileOutputStream(file);
        }

        byte[] buffer = new byte[1024];

        while (input.read(buffer) > 0) {
            fout.write(buffer);
            System.out.print("alıyom ");
        }
        fout.close();
        input.close();
    }

    private String escapeQuotes(String myString) {
        return myString.replaceAll(Pattern.quote("\\"), Matcher.quoteReplacement("\\\\"));
    }
}
