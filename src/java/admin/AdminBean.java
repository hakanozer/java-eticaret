/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.sql.ResultSet;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author Java1
 */
public class AdminBean {

    data db = new data();
    private String email, sifre, gitURL;
	 private static String adminId;
    private String remember = null;

	 public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }
	
    public String getGitURL() {
        return gitURL;
    }

    public void setGitURL(String gitURL) {
        this.gitURL = gitURL;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
    }

	    public static String encode(String str) {
        String encoded = DatatypeConverter.printBase64Binary(str.getBytes());
        return encoded;
    }

    public static String decode(String str) {
        if(str == null) {str = "";}
        String decoded = new String(DatatypeConverter.parseBase64Binary(str));
        return decoded;
    }
	
    public void login() {
        String url = "";
        try {
            ResultSet rs = db.baglan().executeQuery("SELECT *FROM kullanicilar WHERE mail='" + email + "' AND sifre='" + sifre + "' and durum = 0");

            if (rs.next() ) {
                // giriş başarılı    
                System.out.println("Giriş başarılı!");
                adminId = rs.getString("id");
                url = "admin.jsp";

            } else {
                System.out.println("Giriş başarısız!");
                url = "index.jsp";
            }
        } catch (Exception e) {
            System.err.println("Giriş Yapılamadı! : " + e);
        }
        gitURL = url;
    }
}
