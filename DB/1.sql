/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : eticaret

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-02 13:00:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for begeniler
-- ----------------------------
DROP TABLE IF EXISTS `begeniler`;
CREATE TABLE `begeniler` (
  `id` int(11) NOT NULL,
  `kul_id` int(11) DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `puan` tinyint(4) DEFAULT NULL COMMENT '1 ile 5 arasında bir değer alabilir',
  `ip_adresi` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of begeniler
-- ----------------------------

-- ----------------------------
-- Table structure for kategoriler
-- ----------------------------
DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ust_kat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kategoriler
-- ----------------------------

-- ----------------------------
-- Table structure for kullanicilar
-- ----------------------------
DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kuladi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seviye` tinyint(4) DEFAULT NULL COMMENT '0 ise admin\r\n1 ise kullanici\r\n',
  `durum` tinyint(4) DEFAULT NULL COMMENT '0 ise aktif\r\n1 ise pasif',
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of kullanicilar
-- ----------------------------

-- ----------------------------
-- Table structure for resimler
-- ----------------------------
DROP TABLE IF EXISTS `resimler`;
CREATE TABLE `resimler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) DEFAULT NULL,
  `resim_adi` varchar(300) COLLATE utf8_turkish_ci DEFAULT NULL,
  `klasor` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of resimler
-- ----------------------------

-- ----------------------------
-- Table structure for sepet
-- ----------------------------
DROP TABLE IF EXISTS `sepet`;
CREATE TABLE `sepet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_kodu` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `adet` tinyint(4) DEFAULT NULL,
  `fiyat` decimal(8,2) DEFAULT NULL,
  `durum` tinyint(4) DEFAULT NULL COMMENT 'sepet durumu\r\n0 ise sipariş verilmedi\r\n1 ise sipariş verildi',
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of sepet
-- ----------------------------

-- ----------------------------
-- Table structure for siparisler
-- ----------------------------
DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `kul_id` int(11) DEFAULT NULL,
  `ref_kodu` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` decimal(8,2) DEFAULT NULL,
  `durum` tinyint(4) DEFAULT NULL COMMENT 'sipariş durumu\r\n0 ise hazırlanıyor\r\n1 isekargoya verildi',
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of siparisler
-- ----------------------------

-- ----------------------------
-- Table structure for urunler
-- ----------------------------
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) DEFAULT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kisa_aciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `detay` text COLLATE utf8_turkish_ci,
  `fiyat` decimal(8,2) DEFAULT NULL,
  `piyasa_fiyati` decimal(8,2) DEFAULT NULL,
  `kampaya` tinyint(4) DEFAULT NULL COMMENT '1 ise kampanyalı\r\n0 ise kampanyasız',
  `stok` smallint(6) DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- ----------------------------
-- Records of urunler
-- ----------------------------
