package admin;

import java.util.logging.Level;
import java.util.logging.Logger;

public class KullaniciBean extends data {

    private String kuladi;
    private String sifre;
    private String adi;
    private String soyadi;
    private String mail;
    private String seviye;
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKuladi() {
        return kuladi;
    }

    public void setKuladi(String kuladi) {
        this.kuladi = kuladi;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
    }

    public String getAdi() {
        return adi;
    }

    public void setAdi(String adi) {
        this.adi = adi;
    }

    public String getSoyadi() {
        return soyadi;
    }

    public void setSoyadi(String soyadi) {
        this.soyadi = soyadi;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSeviye() {
        return seviye;
    }

    public void setSeviye(String seviye) {
        this.seviye = seviye;
    }

    public int kullaniciGuncelle(String id, String kuladi, String sifre, String adi, String soyadi, String mail, String seviye) {
        int x = 0;
        try {
            x = baglan().executeUpdate("UPDATE kullanicilar SET kuladi='" + kuladi + "', sifre='" + sifre + "', mail='" + mail + "', adi='" + adi + "', soyadi='" + soyadi + "', seviye='" + seviye + "' WHERE id='" + id + "'");
        } catch (Exception ex) {
            Logger.getLogger(KullaniciBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }

    public int kullaniciEkle(String kuladi, String sifre, String adi, String soyadi, String mail, String seviye) {
        int e = 0;
        try {
            e = baglan().executeUpdate("INSERT INTO kullanicilar VALUES(null,'" + kuladi + "', '" + sifre + "', '" + adi + "', '" + soyadi + "', '" + mail + "', '" + seviye + "', 0, NOW())");
        } catch (Exception ex) {
            Logger.getLogger(KullaniciBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return e;
    }

}
