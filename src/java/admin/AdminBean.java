/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.sql.ResultSet;

/**
 *
 * @author Java1
 */
public class AdminBean {

    data db = new data();
    private String email, sifre;

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

    public String login(String email, String sifre) {
        String url = "";
        try {
            ResultSet rs = db.baglan().executeQuery("SELECT *FROM kullanicilar WHERE mail='" + email + "' AND sifre='" + sifre + "' AND seviye = 0");
            ResultSet rs2 = db.baglan().executeQuery("SELECT *FROM kullanicilar WHERE mail='" + email + "' AND sifre='" + sifre + "' AND seviye = 1");
            if (rs.next()) {
                // giriş başarılı    
                System.out.println("Giriş başarılı!");
                url = "adminHome.jsp";

            } else if (rs2.next()) {
                System.out.println("Giriş başarılı!");
                url = "adminHome.jsp";
            } else {
                System.out.println("Giriş başarısız!");
                url = "index.jsp";
            }
        } catch (Exception e) {
            System.err.println("Giriş Yapılamadı! : " + e);
        }
        return url;
    }
}
