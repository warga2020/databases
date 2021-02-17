-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `users_tmp`
--

DROP TABLE IF EXISTS `users_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tmp` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Идентификатор пользователя',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tmp`
--

LOCK TABLES `users_tmp` WRITE;
/*!40000 ALTER TABLE `users_tmp` DISABLE KEYS */;
INSERT INTO `users_tmp` VALUES (1,'Willa','Brakus','cydney28@corkerylangosh.com','988-189-0660','27.10.2021 01:02','17.02.2021 01:02'),(2,'Bert','Yundt','aubree70@yahoo.com','427-874-5080','09.11.2021 01:02','17.02.2021 01:02'),(3,'Tomas','Turcotte','isidro.rolfson@russel.com','1-284-814-1697x97821','26.08.2021 01:02','17.02.2021 01:02'),(4,'Tabitha','Goodwin','batz.clinton@yahoo.com','607.362.6825x774','21.06.2021 01:02','17.02.2021 01:02'),(5,'Hillary','Padberg','omer74@gmail.com','797-456-6367x80968','14.10.2021 01:02','17.02.2021 01:02'),(6,'Nick','Leuschke','lewis.stehr@gerlach.info','(309)456-8367','25.09.2021 01:02','17.02.2021 01:02'),(7,'Antonia','Goldner','rowan.runte@gmail.com','438-996-0721','05.07.2021 01:02','17.02.2021 01:02'),(8,'Gerhard','Runolfsdottir','ulindgren@yahoo.com','(666)904-3210','12.04.2021 01:02','17.02.2021 01:02'),(9,'Dortha','Spinka','albin92@yahoo.com','+84(8)0009419908','11.10.2021 01:02','17.02.2021 01:02'),(10,'Fay','Leffler','colleen13@gmail.com','669.466.0761x01671','10.01.2021 01:02','17.02.2021 01:02'),(11,'Geovanny','Dibbert','tillman.darby@hotmail.com','08588201225','01.01.2021 01:02','17.02.2021 01:02'),(12,'Chaz','Stracke','alana38@hotmail.com','862-339-6242','06.10.2021 01:02','17.02.2021 01:02'),(13,'Modesta','Haley','lucas.stiedemann@okon.info','+89(8)7425056586','20.11.2021 01:02','17.02.2021 01:02'),(14,'Rolando','Kassulke','fgusikowski@hotmail.com','937.174.6363x8324','17.01.2021 01:02','17.02.2021 01:02'),(15,'Katheryn','Huels','wbernhard@emmerichgislason.biz','286.618.6134','18.10.2021 01:02','17.02.2021 01:02'),(16,'Raheem','Koepp','emard.immanuel@hotmail.com','(146)479-7155','11.05.2021 01:02','17.02.2021 01:02'),(17,'Sandy','Hermann','xlarkin@abernathylabadie.com','(639)868-9951','25.03.2021 01:02','17.02.2021 01:02'),(18,'Jaydon','VonRueden','vcremin@gmail.com','(347)506-4873','13.06.2021 01:02','17.02.2021 01:02'),(19,'Dolores','Botsford','heath.shanahan@oconnell.org','912.979.3700','08.08.2021 01:02','17.02.2021 01:02'),(20,'Dena','Ratke','agutkowski@anderson.biz','409.223.2758','24.02.2021 01:02','17.02.2021 01:02'),(21,'Kattie','Simonis','ystrosin@torphy.com','(218)753-5461','27.05.2021 01:02','17.02.2021 01:02'),(22,'Mae','Schamberger','nedra.mclaughlin@yahoo.com','213.154.3177x881','02.01.2021 01:02','17.02.2021 01:02'),(23,'Tanner','Hyatt','rath.toni@gmail.com','+92(9)8268989278','09.03.2021 01:02','17.02.2021 01:02'),(24,'Nellie','Littel','deckow.alberto@yahoo.com','07221475688','10.01.2021 01:02','17.02.2021 01:02'),(25,'Eden','Kirlin','xkling@homenick.org','(708)212-0741x25626','01.01.2021 01:02','17.02.2021 01:02'),(26,'Kayli','Leannon','daisha57@gmail.com','908-793-4734x357','07.01.2021 01:02','17.02.2021 01:02'),(27,'Hailie','Swaniawski','boyer.ezekiel@yahoo.com','688.821.0288','16.06.2021 01:02','17.02.2021 01:02'),(28,'Wilmer','Conroy','turner.tremaine@weissnatblock.com','1-453-238-4070x66451','03.09.2021 01:02','17.02.2021 01:02'),(29,'Velma','Murray','macejkovic.reyna@hotmail.com','271-519-8272x43625','23.07.2021 01:02','17.02.2021 01:02'),(30,'Savion','Rutherford','aconnelly@hotmail.com','(247)770-1802x637','19.05.2021 01:02','17.02.2021 01:02'),(31,'Lilyan','Robel','hrunolfsson@hilllmccullough.info','024.312.5969','01.10.2021 01:02','17.02.2021 01:02'),(32,'Amelia','Hand','sincere.will@hotmail.com','687-081-3403','11.04.2021 01:02','17.02.2021 01:02'),(33,'Sydney','Leannon','junius.tremblay@mayertoy.com','+64(4)4058103760','07.04.2021 01:02','17.02.2021 01:02'),(34,'Lacy','Nolan','d\'amore.jaunita@boganrussel.com','373.475.5897x115','28.11.2021 01:02','17.02.2021 01:02'),(35,'Brice','Ondricka','cmarvin@hotmail.com','+67(5)1529200756','21.09.2021 01:02','17.02.2021 01:02'),(36,'Ariane','Leuschke','lacey91@gmail.com','+77(2)1425614697','20.02.2021 01:02','17.02.2021 01:02'),(37,'Jarret','Pfeffer','lubowitz.howard@yahoo.com','021-721-1910','20.01.2021 01:02','17.02.2021 01:02'),(38,'Lempi','Metz','price.darron@gmail.com','01122989159','03.03.2021 01:02','17.02.2021 01:02'),(39,'Laron','Zemlak','dixie.green@stark.com','876-531-7390','03.08.2021 01:02','17.02.2021 01:02'),(40,'Myrtle','Stanton','rosetta61@hilpert.com','375-208-4911x809','28.11.2021 01:02','17.02.2021 01:02'),(41,'Corine','Hartmann','amy.swaniawski@hotmail.com','1-407-734-8459x34835','27.09.2021 01:02','17.02.2021 01:02'),(42,'Cesar','Goldner','marjorie68@gmail.com','1-474-273-9555','04.04.2021 01:02','17.02.2021 01:02'),(43,'Elenor','Mosciski','manuela.altenwerth@schultz.org','988-311-3699x1895','04.09.2021 01:02','17.02.2021 01:02'),(44,'Santos','Schaden','erica28@yahoo.com','1-533-187-8796','08.01.2021 01:02','17.02.2021 01:02'),(45,'Vita','Pfannerstill','khackett@hotmail.com','1-351-667-0951','19.01.2021 01:02','17.02.2021 01:02'),(46,'Alda','Steuber','vshields@okon.org','810-343-9953x959','11.08.2021 01:02','17.02.2021 01:02'),(47,'Filomena','Hoeger','lindgren.ashlee@hilpertcrona.org','(765)863-2454x66358','11.09.2021 01:02','17.02.2021 01:02'),(48,'Cathrine','Sipes','buck.dare@gmail.com','854-325-7622','18.10.2021 01:02','17.02.2021 01:02'),(49,'Maye','Pfeffer','ayden18@will.net','(921)383-3943x4122','15.11.2021 01:02','17.02.2021 01:02'),(50,'Sid','Huels','zieme.shanel@beahan.com','08929431901','10.09.2021 01:02','17.02.2021 01:02'),(51,'Elinor','Stoltenberg','jessy.runolfsson@yost.com','881.530.2603x47755','28.06.2021 01:02','17.02.2021 01:02'),(52,'Emerson','Batz','xhudson@kertzmann.com','07578212186','16.04.2021 01:02','17.02.2021 01:02'),(53,'Candido','Macejkovic','dallin.stanton@prohaskanolan.org','403.021.7934x5544','23.02.2021 01:02','17.02.2021 01:02'),(54,'Lou','Hand','doyle.rosendo@hotmail.com','546.405.8640x1885','12.06.2021 01:02','17.02.2021 01:02'),(55,'Myah','Wolff','valerie.wunsch@okuneva.com','122.891.7012x908','08.09.2021 01:02','17.02.2021 01:02'),(56,'Yesenia','Klocko','gdibbert@hotmail.com','328.009.7527','09.01.2021 01:02','17.02.2021 01:02'),(57,'Kristin','Sawayn','jratke@gmail.com','504.475.1877','12.10.2021 01:02','17.02.2021 01:02'),(58,'Brittany','Schimmel','mario69@walshstokes.com','194.280.0541','08.07.2021 01:02','17.02.2021 01:02'),(59,'Sherman','Turner','sean.wunsch@hettinger.info','1-735-206-6355','08.07.2021 01:02','17.02.2021 01:02'),(60,'Everardo','Wuckert','jordon26@hotmail.com','171.426.1005x71140','25.10.2021 01:02','17.02.2021 01:02'),(61,'Patrick','Schulist','wilderman.leonel@hotmail.com','816.898.7216','13.09.2021 01:02','17.02.2021 01:02'),(62,'Royal','Mitchell','vilma.mills@yahoo.com','(091)269-1739x6457','16.06.2021 01:02','17.02.2021 01:02'),(63,'Jayce','Greenholt','njacobson@yahoo.com','00927786728','17.07.2021 01:02','17.02.2021 01:02'),(64,'Imani','Kilback','gottlieb.triston@hotmail.com','058.089.3376x9198','11.11.2021 01:02','17.02.2021 01:02'),(65,'Samantha','Brekke','greenholt.stephania@hotmail.com','786-427-2825x3334','18.03.2021 01:02','17.02.2021 01:02'),(66,'Giuseppe','Weissnat','bshanahan@gmail.com','1-364-614-2271x725','11.01.2021 01:02','17.02.2021 01:02'),(67,'Blake','Lemke','wanda.metz@wolff.com','+91(4)2245622787','10.06.2021 01:02','17.02.2021 01:02'),(68,'Edwin','Ritchie','ondricka.angus@hotmail.com','(686)277-9638x2030','11.05.2021 01:02','17.02.2021 01:02'),(69,'Carolina','Rippin','guillermo.cremin@hotmail.com','+63(6)0798887421','26.04.2021 01:02','17.02.2021 01:02'),(70,'Braxton','Batz','royal92@gmail.com','(788)404-7629x899','28.10.2021 01:02','17.02.2021 01:02'),(71,'Ladarius','Little','hharris@gmail.com','+05(2)1826074345','09.11.2021 01:02','17.02.2021 01:02'),(72,'Daren','Corkery','stoltenberg.payton@hickle.biz','697-894-8415','27.10.2021 01:02','17.02.2021 01:02'),(73,'Francisco','Murray','tbraun@maggio.net','704.819.3080x13937','11.04.2021 01:02','17.02.2021 01:02'),(74,'Caitlyn','Deckow','damaris.williamson@gmail.com','1-918-673-6438','18.01.2021 01:02','17.02.2021 01:02'),(75,'Kathleen','Wisoky','jack24@yahoo.com','+50(2)2464504299','09.05.2021 01:02','17.02.2021 01:02'),(76,'Rollin','Lowe','marilyne.conroy@bode.com','02136128142','03.04.2021 01:02','17.02.2021 01:02'),(77,'Emile','Schmidt','aurelie76@lubowitz.com','110.560.9121','09.06.2021 01:02','17.02.2021 01:02'),(78,'Linnea','Schowalter','ahmad.medhurst@gmail.com','205.430.1665x755','22.03.2021 01:02','17.02.2021 01:02'),(79,'Ashlee','Will','chet.ryan@hotmail.com','1-643-241-1619','25.07.2021 01:02','17.02.2021 01:02'),(80,'Ottilie','Bogan','elena.breitenberg@gmail.com','(664)775-5405','12.03.2021 01:02','17.02.2021 01:02'),(81,'Trenton','Yost','dahlia.hayes@erdman.info','627-471-4359x628','27.11.2021 01:02','17.02.2021 01:02'),(82,'Vernice','Lebsack','mullrich@williamson.org','+83(3)2462209319','03.06.2021 01:02','17.02.2021 01:02'),(83,'Jeanette','Swift','kunde.gillian@daugherty.com','+39(4)6528036222','04.03.2021 01:02','17.02.2021 01:02'),(84,'Alessia','Kunde','general.deckow@hermiston.com','426.796.1338x5301','18.06.2021 01:02','17.02.2021 01:02'),(85,'Carey','Gerlach','darron.jakubowski@bosco.net','1-083-301-9629x631','21.02.2021 01:02','17.02.2021 01:02'),(86,'Tyrique','Murazik','edurgan@gmail.com','(471)257-9583x6488','15.02.2021 01:02','17.02.2021 01:02'),(87,'Rowena','Douglas','mauer@wilkinson.net','377-636-8450x92715','04.03.2021 01:02','17.02.2021 01:02'),(88,'Berenice','Blick','austin.nader@luettgen.biz','(043)585-9656','22.02.2021 01:02','17.02.2021 01:02'),(89,'Wilburn','Jerde','ehyatt@gmail.com','910.797.6727x1124','11.05.2021 01:02','17.02.2021 01:02'),(90,'Eliseo','Hermiston','bode.allie@deckowmccullough.com','(902)332-3528x53456','05.05.2021 01:02','17.02.2021 01:02'),(91,'Joyce','Howell','london.parisian@gmail.com','717.786.9352x214','15.04.2021 01:02','17.02.2021 01:02'),(92,'Chase','Zieme','joanie.koelpin@yahoo.com','615.685.3453x5561','06.11.2021 01:02','17.02.2021 01:02'),(93,'Willard','Altenwerth','haley.dana@nolanbergstrom.com','515-894-2494','05.11.2021 01:02','17.02.2021 01:02'),(94,'Anika','Stroman','ssporer@fisheryost.info','(323)579-1697x782','12.02.2021 01:02','17.02.2021 01:02'),(95,'Aida','Lakin','akoch@mcdermottbotsford.com','858-568-4449x14253','15.02.2021 01:02','17.02.2021 01:02'),(96,'Enrico','Dare','schmidt.pattie@hoeger.org','07196967149','27.06.2021 01:02','17.02.2021 01:02'),(97,'Trinity','Spencer','pgerlach@glover.com','273.624.1832','18.08.2021 01:02','17.02.2021 01:02'),(98,'Reanna','Klein','emcdermott@weimann.net','267-380-8382','13.03.2021 01:02','17.02.2021 01:02'),(99,'Beulah','Gleason','vfisher@hotmail.com','(655)206-2140x4309','18.06.2021 01:02','17.02.2021 01:02'),(100,'Emelia','Grant','hodkiewicz.donavon@strackeprohaska.com','1-297-882-0993x3323','18.07.2021 01:02','17.02.2021 01:02');
/*!40000 ALTER TABLE `users_tmp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 17:30:31
