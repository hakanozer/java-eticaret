/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : eticaret

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-07-14 06:52:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for begeniler
-- ----------------------------
DROP TABLE IF EXISTS `begeniler`;
CREATE TABLE `begeniler` (
  `id` int(11) NOT NULL,
  `kul_id` int(11) default NULL,
  `urun_id` int(11) default NULL,
  `puan` tinyint(4) default NULL COMMENT '1 ile 5 arasında bir değer alabilir',
  `ip_adresi` varchar(30) collate utf8_turkish_ci default NULL,
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of begeniler
-- ----------------------------

-- ----------------------------
-- Table structure for duyurular
-- ----------------------------
DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE `duyurular` (
  `duyuru_id` int(11) NOT NULL auto_increment,
  `durum_id` tinyint(4) default NULL,
  `duyuru_baslik` varchar(255) default NULL,
  `duyuru_detay` varchar(500) default NULL,
  `tarih` datetime default NULL,
  PRIMARY KEY  (`duyuru_id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duyurular
-- ----------------------------
INSERT INTO `duyurular` VALUES ('100', '1', 'Fatihffff23423423', 'asda11111', '2015-07-07 09:55:35');
INSERT INTO `duyurular` VALUES ('108', '1', 'kjnjknjkn', null, '2015-07-07 09:54:22');

-- ----------------------------
-- Table structure for haberler
-- ----------------------------
DROP TABLE IF EXISTS `haberler`;
CREATE TABLE `haberler` (
  `id` int(11) NOT NULL auto_increment,
  `durum` tinyint(4) default NULL COMMENT '1 ise aktif 0 ise pasif',
  `baslik` varchar(255) collate utf8_turkish_ci default NULL,
  `detay` text collate utf8_turkish_ci,
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of haberler
-- ----------------------------
INSERT INTO `haberler` VALUES ('1', '1', 'Haber başlığı', 'Haber detayları buraya', '2015-07-08 01:42:17');

-- ----------------------------
-- Table structure for icerikler
-- ----------------------------
DROP TABLE IF EXISTS `icerikler`;
CREATE TABLE `icerikler` (
  `id` int(11) NOT NULL auto_increment,
  `durum` tinyint(2) default NULL COMMENT '1 ise aktif 0 ise pasif',
  `baslik` varchar(50) default NULL,
  `kisa_aciklama` varchar(100) default NULL,
  `detay` varchar(255) default NULL,
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of icerikler
-- ----------------------------
INSERT INTO `icerikler` VALUES ('2', '1', 'siralama', 'butonlari', '<p>calisiyor</p>\r\n', '2015-07-05 14:06:55');
INSERT INTO `icerikler` VALUES ('6', '1', 'aktif pasif', 'filtreleme yapilabiliyor', '<p>sec butonu ile..</p>\r\n', '2015-07-05 14:03:30');
INSERT INTO `icerikler` VALUES ('7', '0', 'arama', 'fonksiyonu', '<p>calisiyor</p>\r\n', '2015-07-05 14:02:39');
INSERT INTO `icerikler` VALUES ('8', '0', 'sil butonu', 'icerik siliyor', '<p><span class=\"marker\"><strong>ayni&nbsp;anda veri tabanindan da</strong></span></p>\r\n', '2015-07-05 14:02:16');
INSERT INTO `icerikler` VALUES ('10', '0', 'var olan', 'icerik duzenlenebiliyor', '<p>bu da detayi</p>\r\n', '2015-07-05 14:01:37');
INSERT INTO `icerikler` VALUES ('26', '1', 'aktif', 'icerik eklendi', '<p>AAA</p>', '2015-07-05 12:25:27');
INSERT INTO `icerikler` VALUES ('27', '0', 'sayfa basina', 'kayit goster', '<p>calisiyor</p>\r\n', '2015-07-05 14:07:35');
INSERT INTO `icerikler` VALUES ('28', '1', 'detay editoru eklendi', 'detay editoru eklendi', '<p>detay editoru eklendi</p>\r\n', '2015-07-05 12:40:16');
INSERT INTO `icerikler` VALUES ('35', '1', 'yeni icerik', 'eklenebiliyor', '<p>bu da detayi</p>\r\n', '2015-07-05 14:01:21');

-- ----------------------------
-- Table structure for kategoriler
-- ----------------------------
DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL auto_increment,
  `adi` varchar(255) collate utf8_turkish_ci default NULL,
  `ust_kat_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kategoriler
-- ----------------------------
INSERT INTO `kategoriler` VALUES ('7', 'Telefon', '0');
INSERT INTO `kategoriler` VALUES ('8', 'Bilgisayar', '0');
INSERT INTO `kategoriler` VALUES ('9', 'Beyaz Eşya', '0');
INSERT INTO `kategoriler` VALUES ('10', 'Elektrikli Ev Aletleri', '0');
INSERT INTO `kategoriler` VALUES ('11', 'Kişisel Bakım', '0');
INSERT INTO `kategoriler` VALUES ('12', 'Akıllı Telefon', '7');
INSERT INTO `kategoriler` VALUES ('13', 'Cep Telefonu', '7');
INSERT INTO `kategoriler` VALUES ('14', 'Telefon Aksesuarları', '7');
INSERT INTO `kategoriler` VALUES ('15', 'Dizüstü Bilgisayarlar', '8');
INSERT INTO `kategoriler` VALUES ('16', 'Masaüstü Bilgisayarlar', '8');
INSERT INTO `kategoriler` VALUES ('17', 'Tablet', '8');
INSERT INTO `kategoriler` VALUES ('18', 'Çamaşır Makineleri', '9');
INSERT INTO `kategoriler` VALUES ('19', 'Bulaşık Makineleri', '9');
INSERT INTO `kategoriler` VALUES ('20', 'Buzdolabı', '9');
INSERT INTO `kategoriler` VALUES ('21', 'Elektrikli Süpürge', '10');
INSERT INTO `kategoriler` VALUES ('22', 'Ütü', '10');
INSERT INTO `kategoriler` VALUES ('23', 'Mutfak Robotu', '10');
INSERT INTO `kategoriler` VALUES ('24', 'Tıraş Makineleri', '11');
INSERT INTO `kategoriler` VALUES ('25', 'Saç Kurutma Makineleri', '11');
INSERT INTO `kategoriler` VALUES ('26', 'Saç Şekillendiriciler', '11');

-- ----------------------------
-- Table structure for kullanicilar
-- ----------------------------
DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL auto_increment,
  `kuladi` varchar(50) collate utf8_turkish_ci default NULL,
  `sifre` varchar(32) collate utf8_turkish_ci default NULL,
  `adi` varchar(255) collate utf8_turkish_ci default NULL,
  `soyadi` varchar(255) collate utf8_turkish_ci default NULL,
  `mail` varchar(255) collate utf8_turkish_ci default NULL,
  `seviye` tinyint(4) default NULL COMMENT '0 ise admin\r\n1 ise kullanici\r\n',
  `durum` tinyint(4) default NULL COMMENT '0 ise aktif\r\n1 ise pasif',
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kullanicilar
-- ----------------------------
INSERT INTO `kullanicilar` VALUES ('1', 'a', 'a', 'ali', 'ali', 'a@a.com', '0', '0', '2015-07-08 09:22:50');

-- ----------------------------
-- Table structure for maillist
-- ----------------------------
DROP TABLE IF EXISTS `maillist`;
CREATE TABLE `maillist` (
  `id` int(11) NOT NULL auto_increment,
  `mail` varchar(255) collate utf8_turkish_ci default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of maillist
-- ----------------------------
INSERT INTO `maillist` VALUES ('1', 'a@a.com', '2015-07-08 09:50:36');
INSERT INTO `maillist` VALUES ('2', 'hakan@hakan.com', '2015-07-08 10:43:48');

-- ----------------------------
-- Table structure for reklamlar
-- ----------------------------
DROP TABLE IF EXISTS `reklamlar`;
CREATE TABLE `reklamlar` (
  `id` int(11) NOT NULL auto_increment,
  `adi` varchar(255) collate utf8_turkish_ci default NULL,
  `gosterim` varchar(255) collate utf8_turkish_ci default NULL,
  `bas_tarih` datetime default NULL,
  `bit_tarih` datetime default NULL,
  `resim` text collate utf8_turkish_ci,
  `reklam_x` int(5) default NULL,
  `reklam_y` int(5) default NULL,
  `link` text collate utf8_turkish_ci,
  `aciklama` text collate utf8_turkish_ci,
  `durum` tinyint(2) default NULL COMMENT '1 ise aktif 0 ise pasif',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of reklamlar
-- ----------------------------
INSERT INTO `reklamlar` VALUES ('1', 'deneme', '5', '2015-07-07 10:49:23', '2015-07-09 10:49:26', 'Koala.jpg', '500', '300', 'link', null, '1');
INSERT INTO `reklamlar` VALUES ('2', 'Hello', '20', '2015-07-07 20:00:00', '2015-07-16 20:00:00', 'Desert.jpg', '500', '300', 'link', null, '0');

-- ----------------------------
-- Table structure for resimler
-- ----------------------------
DROP TABLE IF EXISTS `resimler`;
CREATE TABLE `resimler` (
  `id` int(11) NOT NULL auto_increment,
  `urun_id` int(11) default NULL,
  `resim_adi` varchar(300) collate utf8_turkish_ci default NULL,
  `klasor` varchar(255) collate utf8_turkish_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of resimler
-- ----------------------------

-- ----------------------------
-- Table structure for sepet
-- ----------------------------
DROP TABLE IF EXISTS `sepet`;
CREATE TABLE `sepet` (
  `id` int(11) NOT NULL auto_increment,
  `ref_kodu` varchar(32) collate utf8_turkish_ci default NULL,
  `urun_id` int(11) default NULL,
  `adet` tinyint(4) default NULL,
  `fiyat` decimal(8,2) default NULL,
  `durum` tinyint(4) default NULL COMMENT 'sepet durumu\r\n0 ise sipariş verilmedi\r\n1 ise sipariş verildi',
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of sepet
-- ----------------------------

-- ----------------------------
-- Table structure for siparisler
-- ----------------------------
DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL auto_increment,
  `kul_id` int(11) default NULL,
  `ref_kodu` varchar(32) collate utf8_turkish_ci default NULL,
  `fiyat` decimal(8,2) default NULL,
  `durum` tinyint(4) default NULL COMMENT 'sipariş durumu\r\n0 ise Hazırlanıyor\r\n1 ise Kargoya Verildi\r\n2 ise Sipariş Tamam',
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of siparisler
-- ----------------------------
INSERT INTO `siparisler` VALUES ('1', '123456', '786381787', '700.00', '0', '2015-07-07 04:34:58');
INSERT INTO `siparisler` VALUES ('2', '312312', '434235112', '350.00', '1', '2015-07-07 04:35:25');
INSERT INTO `siparisler` VALUES ('3', '722345', '534784421', '1255.00', '1', '2015-07-07 04:36:00');
INSERT INTO `siparisler` VALUES ('4', '231234', '321252351', '950.00', '0', '2015-07-07 04:36:30');
INSERT INTO `siparisler` VALUES ('5', '523412', '645744523', '430.00', '0', '2015-07-07 04:37:00');
INSERT INTO `siparisler` VALUES ('6', '523411', '633321134', '1990.00', '2', '2015-07-07 04:37:28');
INSERT INTO `siparisler` VALUES ('7', '945345', '121244235', '55.00', '1', '2015-07-07 04:38:46');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL auto_increment,
  `adi` varchar(255) collate utf8_turkish_ci default NULL,
  `path` varchar(255) collate utf8_turkish_ci default NULL,
  `tourl` varchar(255) collate utf8_turkish_ci default NULL,
  `anabaslik` varchar(255) collate utf8_turkish_ci default NULL,
  `baslik` varchar(255) collate utf8_turkish_ci default NULL,
  `aciklama` varchar(1000) collate utf8_turkish_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of slider
-- ----------------------------

-- ----------------------------
-- Table structure for urunler
-- ----------------------------
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler` (
  `id` int(11) NOT NULL auto_increment,
  `kategori_id` int(11) default NULL,
  `baslik` varchar(255) collate utf8_turkish_ci default NULL,
  `kisa_aciklama` varchar(255) collate utf8_turkish_ci default NULL,
  `detay` text collate utf8_turkish_ci,
  `fiyat` decimal(8,2) default NULL,
  `piyasa_fiyati` decimal(8,2) default NULL,
  `kampaya` tinyint(4) default NULL COMMENT '1 ise kampanyalı\r\n0 ise kampanyasız',
  `stok` smallint(6) default NULL,
  `tarih` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of urunler
-- ----------------------------
INSERT INTO `urunler` VALUES ('1', '1', 'Dene', 'kisa dene', 'detay dene', '70.00', '80.00', '1', '10', '2015-07-08 12:34:03');

-- ----------------------------
-- Table structure for urun_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `urun_resimleri`;
CREATE TABLE `urun_resimleri` (
  `id` int(11) NOT NULL auto_increment,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) collate utf8_bin NOT NULL,
  `klasor` varchar(500) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of urun_resimleri
-- ----------------------------
INSERT INTO `urun_resimleri` VALUES ('16', '2', '2_12388922Desert.jpg', '2');
INSERT INTO `urun_resimleri` VALUES ('17', '2', '2_5022449Hydrangeas.jpg', '2');
INSERT INTO `urun_resimleri` VALUES ('18', '2', '2_16291579Jellyfish.jpg', '2');
INSERT INTO `urun_resimleri` VALUES ('19', '1', '1_26682171Koala.jpg', '1');
INSERT INTO `urun_resimleri` VALUES ('20', '1', '1_8578648Lighthouse.jpg', '1');
INSERT INTO `urun_resimleri` VALUES ('21', '1', '1_24061989Penguins.jpg', '1');
INSERT INTO `urun_resimleri` VALUES ('22', '1', '1_19698167Tulips.jpg', '1');
