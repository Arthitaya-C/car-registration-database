-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: regcar
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `carNo` varchar(25) NOT NULL,
  `carNo_po` varchar(30) NOT NULL,
  `carBrand` varchar(20) NOT NULL,
  `modelCar` varchar(50) NOT NULL,
  `carCol` varchar(30) NOT NULL,
  `seat` int(2) DEFAULT NULL,
  `carYear` int(4) DEFAULT NULL,
  `carReg` varchar(8) DEFAULT NULL,
  `carReg_prov` varchar(25) NOT NULL,
  `carWeight` int(5) NOT NULL,
  `engineNo` varchar(25) NOT NULL,
  PRIMARY KEY (`carNo`),
  KEY `engineNo` (`engineNo`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`engineNo`) REFERENCES `engine` (`engineNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('BNRWT45871I204569 ','Right middle','ISUZU','KBD28T','White',9,NULL,'KP 8888','Chiang Mai',1450,'295558'),('HRHFD16407P104054','Inner grille','HONDA','CIVIC','Black',5,2007,'CP 5039','Bangkok',1200,'R18A17P2999'),('MMTARK57B2F001260','Right front ','MISUBISHI','K57WGLRXRU','White-Brown',7,NULL,'WG 2945','Bangkok',1800,'TA1179'),('PIRE457891458R147','Right front','TOYOTA','HILUX VIGO','Gray',NULL,2006,'PO 4587','Phayao ',1500,'2KD-9657171'),('PJTR45789123546U7','Inner grille','NISSAN','TIIDA','Black',5,2007,'PI 4785','Chumphon',1100,'HR16 909699A'),('POTRDE014578915E1','Inner grille','TOYOTA','WISH','Gray',7,NULL,'BK 4587','Krabi',1400,'T586CE54'),('POUYH5478123564P4','Front','HONDA','ACCORD','White',5,1996,'RT 1507','Nonthaburi',1300,'ACC 0201561'),('POUYHI04875123648','Under seat','FORD','FORD FIESTA','Blue',5,2013,'RE 4719','Nonthaburi',1100,'UEJCDR73712'),('RTSETY47851234578 ','Right front','TOYOTA','KDH222R-LEMDY B1','Gray',13,2006,'PO 4701 ','Lopburi',2100,'2KD-1422986'),('YIOP45781245698Y4','Back','HONDA','CITY','Brown',5,NULL,'BR 4123','Nakhon pathom',1000,'3A234-T104021');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `Card_ID` char(13) NOT NULL,
  `Phone_number` char(10) NOT NULL,
  `House_No` varchar(8) NOT NULL,
  `Vaillage_No` int(3) DEFAULT NULL,
  `Province` varchar(20) NOT NULL,
  `District` varchar(15) NOT NULL,
  `Sub_district` varchar(15) NOT NULL,
  PRIMARY KEY (`Card_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('1025836914785','0649582754','8/48',13,'Lopburi','Khok Charoen','Khok Charoen'),('1234567891234','0871482996','46/180',NULL,'Bangkok','Muang','Pibulsongkram'),('1472583691472','0952354789','326/35',5,'Ratchaburi','Suan Phueng','Suan Phueng'),('2345678912312','0834597862','1/32',11,'Lampang','Mae Mo','Na Sak'),('2548769258485','0879525453','58/13',1,'Phayao','Dok Khamtai','Don Si Chum'),('2583691472583','0970385547','4/61',1,'Krabi','Khao Phanom','Krabinoi'),('3456789123456','0852803512','1',8,'Chiang Mai','Hang Dong','Nhong Khwai'),('3576892410147','0893127584','45/03',7,'Ubon Ratchathani','Samrong','Bon'),('4567891234567','0822608505','21',NULL,'Bangkok','Taling Chan','Chim Phli'),('5678912345678','0678110078','954/65',10,'Nakhon Pathom','Nakhon Chai Sri','Tha Praya'),('7891234567891','0982476951','354/8',8,'Chumphon','Lang Suan','Lang Suan'),('8912345678912','0892201457','9/11',6,'Nomthaburi','Sai Noi','Thawi Watthana'),('9638527411234','0964852356','71/13',14,'Chonburi','Banglamung','Nong Prue');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine`
--

DROP TABLE IF EXISTS `engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine` (
  `engineNo` varchar(25) NOT NULL,
  `engineNo_po` varchar(30) NOT NULL,
  `engineBrand` varchar(20) NOT NULL,
  `fuel` varchar(20) NOT NULL,
  `gasTankNo` varchar(10) DEFAULT NULL,
  `cly` int(2) DEFAULT NULL,
  `Qofcly` int(5) DEFAULT NULL,
  `drv` int(3) DEFAULT NULL,
  `shaft` int(1) DEFAULT NULL,
  `wheels` int(2) DEFAULT NULL,
  `tyres` int(2) DEFAULT NULL,
  PRIMARY KEY (`engineNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine`
--

LOCK TABLES `engine` WRITE;
/*!40000 ALTER TABLE `engine` DISABLE KEYS */;
INSERT INTO `engine` VALUES ('295558','Left engine','ISUZU','Diesel',NULL,4,2499,85,2,4,4),('2KD-1422986','Left engine','TOYOTA','Diesel',NULL,4,2494,109,2,4,4),('2KD-9657171','Left engine','TOYOTA','Diesel',NULL,4,2494,102,2,4,4),('3A234-T104021','Front engine','HONDA','Benzine',NULL,4,1343,95,2,4,4),('ACC 0201561','Right engine','HONDA','Benzine',NULL,4,2156,NULL,2,4,4),('HR16 909699A','Left engine','NISSAN','Benzine',NULL,4,1998,109,2,4,4),('R18A17P2999','Left engine','TOYOTA','Benzine',NULL,4,1799,140,2,4,4),('T586CE54','Left engine','TOYOTA','Benzine+GAS','323',4,1998,150,2,4,4),('TA1179','Left engine','MISUBISHI','Diesel',NULL,4,2835,NULL,2,4,4),('UEJCDR73712','Left engine','FORD','Benzine',NULL,4,1499,112,2,4,4);
/*!40000 ALTER TABLE `engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownercar`
--

DROP TABLE IF EXISTS `ownercar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownercar` (
  `Owner_ID` char(13) NOT NULL,
  `Order_c` int(2) NOT NULL,
  `OwnerName` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `P_Date` date NOT NULL,
  `carReg` varchar(7) NOT NULL,
  `carReg_prov` varchar(25) NOT NULL,
  PRIMARY KEY (`Owner_ID`,`carReg`),
  KEY `carReg` (`carReg`),
  CONSTRAINT `ownercar_ibfk_1` FOREIGN KEY (`Owner_ID`) REFERENCES `contact` (`Card_ID`),
  CONSTRAINT `ownercar_ibfk_2` FOREIGN KEY (`carReg`) REFERENCES `regcar` (`carReg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownercar`
--

LOCK TABLES `ownercar` WRITE;
/*!40000 ALTER TABLE `ownercar` DISABLE KEYS */;
INSERT INTO `ownercar` VALUES ('1025836914785',2,'Yanika Bunnisa','2538-02-18','Thai','2559-02-14','PO 4587','Phayao '),('1234567891234',1,'Somsri Eimjai','2519-05-07','Thai','2545-05-31','WG 2945','Bangkok'),('1472583691472',1,'Parasumi Co.','2520-06-08','Thai','2550-06-18','CP 5039','Bangkok'),('2583691472583',1,'Chananya Yardthip','2535-04-30','Thai','2555-10-08','BK 4587','Krabi'),('3456789123456',2,'Samon Pankdee','2540-01-29','Thai','2560-09-14','KP 8888','Chiang Mai'),('4567891234567',1,'Policath Co.','2529-02-21','Thai','2548-10-14','BR 4123','Nakhon pathom'),('4567891234567',1,'Policath Co.','2529-02-21','Thai','2561-01-14','PO 4701','Lopburi'),('7891234567891',1,'Samon Yomtip ','2539-07-14','Thai','2551-12-01','PI 4785','Chumphon'),('8912345678912',1,'Khosit Rukdee','2535-12-18','Thai','2560-08-12','RE 4719','Nonthaburi'),('8912345678912',2,'Khosit Rukdee','2535-12-18','Thai','2562-10-04','RT 1507','Nonthaburi');
/*!40000 ALTER TABLE `ownercar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regcar`
--

DROP TABLE IF EXISTS `regcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regcar` (
  `carReg` varchar(8) NOT NULL,
  `carReg_prov` varchar(25) NOT NULL,
  `Reg_Date` date NOT NULL,
  `RY_No` char(4) NOT NULL,
  `carNo` varchar(25) NOT NULL,
  `Owner_ID` char(13) NOT NULL,
  `OwnerName` varchar(30) NOT NULL,
  `User_ID` char(13) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  PRIMARY KEY (`carReg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regcar`
--

LOCK TABLES `regcar` WRITE;
/*!40000 ALTER TABLE `regcar` DISABLE KEYS */;
INSERT INTO `regcar` VALUES ('BK 4587','Krabi','2555-10-08','RY1','POTRDE014578915E1','2583691472583','Chananya Yardthip','2583691472583','Chananya Yardthip'),('BR 4123','Nakhon Pathom','2548-10-14','RY1','YIOP45781245698Y4','4567891234567','Policath Co.','5678912345678','Somchai Thana'),('CP 5039','Bangkok','2550-06-18','RY1','HRHFD16407P104054','1472583691472','Parasumi Co.','2345678912312','Tomson Alila'),('KP 8888','Chiang Mai','2560-09-14','RY2','BNRWT45871I204569','3456789123456','Samon Pankdee','3456789123456','Samon Pankdee'),('PI 4785','Chumphon','2551-12-01','RY1','PJTR45789123546U7','7891234567891','Samon Yomtip','7891234567891','Samon Yomtip'),('PO 4587','Phayao','2561-01-14','RY3','PIRE457891458R147','4567891234567','Policath Co.','2548769258485','Khathawut Srisuk'),('PO 4701','Lopburi','2559-02-14','RY2','RTSETY47851234578','1025836914785','Yanika Bunnisa','3576892410147','Phakawan Phatcha'),('RE 4719','Nonthaburi','2560-08-12','RY1','POUYHI04875123648','8912345678912','Khosit Rukdee','8912345678912','Khosit Rukdee'),('RT 1507','Nonthaburi','2562-10-04','RY1','POUYH5478123564P4','8912345678912','Khosit Rukdee','9638527411234','Chirawat Thongson'),('WG 2945','Bangkok','2545-05-31','RY1','MMTARK57B2F001260','1234567891234','Somsri Eimjai','1234567891234','Somsri Eimjai');
/*!40000 ALTER TABLE `regcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rynumber`
--

DROP TABLE IF EXISTS `rynumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rynumber` (
  `RY_No` char(4) NOT NULL,
  `RY_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rynumber`
--

LOCK TABLES `rynumber` WRITE;
/*!40000 ALTER TABLE `rynumber` DISABLE KEYS */;
INSERT INTO `rynumber` VALUES ('RY1','Sedan(Not more than 7 Pass)'),('RY2','Microbus & Passenger Van'),('RY3','Van & Pick Up'),('RY4','Motortricycle'),('RY5','Interprovincial Taxi'),('RY6','Urban Taxi'),('RY7','Fixed Route Taxi'),('RY8','Motortricycle Taxi(Tuk Tuk)'),('RY9','Hotel Taxi'),('RY10','Tour Taxi'),('RY11','Car For Hire'),('RY12','Motorcycle'),('RY13','Tractor'),('RY14','Road Roller'),('RY15','Farm Vehicle'),('RY16','Automobile Trailer'),('RY17','Public Motorcycle');
/*!40000 ALTER TABLE `rynumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercar`
--

DROP TABLE IF EXISTS `usercar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercar` (
  `User_ID` char(13) NOT NULL,
  `Order_c` int(2) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `P_Date` date NOT NULL,
  `carReg` varchar(7) NOT NULL,
  `carReg_prov` varchar(25) NOT NULL,
  PRIMARY KEY (`User_ID`,`carReg`),
  KEY `carReg` (`carReg`),
  CONSTRAINT `usercar_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `contact` (`Card_ID`),
  CONSTRAINT `usercar_ibfk_2` FOREIGN KEY (`carReg`) REFERENCES `regcar` (`carReg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercar`
--

LOCK TABLES `usercar` WRITE;
/*!40000 ALTER TABLE `usercar` DISABLE KEYS */;
INSERT INTO `usercar` VALUES ('1234567891234',1,'Somsri Eimjai','2519-05-07','Thai','2545-05-31','WG 2945','Bangkok'),('2345678912312',1,'Tomson Alila','2528-11-05','Thai','2550-06-18','CP 5039','Bangkok'),('2548769258485',1,'Khathawut Srisuk','2537-10-22','Thai','2561-01-14','PO 4587','Phayao'),('2583691472583',1,'Chananya Yardthip','2535-04-30','Thai','2555-10-08','BK 4587','Krabi'),('3456789123456',2,'Samon Pankdee','2540-01-29','Thai','2560-09-14','KP 8888','Chiang Mai '),('3576892410147',1,'Phakawan Phatcha','2518-05-24','Thai','2559-02-14','PO 4701','Lopburi'),('5678912345678',1,'Somchai Thana','2530-09-22','Thai','2548-10-14','BR 4123','Nakhon pathom'),('7891234567891',1,'Samon Yomtip','2539-07-14','Thai','2551-12-01','PI 4785','Chumphon'),('8912345678912',1,'Khosit Rukdee','2528-09-30','Thai','2560-08-12','RE 4719','Nonthaburi'),('9638527411234',2,'Chirawat Thongson','2542-07-19','Thai','2562-10-04','RT 1507','Nonthaburi');
/*!40000 ALTER TABLE `usercar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 15:23:40
