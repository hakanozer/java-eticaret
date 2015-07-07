
package admin;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class urunBean extends data {
   private String id,kategori_id,baslik,kisa_aciklama,detay,fiyat,piyasa_fiyati,kampaya,stok,tarih;
   
    private boolean dDurum;

    public boolean isdDurum() {
        return dDurum;
    }

    public void setdDurum(boolean dDurum) {
        this.dDurum = dDurum;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKategori_id() {
        return kategori_id;
    }

    public void setKategori_id(String kategori_id) {
        this.kategori_id = kategori_id;
    }

    public String getBaslik() {
        return baslik;
    }

    public void setBaslik(String baslik) {
        this.baslik = baslik;
    }

    public String getKisa_aciklama() {
        return kisa_aciklama;
    }

    public void setKisa_aciklama(String kisa_aciklama) {
        this.kisa_aciklama = kisa_aciklama;
    }

    public String getDetay() {
        return detay;
    }

    public void setDetay(String detay) {
        this.detay = detay;
    }

    public String getFiyat() {
        return fiyat;
    }

    public void setFiyat(String fiyat) {
        this.fiyat = fiyat;
    }

    public String getPiyasa_fiyati() {
        return piyasa_fiyati;
    }

    public void setPiyasa_fiyati(String piyasa_fiyati) {
        this.piyasa_fiyati = piyasa_fiyati;
    }

    public String getKampaya() {
        return kampaya;
    }

    public void setKampaya(String kampanya) {
        this.kampaya = kampanya;
    }

    public String getStok() {
        return stok;
    }

    public void setStok(String stok) {
        this.stok = stok;
    }

    public String getTarih() {
        return tarih;
    }

    public void setTarih(String tarih) {
        this.tarih = tarih;
    }
    
    
 public List<urunBean> urunListe(){
        List<urunBean> liste = new ArrayList<>();
        try {
            ResultSet rs = baglan().executeQuery("select *from urunler");
            while(rs.next()){
                urunBean ns = new urunBean();
                ns.setId(rs.getString("id"));
                ns.setKategori_id(rs.getString("kategori_id"));
                ns.setBaslik(rs.getString("baslik"));
                ns.setKisa_aciklama(rs.getString("kisa_aciklama"));
                ns.setDetay(rs.getString("detay"));
                ns.setFiyat(rs.getString("fiyat"));
                ns.setPiyasa_fiyati(rs.getString("piyasa_fiyati"));
                ns.setKampaya(rs.getString("kampaya"));
                ns.setStok(rs.getString("stok"));
                ns.setTarih(rs.getString("tarih"));
                liste.add(ns);
            }
        } catch (Exception e) {
            System.err.println("MYSQL Listeleme Hatası : " + e);
        }
        
        
        return liste;
    }
 
   public void urunEkle(){
        try {
            int yaz = baglan().executeUpdate("insert into urunler values (null,'"+getKategori_id()+"', '"+getBaslik()+"','"+getKisa_aciklama()+"','"+getDetay()+"', '"+getFiyat()+"', '"+getPiyasa_fiyati()+"', '"+getKampaya()+"', '"+getStok()+"',now() )");
            if(yaz > 0) {
                System.out.println("Yazma işlemi başarılı");
            }
        } catch (Exception e) {
            System.err.println("Hata : " + e);
        }
        
    }
   
    public void urunDuzenle(){
        setdDurum(false);
        try {
            int duzenle = baglan().executeUpdate("update asci set baslik = '"+getBaslik()+"' where id = '"+getId()+"'", Statement.RETURN_GENERATED_KEYS);
            if(duzenle > 0) {
                System.out.println("Etki id = " + duzenle);
            }
        } catch (Exception e) {
        }
    }
    
    
    
    // düzenle verileri getir
    public void fncDuzenle(int id) {
        setdDurum(true);
        try {
            ResultSet rs = baglan().executeQuery("select *from urunler where id = '"+id+"'");
            if(rs.next()){
                // bu aşçı var
                setId(rs.getString("id"));
                setKategori_id(rs.getString("kategori_id"));
                setBaslik(rs.getString("baslik"));
                setKisa_aciklama(rs.getString("kisa_aciklama"));
                setDetay(rs.getString("detay"));
                setFiyat(rs.getString("fiyat"));
                setPiyasa_fiyati(rs.getString("piyasa_fiyati"));
                setKampaya(rs.getString("kampaya"));
                setStok(rs.getString("stok"));
                setTarih(rs.getString("tarih"));
            }else {
                System.out.println("Urun yok");
            }
            
            
        } catch (Exception e) {
            System.err.println("mysql Düzenleme Hatası : " + e);
        }
    }
    
    
     public void urunSil(){
        setdDurum(false);
        try {
            int duzenle = baglan().executeUpdate("delete from urunler where id = '" + getId() + "' limit 1 ");
            if(duzenle > 0) {
                System.out.println("Etki id = " + duzenle);
            }
        } catch (Exception e) {
        }
    }
    
    
    
    // düzenle verileri getir
    public void fncSil(int id) {
        setdDurum(true);
        try {
            ResultSet rs = baglan().executeQuery("select *from urunler where id = '"+id+"'");
            if(rs.next()){
               
                setId(rs.getString("id"));
                setKategori_id(rs.getString("kategori_id"));
                setBaslik(rs.getString("baslik"));
                setKisa_aciklama(rs.getString("kisa_aciklama"));
                setDetay(rs.getString("detay"));
                setFiyat(rs.getString("fiyat"));
                setPiyasa_fiyati(rs.getString("piyasa_fiyati"));
                setKampaya(rs.getString("kampaya"));
                setStok(rs.getString("stok"));
                setTarih(rs.getString("tarih"));
            }else {
                System.out.println("Urun yok");
            }
            
            
        } catch (Exception e) {
            System.err.println("mysql silme Hatası : " + e);
        }
    }
   
}
