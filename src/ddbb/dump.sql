-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: RRPP
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `RRPP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `RRPP` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `RRPP`;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `Emp_ID` varchar(5) NOT NULL,
  `Event_ID` varchar(4) DEFAULT NULL,
  `Emp_Name` varchar(30) DEFAULT NULL,
  `Emp_BirthDate` date DEFAULT NULL,
  `Emp_Position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `Employees_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES ('1','04','Kane Lu','1982-10-11','Cleaning\r'),('10','02','Jarrod Rogers','1990-01-05','Security\r'),('100','01','Kurt Pearce','2002-12-01','Resources\r'),('101','04','Jean-Luc Elliott','1982-07-19','Special effects\r'),('102','01','Homer Guerra','1982-11-06','Special effects\r'),('103','02','Malcolm Fletcher','1983-04-10','Security\r'),('104','01','Percy Jacobs','1983-08-15','Cleaning\r'),('105','03','Darcie Cisneros','1985-03-13','Cleaning\r'),('106','03','Wiktoria Lord','1985-11-04','Cleaning\r'),('107','01','Leandro Wilks','1986-03-20','Security\r'),('108','01','Ravinder Mckinney','1987-09-18','Security\r'),('109','05','Donte Salazar','1988-01-06','Cleaning\r'),('11','03','Hanna Burgess','1990-10-02','Cleaning\r'),('110','02','Aydin Lowery','1990-05-14','Resources\r'),('111','01','Laura Redmond','1990-06-03','Security\r'),('112','05','Tessa Cortes','1990-06-12','Special effects\r'),('113','01','Layla-Mae Person','1991-01-08','Cleaning\r'),('114','02','Tomos Page','1992-02-07','Resources\r'),('115','04','Maegan Gilmore','1993-06-11','Special effects\r'),('116','05','Harriette Foreman','1993-08-09','Resources\r'),('117','05','Riley-James Gordon','1994-02-10','Resources\r'),('118','01','Eshaan Marshall','1994-12-14','Cleaning\r'),('119','01','Khaleesi Hyde','1994-12-23','Special effects\r'),('12','01','Emmy Sharples','1992-02-01','Security\r'),('120','01','Lukas Justice','1996-10-12','Special effects\r'),('121','02','Efa Manning','1998-09-25','Cleaning\r'),('122','01','Ramone Taylor','1999-09-23','Resources\r'),('123','02','Derek Mcknight','2000-08-01','Resources\r'),('124','01','Melissa Bright','2001-05-28','Special effects\r'),('125','04','Affan Oneil','2001-06-20','Special effects\r'),('126','02','Ivo Yoder','1971-04-16','Cleaning\r'),('127','04','Alex Rankin','1971-10-14','Security\r'),('128','05','Shivam Acosta','1972-07-11','Special effects\r'),('129','02','Miley Berger','1973-05-04','Security\r'),('13','02','Huma Mosley','1993-03-14','Cleaning\r'),('130','01','Jovan Mullins','1974-06-03','Security\r'),('131','01','Sarah-Louise York','1975-09-26','Special effects\r'),('132','01','Kaeden Graves','1977-06-21','Security\r'),('133','05','Patrycja Mendoza','1979-04-25','Special effects\r'),('134','02','Abdi Draper','1980-03-06','Cleaning\r'),('135','02','Farah Tyler','1981-01-20','Cleaning\r'),('136','01','Amba Betts','1982-01-12','Resources\r'),('137','04','Mikolaj Ashton','1983-05-06','Security\r'),('138','05','Connagh Gill','1983-09-19','Security\r'),('139','02','Denzel Underwood','1983-10-12','Special effects\r'),('14','03','Coral Stubbs','1993-09-26','Security\r'),('140','01','Milena Mccann','1986-01-01','Cleaning\r'),('141','01','Sadiyah Zimmerman','1986-03-20','Security\r'),('142','01','Matei Baldwin','1988-02-29','Cleaning\r'),('143','01','Jayce Byrne','1988-11-07','Cleaning\r'),('144','05','Riya Delacruz','1989-04-25','Security\r'),('145','01','Tamzin William','1989-05-11','Special effects\r'),('146','01','Jayden-Lee Joyner','1989-11-08','Security\r'),('147','04','Beulah Russo','1991-02-20','Security\r'),('148','01','Melinda Connor','1992-03-10','Security\r'),('149','02','Kylie Bostock','1993-01-13','Security\r'),('15','05','Kirby Ahmed','1994-12-29','Resources\r'),('150','01','Piotr Wiley','1994-10-20','Special effects\r'),('151','03','Abbigail Collier','1971-05-05','Resources\r'),('152','05','Abbi Suarez','1972-02-25','Security\r'),('153','04','Vladimir Myers','1972-05-22','Resources\r'),('154','01','Emelia Fields','1972-11-08','Resources\r'),('155','05','Samantha Lindsay','1973-10-15','Cleaning\r'),('156','04','Amit Higgins','1975-08-13','Resources\r'),('157','04','Kailan Francis','1978-09-21','Cleaning\r'),('158','03','Kiya Irving','1979-12-04','Security\r'),('159','05','Jamil Millington','1980-07-21','Security\r'),('16','04','Brendan Doherty','1995-04-19','Special effects\r'),('160','04','Armaan Mcmillan','1980-10-22','Security\r'),('161','01','Phyllis Cottrell','1981-03-18','Security\r'),('162','02','Pauline Quintero','1981-08-21','Resources\r'),('163','02','Demi-Lee Payne','1982-04-15','Special effects\r'),('164','02','Liyah Bloom','1983-10-06','Special effects\r'),('165','03','Bill Eaton','1985-02-21','Special effects\r'),('166','03','Matthew Fenton','1985-06-27','Security\r'),('167','04','Kate Davenport','1985-11-12','Cleaning\r'),('168','05','Anushka Huynh','1986-09-15','Special effects\r'),('169','04','Suzanne Winters','1988-10-13','Resources\r'),('17','05','Ty Simmons','1996-03-27','Special effects\r'),('170','02','Sonia Rivers','1990-08-30','Cleaning\r'),('171','03','Ahmad Ellison','1991-11-07','Security\r'),('172','05','Caitlyn Palacios','1993-11-10','Cleaning\r'),('173','01','Keir Parkinson','1994-05-30','Resources\r'),('174','05','Sky Richmond','1994-12-19','Resources\r'),('175','04','Britany Merrill','1996-07-29','Resources\r'),('176','04','Alexia Mcleod','1971-12-20','Security\r'),('177','01','Hammad Piper','1972-01-13','Security\r'),('178','05','Julie Cuevas','1976-03-17','Cleaning\r'),('179','05','Rhiannon Vincent','1976-03-29','Resources\r'),('18','02','Mahi Butler','1997-06-22','Cleaning\r'),('180','02','Mikey Corona','1978-11-16','Special effects\r'),('181','03','Montell Brett','1979-08-07','Cleaning\r'),('182','04','Ace Mcfarland','1980-06-23','Special effects\r'),('183','04','Simone Pacheco','1980-09-25','Special effects\r'),('184','02','Coral Singleton','1981-03-16','Security\r'),('185','02','Raymond O\'Brien','1981-09-11','Special effects\r'),('186','01','Izaac Dodd','1983-12-21','Cleaning\r'),('187','03','Darien Griffith','1984-12-28','Cleaning\r'),('188','04','Benny Edmonds','1985-11-07','Cleaning\r'),('189','01','Braiden Dillard','1985-12-31','Resources\r'),('19','03','Margo Weber','1997-11-04','Resources\r'),('190','04','Arun Sargent','1988-04-19','Special effects\r'),('191','04','Aubrey Moreno','1989-07-20','Resources\r'),('192','01','Malaikah Buxton','1990-12-13','Security\r'),('193','02','Aqib Sinclair','1992-02-14','Special effects\r'),('194','01','Dawn Peterson','1992-06-23','Security\r'),('195','01','Dillon Beech','1993-02-05','Special effects\r'),('196','02','Tegan Nielsen','1994-09-26','Resources\r'),('197','05','Kerri Schaefer','1994-09-30','Security\r'),('198','01','Zayaan Mac','1995-05-25','Special effects\r'),('199','01','Umaiza Camacho','1995-06-21','Resources\r'),('2','03','Carolina Lowe','1984-03-01','Resources\r'),('20','04','Sienna Legge','1999-10-27','Security\r'),('200','05','Jamelia Wyatt','1995-08-17','Cleaning'),('21','02','Riya Vazquez','2000-01-19','Resources\r'),('22','05','Manuel Joseph','2000-07-08','Special effects\r'),('23','01','Ikra Bolton','2000-09-21','Security\r'),('24','01','Katie-Louise Lugo','2001-10-03','Security\r'),('25','04','Edan Tanner','2002-01-23','Cleaning\r'),('26','01','Waqar Wills','1983-08-18','Security\r'),('27','04','Xanthe Huffman','1984-05-09','Resources\r'),('28','02','Jordana Mcgregor','1985-09-07','Special effects\r'),('29','03','Ariah Cresswell','1986-06-12','Cleaning\r'),('3','02','Hana Storey','1984-08-23','Cleaning\r'),('30','04','Arisha Owens','1986-11-17','Resources\r'),('31','05','Grover Regan','1987-12-04','Special effects\r'),('32','02','Cormac Iles','1988-04-02','Special effects\r'),('33','03','Kenya Samuels','1988-07-07','Special effects\r'),('34','03','Gaia Mann','1990-08-02','Special effects\r'),('35','05','Amy Brady','1990-10-15','Cleaning\r'),('36','03','Lenny Ireland','1992-03-17','Resources\r'),('37','04','Beulah Morrison','1992-04-03','Resources\r'),('38','03','Alana Cairns','1992-06-01','Special effects\r'),('39','01','Kaiser Bassett','1993-02-09','Resources\r'),('4','01','Mccauley Aldred','1985-09-16','Special effects\r'),('40','05','Hugh Parkinson','1993-04-13','Security\r'),('41','03','Kiri Workman','1993-11-07','Cleaning\r'),('42','02','Aditi Hartman','1996-04-23','Resources\r'),('43','04','Zofia Bates','1996-11-11','Resources\r'),('44','05','Matei Allan','1997-07-11','Special effects\r'),('45','02','Rocky Simon','1997-08-22','Cleaning\r'),('46','03','Amba Houghton','1997-09-01','Security\r'),('47','02','Ayat Bradford','1997-09-03','Security\r'),('48','04','Mia-Rose Chamberlain','1998-02-18','Security\r'),('49','01','Jeanette Parrish','1998-11-07','Cleaning\r'),('5','05','Cameron Corrigan','1986-12-06','Cleaning\r'),('50','01','Lilli Bouvet','2001-02-17','Special effects\r'),('51','02','Connah Clarke','1983-05-16','Security\r'),('52','01','Padraig North','1984-03-03','Resources\r'),('53','05','Lillia Frye','1987-02-09','Special effects\r'),('54','05','Montgomery Kenny','1987-09-24','Resources\r'),('55','01','Nabeela Estes','1988-12-09','Security\r'),('56','01','Pheobe Calvert','1989-06-12','Resources\r'),('57','05','Madiha Derrick','1989-08-04','Security\r'),('58','04','Donnell Russo','1992-01-23','Cleaning\r'),('59','03','Dawson Beattie','1992-12-12','Security\r'),('6','01','Bevan Norris','1987-02-12','Resources\r'),('60','02','Izzy Price','1993-03-18','Resources\r'),('61','01','Yousef Stout','1993-12-13','Cleaning\r'),('62','02','Clement Dickerson','1994-01-27','Resources\r'),('63','05','Lola-Mae Estrada','1994-03-10','Security\r'),('64','01','Neriah Lucas','1994-08-08','Security\r'),('65','01','Nicola Couch','1995-03-03','Resources\r'),('66','02','Ameen Lancaster','1997-04-21','Security\r'),('67','01','Gwion Richardson','1997-05-09','Security\r'),('68','01','Hussain Halliday','1998-09-27','Special effects\r'),('69','02','Mack Hilton','1999-08-26','Special effects\r'),('7','04','Lianne Joyner','1987-11-04','Special effects\r'),('70','02','Mario Patterson','1999-09-16','Security\r'),('71','04','Conah Horner','2000-05-27','Security\r'),('72','04','Adrianna Clarkson','2000-11-20','Cleaning\r'),('73','02','Eshal Suarez','2002-01-30','Security\r'),('74','04','Brenden Hall','2002-05-15','Security\r'),('75','01','Sanjeev Davies','2002-12-17','Cleaning\r'),('76','05','Natasha Saunders','1982-11-22','Security\r'),('77','01','Natan Cornish','1984-08-26','Security\r'),('78','04','Lukas Bender','1985-04-19','Resources\r'),('79','03','Tiago Garza','1985-08-18','Resources\r'),('8','03','Maariya Enriquez','1987-12-20','Resources\r'),('80','01','Aarron Bruce','1985-12-10','Special effects\r'),('81','01','Natalya Horn','1985-12-26','Security\r'),('82','04','Kean Hendrix','1987-01-20','Resources\r'),('83','03','Kingsley York','1987-02-08','Resources\r'),('84','04','Charlize Johns','1988-11-19','Security\r'),('85','04','Rian Welsh','1990-01-17','Resources\r'),('86','05','Tracey Hubbard','1991-09-18','Resources\r'),('87','05','Valentino Knox','1992-03-17','Special effects\r'),('88','04','Wyatt Zavala','1992-11-07','Cleaning\r'),('89','01','Raj Ali','1993-12-29','Special effects\r'),('9','01','Letitia Santos','1988-12-19','Resources\r'),('90','02','Percy Sheridan','1994-06-15','Cleaning\r'),('91','04','Jethro Buckley','1995-02-14','Special effects\r'),('92','01','Jaskaran Hope','1995-03-03','Cleaning\r'),('93','01','Adrian Rasmussen','1996-02-04','Special effects\r'),('94','01','Rafferty Valenzuela','1998-03-11','Special effects\r'),('95','04','Mohamad Cantu','1998-07-24','Special effects\r'),('96','02','Caden George','1998-10-25','Resources\r'),('97','04','Jenny Giles','1999-03-18','Security\r'),('98','04','Taslima Booth','2000-07-03','Resources\r'),('99','05','Camille Jennings','2001-02-08','Special effects\r');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees2`
--

DROP TABLE IF EXISTS `Employees2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees2` (
  `Emp_ID` varchar(5) NOT NULL,
  `Event_ID` varchar(4) DEFAULT NULL,
  `Emp_Name` varchar(30) DEFAULT NULL,
  `Emp_BirthDate` date DEFAULT NULL,
  `Emp_Position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `Employees2_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees2`
--

LOCK TABLES `Employees2` WRITE;
/*!40000 ALTER TABLE `Employees2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employees2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Events` (
  `Event_ID` varchar(4) NOT NULL,
  `Event_Name` varchar(20) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Event_Capacity` int DEFAULT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES ('01','Tomorrowland','2022-06-20',90004),('02','Coachella','2023-04-14',30540),('03','Ultra Miami','2023-04-26',43430),('04','EDC Las Vegas','2022-03-27',54000),('05','Mysteryland','2023-04-23',98000);
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `Ticket_ID` varchar(5) NOT NULL,
  `Event_ID` varchar(4) DEFAULT NULL,
  `Client_Name` varchar(30) DEFAULT NULL,
  `Ticket_Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Ticket_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `Tickets_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES ('01','05','Kane Lu','General\r'),('010','05','Jarrod Rogers','Pista B\r'),('0100','03','Kurt Pearce','VIP'),('011','05','Hanna Burgess','General\r'),('012','02','Emmy Sharples','Palco\r'),('013','03','Huma Mosley','General\r'),('014','01','Coral Stubbs','Pista B\r'),('015','05','Kirby Ahmed','General\r'),('016','03','Brendan Doherty','Palco\r'),('017','01','Ty Simmons','Palco\r'),('018','01','Mahi Butler','Pista B\r'),('019','04','Margo Weber','VIP\r'),('02','01','Carolina Lowe','Palco\r'),('020','02','Sienna Legge','VIP\r'),('021','02','Riya Vazquez','VIP\r'),('022','03','Manuel Joseph','Palco\r'),('023','02','Ikra Bolton','General\r'),('024','01','Katie-Louise Lugo','Pista A\r'),('025','01','Edan Tanner','VIP\r'),('026','04','Waqar Wills','Pista B\r'),('027','01','Xanthe Huffman','Pista A\r'),('028','05','Jordana Mcgregor','Pista A\r'),('029','04','Ariah Cresswell','General\r'),('03','04','Hana Storey','VIP\r'),('030','01','Arisha Owens','Pista A\r'),('031','04','Grover Regan','Pista A\r'),('032','01','Cormac Iles','VIP\r'),('033','01','Kenya Samuels','VIP\r'),('034','03','Gaia Mann','Pista A\r'),('035','01','Amy Brady','General\r'),('036','04','Lenny Ireland','General\r'),('037','01','Beulah Morrison','Pista B\r'),('038','01','Alana Cairns','Pista A\r'),('039','01','Kaiser Bassett','Palco\r'),('04','03','Mccauley Aldred','Pista B\r'),('040','05','Hugh Parkinson','Palco\r'),('041','03','Kiri Workman','General\r'),('042','01','Aditi Hartman','Pista B\r'),('043','01','Zofia Bates','Palco\r'),('044','02','Matei Allan','VIP\r'),('045','02','Rocky Simon','VIP\r'),('046','01','Amba Houghton','VIP\r'),('047','05','Ayat Bradford','VIP\r'),('048','01','Mia-Rose Chamberlain','Pista B\r'),('049','02','Jeanette Parrish','Pista B\r'),('05','05','Cameron Corrigan','Pista B\r'),('050','02','Lilli Bouvet','General\r'),('051','05','Connah Clarke','Pista B\r'),('052','04','Padraig North','Pista B\r'),('053','04','Lillia Frye','Pista B\r'),('054','01','Montgomery Kenny','Pista B\r'),('055','05','Nabeela Estes','General\r'),('056','01','Pheobe Calvert','Palco\r'),('057','04','Madiha Derrick','Palco\r'),('058','04','Donnell Russo','VIP\r'),('059','02','Dawson Beattie','General\r'),('06','03','Bevan Norris','VIP\r'),('060','04','Izzy Price','Palco\r'),('061','01','Yousef Stout','Palco\r'),('062','04','Clement Dickerson','Pista A\r'),('063','01','Lola-Mae Estrada','Pista A\r'),('064','03','Neriah Lucas','Pista A\r'),('065','01','Nicola Couch','Pista A\r'),('066','01','Ameen Lancaster','Palco\r'),('067','04','Gwion Richardson','Pista B\r'),('068','04','Hussain Halliday','VIP\r'),('069','01','Mack Hilton','Pista A\r'),('07','01','Lianne Joyner','Pista B\r'),('070','01','Mario Patterson','Palco\r'),('071','04','Conah Horner','Pista A\r'),('072','02','Adrianna Clarkson','VIP\r'),('073','01','Eshal Suarez','VIP\r'),('074','02','Brenden Hall','Palco\r'),('075','01','Sanjeev Davies','General\r'),('076','01','Natasha Saunders','Palco\r'),('077','01','Natan Cornish','Palco\r'),('078','05','Lukas Bender','General\r'),('079','01','Tiago Garza','Pista A\r'),('08','01','Maariya Enriquez','Pista B\r'),('080','02','Aarron Bruce','Pista A\r'),('081','02','Natalya Horn','Pista A\r'),('082','02','Kean Hendrix','Pista A\r'),('083','01','Kingsley York','Pista A\r'),('084','05','Charlize Johns','VIP\r'),('085','02','Rian Welsh','Pista B\r'),('086','01','Tracey Hubbard','Pista B\r'),('087','05','Valentino Knox','Pista B\r'),('088','04','Wyatt Zavala','Palco\r'),('089','04','Raj Ali','Pista A\r'),('09','02','Letitia Santos','General\r'),('090','04','Percy Sheridan','Pista B\r'),('091','01','Jethro Buckley','General\r'),('092','02','Jaskaran Hope','VIP\r'),('093','05','Adrian Rasmussen','Palco\r'),('094','04','Rafferty Valenzuela','General\r'),('095','01','Mohamad Cantu','Palco\r'),('096','02','Caden George','Pista B\r'),('097','05','Jenny Giles','Pista A\r'),('098','02','Taslima Booth','Palco\r'),('099','01','Camille Jennings','General\r');
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-31 16:41:31
