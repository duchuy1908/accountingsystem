-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: htkt
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bang_luongcb`
--

DROP TABLE IF EXISTS `bang_luongcb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bang_luongcb` (
  `chuc_vu` varchar(255) NOT NULL,
  `luong_co_ban` bigint NOT NULL,
  `phu_cap` bigint NOT NULL,
  PRIMARY KEY (`chuc_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bang_luongcb`
--

LOCK TABLES `bang_luongcb` WRITE;
/*!40000 ALTER TABLE `bang_luongcb` DISABLE KEYS */;
INSERT INTO `bang_luongcb` VALUES ('GD',8000000,100000),('NVKD',5000000,100000),('NVKT',6000000,100000),('NVTQ',7000000,100000);
/*!40000 ALTER TABLE `bang_luongcb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangluong`
--

DROP TABLE IF EXISTS `bangluong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bangluong` (
  `mabl` int NOT NULL AUTO_INCREMENT,
  `socong` int NOT NULL,
  `thogian_tao` varchar(255) DEFAULT NULL,
  `thuclinh` bigint NOT NULL,
  `chamcong_ma_chamcong` int DEFAULT NULL,
  PRIMARY KEY (`mabl`),
  KEY `FK51a2nq8xemhmw4q8stqj75u8h` (`chamcong_ma_chamcong`),
  CONSTRAINT `FK51a2nq8xemhmw4q8stqj75u8h` FOREIGN KEY (`chamcong_ma_chamcong`) REFERENCES `chamcong` (`ma_chamcong`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangluong`
--

LOCK TABLES `bangluong` WRITE;
/*!40000 ALTER TABLE `bangluong` DISABLE KEYS */;
INSERT INTO `bangluong` VALUES (10,5,'2021-06-02',1557690,5),(20,8,'2021-06-02',1569224,4),(21,5,'2021-06-02',1173075,1),(22,6,'2021-06-02',1407690,2),(23,5,'2021-06-02',1365380,3);
/*!40000 ALTER TABLE `bangluong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baocaothue`
--

DROP TABLE IF EXISTS `baocaothue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baocaothue` (
  `maso_baocao` int NOT NULL AUTO_INCREMENT,
  `doanhso_ban` bigint NOT NULL,
  `doanhso_mua` bigint NOT NULL,
  `masothue` varchar(255) DEFAULT NULL,
  `thoigian` varchar(255) DEFAULT NULL,
  `thue_kinay` bigint NOT NULL,
  `thue_mua` bigint NOT NULL,
  `thue_nokitruoc` bigint NOT NULL,
  `thue_nolai` bigint NOT NULL,
  `thuecantra` bigint NOT NULL,
  PRIMARY KEY (`maso_baocao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baocaothue`
--

LOCK TABLES `baocaothue` WRITE;
/*!40000 ALTER TABLE `baocaothue` DISABLE KEYS */;
INSERT INTO `baocaothue` VALUES (1,134000,124000,'1234','2021-05',13400,12400,0,13000,1000);
/*!40000 ALTER TABLE `baocaothue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamcong`
--

DROP TABLE IF EXISTS `chamcong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamcong` (
  `ma_chamcong` int NOT NULL AUTO_INCREMENT,
  `ngay_cong` varchar(255) DEFAULT NULL,
  `phong_ban` varchar(255) DEFAULT NULL,
  `so_cong` int NOT NULL,
  `thoigian_tao` varchar(255) DEFAULT NULL,
  `nhanvien_manv` int DEFAULT NULL,
  `thang_luong` varchar(255) DEFAULT NULL,
  `thang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_chamcong`),
  KEY `FK5j4lx3arj6wd3e1rt58h5wyln` (`nhanvien_manv`),
  CONSTRAINT `FK5j4lx3arj6wd3e1rt58h5wyln` FOREIGN KEY (`nhanvien_manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamcong`
--

LOCK TABLES `chamcong` WRITE;
/*!40000 ALTER TABLE `chamcong` DISABLE KEYS */;
INSERT INTO `chamcong` VALUES (1,'1,2,3,4,5,','02',5,'2021-04-25',1,'2021-06',NULL),(2,'1,2,3,4,5,6,','02',6,'2021-04-25',2,'2021-06',NULL),(3,'1,2,3,4,5,','02',5,'2021-04-25',3,'2021-06',NULL),(4,'1,2,3,4,5,6,7,8,','01',8,'2021-04-25',4,'2021-06',NULL),(5,'1,2,3,4,5,','03',5,'2021-04-25',5,'2021-06',NULL);
/*!40000 ALTER TABLE `chamcong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiet_hoadon`
--

DROP TABLE IF EXISTS `chitiet_hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiet_hoadon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dongia` bigint NOT NULL,
  `soluong` int NOT NULL,
  `mahh` varchar(255) DEFAULT NULL,
  `ma_hoadon` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo2m2nq7csaf3ux2wu3mvrbj19` (`mahh`),
  KEY `FKfx2gb0adp5m7vjdoi6xjq94eg` (`ma_hoadon`),
  CONSTRAINT `FKfx2gb0adp5m7vjdoi6xjq94eg` FOREIGN KEY (`ma_hoadon`) REFERENCES `hoadon` (`ma_hoadon`),
  CONSTRAINT `FKo2m2nq7csaf3ux2wu3mvrbj19` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiet_hoadon`
--

LOCK TABLES `chitiet_hoadon` WRITE;
/*!40000 ALTER TABLE `chitiet_hoadon` DISABLE KEYS */;
INSERT INTO `chitiet_hoadon` VALUES (1,1000,1,'HH1',1),(2,1000,1,'HH2',1),(3,2000,1,'HH3',1),(4,10000,1,'HH5',2),(5,5000,4,'HH4',2),(6,10000,1,'HH5',3),(7,2000,1,'HH3',3),(8,1000,10,'HH1',5),(9,2000,1,'HH3',5),(12,10000,10,'HH5',6),(13,5000,10,'HH4',7),(14,5000,10,'HH4',8),(15,1000,1,'HH2',9),(16,5000,2,'HH4',9);
/*!40000 ALTER TABLE `chitiet_hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhoantra`
--

DROP TABLE IF EXISTS `donhoantra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhoantra` (
  `ma_donhoantra` int NOT NULL AUTO_INCREMENT,
  `chiet_khau` double NOT NULL,
  `da_thanhtoan` varchar(255) DEFAULT NULL,
  `donvitinh` varchar(255) DEFAULT NULL,
  `loai_donhoantra` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `ngay_lap` varchar(255) DEFAULT NULL,
  `tong_tien` double NOT NULL,
  `khachhang_makh` int DEFAULT NULL,
  `nhanvien_manv` int DEFAULT NULL,
  PRIMARY KEY (`ma_donhoantra`),
  KEY `FKkbx18d1ygo372sr81anyvi5pj` (`khachhang_makh`),
  KEY `FKrt2nhslhsjfjf0ewnma5n8x2t` (`nhanvien_manv`),
  CONSTRAINT `FKkbx18d1ygo372sr81anyvi5pj` FOREIGN KEY (`khachhang_makh`) REFERENCES `khachhang` (`makh`),
  CONSTRAINT `FKrt2nhslhsjfjf0ewnma5n8x2t` FOREIGN KEY (`nhanvien_manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhoantra`
--

LOCK TABLES `donhoantra` WRITE;
/*!40000 ALTER TABLE `donhoantra` DISABLE KEYS */;
/*!40000 ALTER TABLE `donhoantra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hanghoa`
--

DROP TABLE IF EXISTS `hanghoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hanghoa` (
  `mahh` varchar(255) NOT NULL,
  `don_gia_nhap` double NOT NULL,
  `don_gia_xuat` double NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `ten_hang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mahh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanghoa`
--

LOCK TABLES `hanghoa` WRITE;
/*!40000 ALTER TABLE `hanghoa` DISABLE KEYS */;
INSERT INTO `hanghoa` VALUES ('HH1',1000,2000,'keim','Kem socola'),('HH2',1000,3000,'bánh','Bánh mì'),('HH3',2000,4000,'sữa','Sữa chua'),('HH4',5000,10000,'mì tôm','Mì tôm'),('HH5',10000,20000,'nước','Nước Lavie');
/*!40000 ALTER TABLE `hanghoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `ma_hoadon` int NOT NULL AUTO_INCREMENT,
  `chiet_khau` bigint NOT NULL,
  `da_thanhtoan` varchar(255) DEFAULT NULL,
  `donvitinh` varchar(255) DEFAULT NULL,
  `loai_hoadon` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `ngay_lap` varchar(255) DEFAULT NULL,
  `ngay_thanhtoan` varchar(255) DEFAULT NULL,
  `tong_tien` bigint NOT NULL,
  `khachhang_makh` int DEFAULT NULL,
  `nhanvien_manv` int DEFAULT NULL,
  PRIMARY KEY (`ma_hoadon`),
  KEY `FK8ay7y1gumabc3iujcnse3a6hl` (`khachhang_makh`),
  KEY `FK2t0gvbmwf8c58i5kvop1nrimh` (`nhanvien_manv`),
  CONSTRAINT `FK2t0gvbmwf8c58i5kvop1nrimh` FOREIGN KEY (`nhanvien_manv`) REFERENCES `nhanvien` (`manv`),
  CONSTRAINT `FK8ay7y1gumabc3iujcnse3a6hl` FOREIGN KEY (`khachhang_makh`) REFERENCES `khachhang` (`makh`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,0,'Đã thanh toán','VND','Bán','không mô tả','2021-05-14','2021-05-14',4000,1,1),(2,0,'Chưa thanh toán','VND','Bán','không mô tả','2021-05-14','2021-05-14',30000,2,2),(3,0,'Đã thanh toán','VND','Mua','không mô tả','2021-05-30','2021-05-30',12000,3,3),(5,0,'Chưa thanh toán','VND','Mua','không mô tả','2021-05-21','2021-05-21',12000,2,2),(6,0,'Chưa thanh toán','VND','Bán','không mô tả','2021-05-30','2000-01-01',100000,3,3),(7,0,'Chưa thanh toán','VND','Mua','không mô tả','2021-05-30','2000-01-01',50000,3,3),(8,0,'Chưa thanh toán','VND','Mua','không mô tả','2021-05-30','2000-01-01',50000,3,3),(9,0,'Chưa thanh toán','VND','Mua','không mô tả','2021-05-31','2000-01-01',11000,4,4);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `makh` int NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `maso_thue` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `tenkh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'HN','hung@gmail.com','12345','01234','Hùng'),(2,'HD','Huy@gmail.com','12356','01324','Huy'),(3,'HP','minh@gmail.com','1324','32435','Minh'),(4,'Laos','chino@gmail.com','3243','3243t','Chilaphon'),(5,'HN','ket@gmail.com','34354','3243','Kết');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `manv` int NOT NULL AUTO_INCREMENT,
  `chuc_vu` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `luongcb` float NOT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `ngay_vao` varchar(255) DEFAULT NULL,
  `tennv` varchar(255) DEFAULT NULL,
  `phongban_ma_phongban` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manv`),
  KEY `FKdgv14vd91cwwq6axronx5mocl` (`phongban_ma_phongban`),
  CONSTRAINT `FKdgv14vd91cwwq6axronx5mocl` FOREIGN KEY (`phongban_ma_phongban`) REFERENCES `phongban` (`ma_phongban`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'NVKT','HD',10000,'17-10-1999','17-10-2017','HùngKT','02'),(2,'NVKT','NA',10000,'19-08-1999','01-01-2018','HuyKT','02'),(3,'NVTQ','Laos',20000,'01-10-1999','01-01-2020','ChinoQ','02'),(4,'NVKD','HN',15000,'23-04-1999','01-01-2019','KetKD','01'),(5,'GD','HP',20000,'27-04-1999','01-01-2016','MinhGD','03');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_thuchi`
--

DROP TABLE IF EXISTS `phieu_thuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_thuchi` (
  `ma_phieu` int NOT NULL AUTO_INCREMENT,
  `donvi_tinh` varchar(255) DEFAULT NULL,
  `lido` varchar(255) DEFAULT NULL,
  `loai_phieu` varchar(255) DEFAULT NULL,
  `nguoi_nop_nhan` varchar(255) DEFAULT NULL,
  `so_tien` double NOT NULL,
  `thoi_gian` varchar(255) DEFAULT NULL,
  `nhanvien_manv` int DEFAULT NULL,
  PRIMARY KEY (`ma_phieu`),
  KEY `FKsu1rtpov18f1t26ro5e20w32k` (`nhanvien_manv`),
  CONSTRAINT `FKsu1rtpov18f1t26ro5e20w32k` FOREIGN KEY (`nhanvien_manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_thuchi`
--

LOCK TABLES `phieu_thuchi` WRITE;
/*!40000 ALTER TABLE `phieu_thuchi` DISABLE KEYS */;
INSERT INTO `phieu_thuchi` VALUES (8,'vnd','Trip','Chi','Le Duc Huy',15000000,'2021-06-01',3),(9,'vnd','Thiết kế dự án','Thu','Le Duc Huy',25000000,'2021-06-01',3),(10,'vnd','Thiết bị cho dự án','Chi','Nguyễn Huy Hùng',15000000,'2021-06-01',3);
/*!40000 ALTER TABLE `phieu_thuchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongban`
--

DROP TABLE IF EXISTS `phongban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongban` (
  `ma_phongban` varchar(255) NOT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `vitrivp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_phongban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongban`
--

LOCK TABLES `phongban` WRITE;
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT INTO `phongban` VALUES ('01','Phòng kinh doanh','Tang201'),('02','Phòng kế toán','Phòng 3'),('03','Phòng Giám đốc','Phòng 4');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quy`
--

DROP TABLE IF EXISTS `quy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `donvitinh` varchar(255) DEFAULT NULL,
  `sodu` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quy`
--

LOCK TABLES `quy` WRITE;
/*!40000 ALTER TABLE `quy` DISABLE KEYS */;
INSERT INTO `quy` VALUES (1,'vnd',983000000);
/*!40000 ALTER TABLE `quy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nhanvien_manv` int DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FKt849abk3k7ywyby1bw9nlfkyg` (`nhanvien_manv`),
  CONSTRAINT `FKt849abk3k7ywyby1bw9nlfkyg` FOREIGN KEY (`nhanvien_manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('123','chino',3),('1','hung',1),('1','huy',2),('12','ket',4),('12','minh',5);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'htkt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 11:19:20
