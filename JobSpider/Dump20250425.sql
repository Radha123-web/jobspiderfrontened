CREATE DATABASE  IF NOT EXISTS `jobsspider` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `jobsspider`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: jobsspider
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applydetails`
--

DROP TABLE IF EXISTS `applydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applydetails` (
  `candidateid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `resume` text,
  `email` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  PRIMARY KEY (`candidateid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applydetails`
--

LOCK TABLES `applydetails` WRITE;
/*!40000 ALTER TABLE `applydetails` DISABLE KEYS */;
INSERT INTO `applydetails` VALUES (8,'Rahul Sharma','2025-04-04','Male','b655d19e-39ac-496a-a6be-8a39367afb47.pdf','guptaa@gmail.com','5689234152',14),(9,'Amit Gupta','2025-04-15','Male','6495debe-47bb-4952-883c-769950c6290f.pdf','amit123@gmail.com','8956421753',14),(11,'aniket dabar','2006-05-05','Male','ffec69ab-9e54-4fa6-a1a2-479db79db122.pdf','ankiet8356@gmail.com','9685241536',14);
/*!40000 ALTER TABLE `applydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) DEFAULT NULL,
  `categorypicture` text,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'IT','da214903-56cf-4c3f-bd02-6370c4f1e590.png'),(8,'Sales','79e79d66-976a-48aa-93c2-4e381571f37d.png'),(9,'Management','f8272bfe-f330-4674-b79b-b640d4b7e171.png'),(10,'Finance','3c4eb788-702e-4e62-a737-85906b7df429.png'),(11,'Marketing','902eab34-4b82-405f-b712-e686ca082020.png'),(12,'Engineering','24bc97c3-2695-4752-81ca-6a84dfdd8ef5.png'),(13,'Healthcare','6f1bef2a-32ca-410f-8d4e-306b569eae19.png'),(14,'Education','0c87b75e-76a4-4dd8-9fab-139c32ce0cef.png'),(15,'Human Resources','d159b844-2826-4dde-9528-456502cfd198.png'),(27,'IT','28bb430f-e1a4-4e4a-b068-e9df79243e42.png');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `cityid` int(11) NOT NULL,
  `stateid` int(11) DEFAULT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cityid`),
  KEY `stateid_idx` (`stateid`),
  CONSTRAINT `stateid` FOREIGN KEY (`stateid`) REFERENCES `state` (`stateid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,1,'Visakhapatnam'),(2,1,'Vijayawada'),(3,1,'Guntur'),(4,2,'Itanagar'),(5,2,'Tawang'),(6,2,'Ziro'),(7,3,'Guwahati'),(8,3,'Silchar'),(9,3,'Dibrugarh'),(10,4,'Patna'),(11,4,'Gaya'),(12,4,'Bhagalpur'),(13,5,'Raipur'),(14,5,'Bilaspur'),(15,5,'Durg'),(16,6,'Panaji'),(17,6,'Margao'),(18,6,'Vasco da Gama'),(19,7,'Ahmedabad'),(20,7,'Surat'),(21,7,'Vadodara'),(22,8,'Gurgaon'),(23,8,'Faridabad'),(24,8,'Panipat'),(25,9,'Shimla'),(26,9,'Manali'),(27,9,'Dharamshala'),(28,10,'Ranchi'),(29,10,'Jamshedpur'),(30,10,'Dhanbad'),(31,11,'Bengaluru'),(32,11,'Mysuru'),(33,11,'Hubballi'),(34,12,'Thiruvananthapuram'),(35,12,'Kochi'),(36,12,'Kozhikode'),(37,13,'Bhopal'),(38,13,'Indore'),(39,13,'Gwalior'),(40,14,'Mumbai'),(41,14,'Pune'),(42,14,'Nagpur'),(43,15,'Imphal'),(44,15,'Bishnupur'),(45,15,'Thoubal'),(46,16,'Shillong'),(47,16,'Tura'),(48,16,'Jowai'),(49,17,'Aizawl'),(50,17,'Lunglei'),(51,17,'Champhai'),(52,18,'Kohima'),(53,18,'Dimapur'),(54,18,'Mokokchung'),(55,19,'Bhubaneswar'),(56,19,'Cuttack'),(57,19,'Rourkela'),(58,20,'Chandigarh'),(59,20,'Ludhiana'),(60,20,'Amritsar'),(61,21,'Jaipur'),(62,21,'Udaipur'),(63,21,'Jodhpur'),(64,22,'Gangtok'),(65,22,'Namchi'),(66,22,'Mangan'),(67,23,'Chennai'),(68,23,'Coimbatore'),(69,23,'Madurai'),(70,24,'Hyderabad'),(71,24,'Warangal'),(72,24,'Nizamabad'),(73,25,'Agartala'),(74,25,'Udaipur'),(75,25,'Dharmanagar'),(76,26,'Lucknow'),(77,26,'Kanpur'),(78,26,'Varanasi'),(79,27,'Dehradun'),(80,27,'Haridwar'),(81,27,'Nainital'),(82,28,'Kolkata'),(83,28,'Asansol'),(84,28,'Siliguri');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `companies` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(45) DEFAULT NULL,
  `companyowner` varchar(45) DEFAULT NULL,
  `companyaddress` text,
  `stateid` int(11) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `contactperson` varchar(45) DEFAULT NULL,
  `aboutcompany` text,
  `registrationnumber` varchar(45) DEFAULT NULL,
  `pancard` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `logo` text,
  `descripition` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`companyid`),
  KEY `c_stateid_idx` (`stateid`),
  KEY `c_cityid_idx` (`cityid`),
  KEY `js_sid_cm_id_idx` (`stateid`,`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Zomato Limited','Deepinder Goyal','42c, Golf Course Rd, Sector 42, 122002',8,22,'support@zomato.com','9179895031','Siddharth Shivhare','<p>Launched in 2010, Our technology platform connects customers, restaurant partners and delivery partners, serving their multiple needs. Customers use our platform to search and discover restaurants, read and write customer-generated reviews and view and upload photos, order food delivery, book a table, and make payments while dining-out at restaurants. We also operate a one-stop procurement solution, Hyperpure, and provide delivery partners with transparent earning opportunities.</p>','06AADCD4946L1ZE','AADCD4946L','878435',0,'bdc9702c-9c84-4957-b47f-1408eb5c519b.png','Online food delivery marketplace'),(3,'Blinkit Commerce Private Limited','Albinder Dhindsa','42',8,22,'support@blinkit.com','9876543210','Jane Smith','<p>Blinkit, formerly Grofers, is a quick commerce company that delivers groceries and essentials within minutes.</p>','8000','AADCD5678K','blinkit123',1,'a7d58c53-a469-4a22-be93-6dba038b9aaf.webp','online grocery delivery service'),(4,'Amazon.com,Inc.','Andy Jassy','52',24,70,'support@amazon.com','8001234567','Amazon Support','<p>Amazon is a multinational technology company focusing on e-commerce, cloud computing, digital streaming, and artificial intelligence.</p>','99AACFA1234L1Z3','AACFA1234L','amazon123',1,'b8db0057-5338-4c2b-854a-986715286cfa.png','ecommerce and online retail platform'),(5,'PATYM SERVICES PRIVATE LIMITED','Vijay Shekhar Sharma','B-121, Sector 5, 201301',26,76,'support@paytm.com','9112345678','Ravi Gupta','<p>Paytm is India’s leading digital payments and financial services company, offering mobile wallets, payment gateways, and more.</p>','09AADCP1234M1Z4','AADCP1234M','paytm123',1,'63244265-0f2d-4c37-98d7-cce1e4457bbf.png','Digital payment and e-commerce facilitator'),(6,'Supermarket Grocery Supplies Private Limited','Hari Menon','98, 3rd Cross Rd, Koramangala Industrial Layout, 560034',11,31,'support@bigbasket.com','9198765432','Kavya Nair','<p>Bigbasket is an online grocery store delivering high-quality products at competitive prices.</p>','29AABCB1234N1Z5','AABCB1234N','bigbasket123',1,'dd548cdd-bb4e-4853-ba0a-804829db9166.png','Online grocery store'),(7,'Flipkart Internet Private Limited','Kalyan Krishnamurthy','Flipkart Internet Private Limited 560034',11,31,'support@flipkart.com','9087654321','Arjun Singh','<p>Flipkart is one of India’s leading e-commerce marketplaces, offering a wide range of products from electronics to groceries.</p>','29AACFF1234O1Z6','AACFF1234O','flipkart123',1,'9dcb8c17-8b91-4ae2-88ea-41f63777701e.png','E-commerce and online shopping marketplace'),(8,'Zomato Ltd','Kaivalya Vohra','400001,',14,40,'support@zepto.com','9187654321','Meera Rao','<p>Zepto specializes in fast delivery of groceries and essentials, bringing convenience to your doorstep.</p>','27AADCZ1234P1Z7','AADCZ1234P','zepto123',1,'d8b5cf71-e111-4b39-9b84-c25b2dea9154.png','Delivery and logistics service'),(12,'Swiggy Ltd','Sriharsha Majety','13th Floor, Salarpuria Aura, Hosur Rd,  560068',13,37,'support@swiggy.com','9123456789','john doe','<p>Swiggy is India’s leading on-demand delivery platform, with a tech-driven logistics infrastructure. Founded in 2014, Swiggy connects millions of customers with restaurants and delivery partners to make life easier.</p>','29AABCS1234H1Z1','AABCS1234H','swiggy123',1,'1893ee04-8d6e-46ce-ade4-464241b14587.png','Food delivery and online ordering platform'),(15,'Swiggy Ltd','Sriharsha Majety','13th Floor, Salarpuria Aura, Hosur Rd,  560068',13,37,'support@swiggy.com','9123456789','john doe','<p>Swiggy is India’s leading on-demand delivery platform, with a tech-driven logistics infrastructure. Founded in 2014, Swiggy connects millions of customers with restaurants and delivery partners to make life easier.</p>','29AABCS1234H1Z1','AABCS1234H','12345',1,'12d40d27-677e-43de-a1d4-99f5531c0c0e.svg',NULL),(16,'Swiggy Ltd','Sriharsha Majety','13th Floor, Salarpuria Aura, Hosur Rd,  560068',13,37,'support@swiggy.com','9123456789','john doe','<p>Swiggy is India’s leading on-demand delivery platform, with a tech-driven logistics infrastructure. Founded in 2014, Swiggy connects millions of customers with restaurants and delivery partners to make life easier.</p>','29AABCS1234H1Z1','AABCS1234H','hhhhh',1,'c9f28108-06ab-47f0-9a76-b193b30a625c.svg',NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_jobs`
--

DROP TABLE IF EXISTS `company_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company_jobs` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `skills` text,
  `Educationqualification` text,
  `Experience` varchar(45) DEFAULT NULL,
  `jobdeatails` text,
  `jobtype` varchar(45) DEFAULT NULL,
  `minsalary` varchar(45) DEFAULT NULL,
  `maxsalary` varchar(45) DEFAULT NULL,
  `schedule` varchar(45) DEFAULT NULL,
  `benifits` varchar(45) DEFAULT NULL,
  `worklocationstate` int(11) DEFAULT NULL,
  `worklocationcity` text,
  `supplementalpay` text,
  `postdate` varchar(45) DEFAULT NULL,
  `applicationdeadline` varchar(45) DEFAULT NULL,
  `expectedstart` varchar(45) DEFAULT NULL,
  `applicationquestion` text,
  `contactperson` varchar(45) DEFAULT NULL,
  `emailaddress` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`jobid`),
  KEY `c_companyid_fk_idx` (`companyid`),
  KEY `c_categoryid_fkk_idx` (`categoryid`),
  KEY `c_worklocationstate_fkk_idx` (`worklocationstate`),
  CONSTRAINT `c_categoryid_fkk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `c_companyid_fk` FOREIGN KEY (`companyid`) REFERENCES `companies` (`companyid`) ON DELETE CASCADE,
  CONSTRAINT `c_worklocationstate_fkk` FOREIGN KEY (`worklocationstate`) REFERENCES `state` (`stateid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_jobs`
--

LOCK TABLES `company_jobs` WRITE;
/*!40000 ALTER TABLE `company_jobs` DISABLE KEYS */;
INSERT INTO `company_jobs` VALUES (1,1,7,2,'[{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"}]','[{\"title\":\"Betech\"}]','2-5 year','<p>We are seeking a talented <strong>Full Stack Developer</strong> with strong expertise in <strong>Node.js, AWS, and API integration</strong>. The ideal candidate should be proficient in both <strong>frontend and backend development</strong>, have experience working with <strong>servers and cloud environments</strong>, and be comfortable building scalable, secure, and high-performance web applications.</p><ul><li>Key Responsibilities: <strong>Backend Development:</strong> Design, develop, and optimize server-side applications using <strong>Node.js</strong>.</li><li><strong>Frontend Development:</strong> Work on dynamic and responsive UI/UX using <strong>React.js</strong> (optional but preferred).</li><li><strong>API Development &amp; Integration:</strong> Create and integrate <strong>RESTful APIs</strong> to facilitate seamless communication between services.</li><li><strong>Database Management:</strong> Design and manage databases using <strong>MySQL</strong> or <strong>PostgreSQL</strong>.</li><li><strong>Cloud &amp; Server Management:</strong> Deploy, manage, and optimize applications on <strong>AWS</strong> (EC2, S3, Lambda, RDS, etc.).</li><li><strong>Security &amp; Performance Optimization:</strong> Implement authentication (JWT, OAuth), prevent security vulnerabilities, and optimize performance.</li><li><strong>Version Control &amp; CI/CD:</strong> Utilize <strong>Git</strong> and set up CI/CD pipelines for automated deployments.</li><li><strong>Collaboration &amp; Problem-Solving:</strong> Work with cross-functional teams to build and enhance scalable applications.</li><li><br></li></ul><p>Required Skills &amp; Technologies:✅ <strong>Backend:</strong> Node.js (Express.js, Nest.js), Laravel (PHP)</p><p>✅ <strong>Frontend (Preferred):</strong> React.js, Next.js, Tailwind CSS (optional)</p><p>✅ <strong>Databases:</strong> MySQL, PostgreSQL</p><p>✅ <strong>APIs:</strong> RESTful APIs, WebSockets, Authentication (JWT, OAuth)</p><p>✅ <strong>Cloud &amp; DevOps:</strong> AWS (EC2, S3, RDS, Lambda), Docker, Kubernetes</p><p>✅ <strong>Version Control &amp; CI/CD:</strong> Git, GitHub/GitLab, CI/CD pipelines</p><p>✅ <strong>Security Best Practices:</strong> Authentication, Authorization, SQL Injection Prevention</p><p><br></p><ul><li>Preferred Qualifications:Experience with <strong>serverless computing</strong> (AWS Lambda)</li><li>Knowledge of <strong>microservices architecture</strong></li><li>Understanding of <strong>web performance optimization</strong> techniques</li><li>Familiarity with <strong>Agile methodologies &amp; team collaboration tools</strong> (JIRA, Trello, Slack)</li></ul><p>Why Join Us?✔ Work with the latest <strong>tech stack</strong> and cloud-based architecture</p><p>✔ A <strong>collaborative and innovative</strong> work environment</p><p>✔ Competitive <strong>salary and benefits</strong></p><p>✔ Opportunities for <strong>growth and learning</strong></p><p>✔ we are a growing e-commerce company</p>','Intern','40000','80000','2PM-10PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"}]','<p>Performance Bonus</p>','2025-02-15','2025-08-10','2025-09-01','<p>test</p>','Zomato HR','recruitment@zomato.com','9176543210'),(2,1,7,2,'[{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"},{\"skillid\":9,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Django\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"}]','[{\"title\":\"BSC\"},{\"title\":\"BCOM\"}]','2-5 ','<p>We are seeking a talented <strong>Full Stack Developer</strong> with strong expertise in <strong>Node.js, AWS, and API integration</strong>. The ideal candidate should be proficient in both <strong>frontend and backend development</strong>, have experience working with <strong>servers and cloud environments</strong>, and be comfortable building scalable, secure, and high-performance web applications.</p><ul><li>Key Responsibilities: <strong>Backend Development:</strong> Design, develop, and optimize server-side applications using <strong>Node.js</strong>.</li><li><strong>Frontend Development:</strong> Work on dynamic and responsive UI/UX using <strong>React.js</strong> (optional but preferred).</li><li><strong>API Development &amp; Integration:</strong> Create and integrate <strong>RESTful APIs</strong> to facilitate seamless communication between services.</li><li><strong>Database Management:</strong> Design and manage databases using <strong>MySQL</strong> or <strong>PostgreSQL</strong>.</li><li><strong>Cloud &amp; Server Management:</strong> Deploy, manage, and optimize applications on <strong>AWS</strong> (EC2, S3, Lambda, RDS, etc.).</li><li><strong>Security &amp; Performance Optimization:</strong> Implement authentication (JWT, OAuth), prevent security vulnerabilities, and optimize performance.</li><li><strong>Version Control &amp; CI/CD:</strong> Utilize <strong>Git</strong> and set up CI/CD pipelines for automated deployments.</li><li><strong>Collaboration &amp; Problem-Solving:</strong> Work with cross-functional teams to build and enhance scalable applications.</li><li><br></li></ul><p>Required Skills &amp; Technologies:✅ <strong>Backend:</strong> Node.js (Express.js, Nest.js), Laravel (PHP)</p><p>✅ <strong>Frontend (Preferred):</strong> React.js, Next.js, Tailwind CSS (optional)</p><p>✅ <strong>Databases:</strong> MySQL, PostgreSQL</p><p>✅ <strong>APIs:</strong> RESTful APIs, WebSockets, Authentication (JWT, OAuth)</p><p>✅ <strong>Cloud &amp; DevOps:</strong> AWS (EC2, S3, RDS, Lambda), Docker, Kubernetes</p><p>✅ <strong>Version Control &amp; CI/CD:</strong> Git, GitHub/GitLab, CI/CD pipelines</p><p>✅ <strong>Security Best Practices:</strong> Authentication, Authorization, SQL Injection Prevention</p><p><br></p><ul><li>Preferred Qualifications:Experience with <strong>serverless computing</strong> (AWS Lambda)</li><li>Knowledge of <strong>microservices architecture</strong></li><li>Understanding of <strong>web performance optimization</strong> techniques</li><li>Familiarity with <strong>Agile methodologies &amp; team collaboration tools</strong> (JIRA, Trello, Slack)</li></ul><p>Why Join Us?✔ Work with the latest <strong>tech stack</strong> and cloud-based architecture</p><p>✔ A <strong>collaborative and innovative</strong> work environment</p><p>✔ Competitive <strong>salary and benefits</strong></p><p>✔ Opportunities for <strong>growth and learning</strong></p><p>✔ we are a growing e-commerce company</p>','Work For Home','50000','90000','2PM-10PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"}]','<p>Annual Bonus</p>','2025-03-01','2025-08-20','2025-09-15','<p>test</p>','Zomato ','support@zomato.com','9187654321'),(3,1,8,7,'[{\"skillid\":26,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Cold Calling\"},{\"skillid\":27,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Sales Pitch\"},{\"skillid\":29,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Sales Process\"},{\"skillid\":28,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Lead Qualification\"}]','[{\"title\":\"MBA\"},{\"title\":\"BCOM\"},{\"title\":\"BA\"}]','5-10 ','<p>Enhance employee engagement initiatives</p>','US Time','60000','120000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Employee Development Programs</p>','2025-03-10','2025-08-25','2025-09-20','<p>test</p>','Zomato HR','hrbp@zomato.com','9376543210'),(4,1,9,10,'[{\"skillid\":38,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Project Planning\"},{\"skillid\":39,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Risk Management\"},{\"skillid\":40,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Agile Methodology\"}]','[{\"title\":\"Higher Secondery School\"}]','1-2 ','<p>Design and implement training programs</p>','Hybrid','45000','85000','9AM-6PM','<p>Professional Growth Support</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Flexible Working Hours</p>','2025-03-15','2025-08-30','2025-09-20','<p>test</p>','Zomato Training','training@zomato.com','9178543210'),(5,1,10,13,'[{\"skillid\":51,\"categoryid\":10,\"subcategoryid\":13,\"skills\":\"Financial Reporting\"},{\"skillid\":50,\"categoryid\":10,\"subcategoryid\":13,\"skills\":\"Accounting Software\"}]','[{\"title\":\"BCOM\"},{\"title\":\"MBA\"}]','0-1','<p>Resolve workplace conflicts</p>','Remote','70000','140000','2PM-10PM','<p>work from office</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"}]','<p>Yearly Bonuses</p>','2025-03-20','2025-08-25','2025-09-15','<p>test</p>','Zomato HR','manager@zomato.com','9377543210'),(10,4,14,30,'[{\"skillid\":20,\"categoryid\":14,\"subcategoryid\":10,\"skills\":\"Payroll\"}]','[{\"title\":\"BCOM\"},{\"title\":\"BSC\"}]','0-1','<p>Ensure payroll compliance</p>','Remote','45000','80000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"}]','<p>Performance Bonuses</p>','2025-03-05','2025-08-20','2025-09-10','<p>test</p>','Zepto Payroll','payroll@zepto.com','9187654321'),(13,3,7,2,'[{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"}]','[{\"title\":\"Higher Secondery School\"}]','2-5 ','<p>&nbsp;Software Development Engineer.</p>','Remote','60000','100000','9AM-6PM','<p>Inclusive Benefits</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":1,\"stateid\":1,\"cityname\":\"Visakhapatnam\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Annual Bonuses</p>','2025-03-25','2025-08-25','2025-09-20','<p>test</p>','Blinkit IT','diversity@blinkit.com','9176543215'),(14,3,7,1,'[{\"skillid\":4,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"React.js\"},{\"skillid\":2,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"Node.js\"},{\"skillid\":3,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"REACT.js\"},{\"skillid\":5,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MySQL\"}]','[{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"},{\"title\":\"BSC\"}]','0-1','<ol><li>Job Responsibilities<strong>Frontend Development</strong></li><li><br></li></ol><ul><li>Develop highly interactive <strong>web applications</strong> using <strong>Next.js, React.js, and Tailwind CSS (Shad cn preferred)</strong>.</li><li>Implement <strong>responsive UI/UX</strong> with clean and reusable components (using <strong>module.css</strong>).</li><li>Optimize web applications for <strong>speed and scalability</strong>.</li></ul><ol><li><strong>Backend Development</strong></li><li><br></li></ol><ul><li>Build and maintain <strong>robust APIs</strong> using <strong>Python (Python preferred)</strong>.</li><li>Handle database design and development (using <strong>MongoDB, PostgreSQL, or MySQL</strong>).</li><li>Implement authentication &amp; authorization (JWT, OAuth, Role-based access control).</li></ul><ol><li><strong>DevOps &amp; Deployment</strong></li><li><br></li></ol><ul><li>Manage <strong>server configurations, CI/CD pipelines, and cloud deployments</strong> (AWS, GCP, or DigitalOcean).</li><li>Ensure high performance, security, and scalability of applications.</li><li>Implement logging, monitoring, and debugging tools.</li></ul><ol><li><strong>E-commerce &amp; Service Management System</strong></li><li><br></li></ol><ul><li>Develop and maintain <strong>D2C e-commerce platforms</strong> with payment gateways and inventory management.</li><li>Build and optimize a <strong>service management system</strong> for dealers, distributors, and customers.</li><li>Ensure smooth integration with <strong>CRM and ERP systems</strong>.</li></ul><ol><li><strong>Collaboration &amp; Documentation</strong></li><li><br></li></ol><ul><li>Work closely with <strong>marketing, sales, and operations teams</strong> to understand business needs.</li><li>Write clean, <strong>well-documented code</strong> following best practices.</li><li>Participate in <strong>code reviews</strong> and maintain version control (Git/GitHub).</li></ul><p>RequirementsMust-Have Skills:✅ <strong>Frontend:</strong> Next.js, React.js, Tailwind CSS (DaisyUI preferred), module.css</p><p>✅ <strong>Backend:</strong> Python, REST APIs, WebSockets</p><p>✅ <strong>Database:</strong> MongoDB, PostgreSQL, or MySQL</p><p>✅ <strong>Authentication:</strong> JWT, OAuth, Role-based Access Control</p><p>✅ <strong>DevOps:</strong> AWS, DigitalOcean, CI/CD, Docker (preferred)</p><p>✅ <strong>Version Control:</strong> Git/GitHub</p><p>✅ <strong>E-commerce Development:</strong> Payment gateway integration, cart management</p><p>Preferred Qualifications:✔️ 3+ years of experience in full-stack development</p><p>✔️ Experience in <strong>e-commerce platforms</strong> (Shopify alternatives, custom platforms)</p><p>✔️ Knowledge of <strong>AI-driven automation</strong> (bonus)</p><p>✔️ Understanding of <strong>SEO and performance optimization</strong></p><p><br></p>','Fulltime','65000','110000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"}]','<p>Employee Stock Options</p>','2025-04-01','2025-08-30','2025-09-15','<p>test</p>','Blinkit IT','benefits@blinkit.com','9376543211'),(15,3,9,9,'[{\"skillid\":34,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"Talent Acquisition\"},{\"skillid\":35,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"Employee Engagement\"},{\"skillid\":36,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"HR Policies\"}]','[{\"title\":\"BCOM\"},{\"title\":\"MBA\"},{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"}]','2-5 ','<p>Manage recruitment process</p>','Job for Freshers','70000','130000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"}]','<p>Yearly Bonuses</p>','2025-04-10','2025-08-25','2025-09-20','<p>test</p>','Blinkit sales','support@.blinkit.com','9377543215'),(16,3,9,10,'[{\"skillid\":38,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Project Planning\"},{\"skillid\":39,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Risk Management\"},{\"skillid\":40,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Agile Methodology\"}]','[{\"title\":\"Higher Secondery School\"}]','1-2 ','<p>Project Manager</p>','Intern','65000','120000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Employee Development Support</p>','2025-04-15','2025-08-30','2025-09-25','<p>test</p>','Blinkit Project Manager','projecte@blinkit.com','9376543215'),(17,3,11,17,'[{\"skillid\":67,\"categoryid\":11,\"subcategoryid\":17,\"skills\":\"SEO Strategies\"},{\"skillid\":66,\"categoryid\":11,\"subcategoryid\":17,\"skills\":\"Google Analytics\"},{\"skillid\":68,\"categoryid\":11,\"subcategoryid\":17,\"skills\":\"AdWords\"}]','[{\"title\":\"MCA\"},{\"title\":\"BA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"High School\"}]','5-10 ','<p>Oversee daily HR operations</p>','Job for Freshers','60000','110000','2PM-10PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"}]','<p>Annual Bonuses</p>','2025-04-20','2025-08-20','2025-09-15','<p>test</p>','blinkit','support@blinkit.com','9176543218'),(18,3,15,33,'[{\"skillid\":130,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Candidate Sourcing\"},{\"skillid\":132,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Job Posting Strategies\"},{\"skillid\":133,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Onboarding Processes\"}]','[{\"title\":\"Betech\"},{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"MBA\"},{\"title\":\"BCOM\"}]','3-7','<p> HR recurment</p>','Work from home Jobs','60000','100000','9AM-6PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"},{\"cityid\":41,\"stateid\":14,\"cityname\":\"Pune\"}]','<p>Performance Bonuses</p>','2025-04-05','2025-08-30','2025-09-10','<p>test</p>','Blinkit','hr@blinkit.com','9187654322'),(19,4,7,1,'[{\"skillid\":2,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"Node.js\"},{\"skillid\":3,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"REACT.js\"},{\"skillid\":4,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"React.js\"},{\"skillid\":5,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MySQL\"}]','[{\"title\":\"Betech\"},{\"title\":\"BSC\"}]','2-5','<p>Software Developer</p>','Work from home','50000','85000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Yearly Bonuses</p>','2025-04-10','2025-08-25','2025-09-15','<p>test</p>','Amazon IT','IT@amazon.com','9387654323'),(20,4,9,9,'[{\"skillid\":34,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"Talent Acquisition\"},{\"skillid\":35,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"Employee Engagement\"},{\"skillid\":37,\"categoryid\":9,\"subcategoryid\":9,\"skills\":\"Compensation Management\"}]','[{\"title\":\"MBA\"},{\"title\":\"BCOM\"},{\"title\":\"BA\"}]','5-10 ','<p>Manage employee benefit programs</p>','Work from home','55000','90000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Stock Options</p>','2025-04-15','2025-08-30','2025-09-20','<p>test</p>','Amazon HR','hr@amazon.com','9176543216'),(21,4,7,2,'[{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":9,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Django\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"}]','[{\"title\":\"Betech\"},{\"title\":\"BSC\"},{\"title\":\"BCOM\"}]','1-2 ','<p>sde</p>','International Jobs','50000','90000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":10,\"stateid\":4,\"cityname\":\"Patna\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"}]','<p>Annual Bonuses</p>','2025-03-20','2025-08-30','2025-09-10','<p>test</p>','Amazon IT','it@Amazzon.com','9178543212'),(22,4,7,4,'[{\"skillid\":14,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Machine Learning\"},{\"skillid\":15,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Deep Learning\"},{\"skillid\":16,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Data Analysis\"}]','[{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"},{\"title\":\"BSC\"}]','1-2 ','<p>SDE</p>','Work from home Jobs','40000','85000','9AM-6PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"},{\"cityid\":10,\"stateid\":4,\"cityname\":\"Patna\"}]','<p>Relocation Allowance</p>','2025-03-25','2025-08-25','2025-09-15','<p>test</p>','Amazon IT','it@amazon.com','9176543217'),(23,4,15,33,'[{\"skillid\":130,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Candidate Sourcing\"},{\"skillid\":131,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Interviewing Techniques\"},{\"skillid\":132,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Job Posting Strategies\"}]','[{\"title\":\"MBA\"},{\"title\":\"BCOM\"},{\"title\":\"BA\"},{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"}]','10-50','<p>Enhance employee engagement</p>','Work from home','60000','110000','2PM-10PM','<p>Yearly Bonuses</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":60,\"stateid\":20,\"cityname\":\"Amritsar\"}]','<p>Flexible Working Hours</p>','2025-04-01','2025-08-20','2025-09-20','<p>test</p>','Amazon','hr@amazon.com','9176543219'),(24,4,8,7,'[{\"skillid\":26,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Cold Calling\"},{\"skillid\":28,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Lead Qualification\"},{\"skillid\":27,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Sales Pitch\"}]','[{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BCOM\"},{\"title\":\"BA\"}]','2-5 ','<p>sales  programs</p>','Work from home Jobs','50000','95000','9AM-6PM','<p>Professional Growth Support</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":21,\"stateid\":7,\"cityname\":\"Vadodara\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":26,\"stateid\":9,\"cityname\":\"Manali\"}]','<p>Employee Stock Options</p>','2025-04-05','2025-08-25','2025-09-25','<p>test</p>','Amazon sales','salesg@amazon.com','9178543220'),(25,5,7,1,'[{\"skillid\":1,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MERN\"},{\"skillid\":4,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"React.js\"},{\"skillid\":3,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"REACT.js\"},{\"skillid\":2,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"Node.js\"}]','[{\"title\":\"High School\"},{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"MBA\"}]','10-50','<p>SDE</p>','Job for Freshers','70000','120000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":26,\"stateid\":9,\"cityname\":\"Manali\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Performance Bonuses</p>','2025-04-10','2025-08-20','2025-09-20','<p>test</p>','Paytm It','it@paytm.com','9376543215'),(26,5,7,2,'[{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"}]','[{\"title\":\"BSC\"},{\"title\":\"MBA\"}]','10-50','<p>SDE</p>','Remote','60000','110000','2PM-10PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"}]','<p>Yearly Bonuses</p>','2025-04-15','2025-08-30','2025-09-15','<p>test</p>','Paytm IT','it@paytm.com','9187654322'),(27,5,9,10,'[{\"skillid\":39,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Risk Management\"},{\"skillid\":40,\"categoryid\":9,\"subcategoryid\":10,\"skills\":\"Agile Methodology\"}]','[{\"title\":\"MBA\"},{\"title\":\"BCOM\"}]','5-10 ','<p>Manage recruitment lifecycle</p>','Job for Freshers','60000','100000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Stock Options</p>','2025-04-20','2025-08-30','2025-09-10','<p>test</p>','Paytm Project Manager','sales@paytm.com','9178543215'),(28,5,7,4,'[{\"skillid\":15,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Deep Learning\"},{\"skillid\":17,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"TensorFlow\"},{\"skillid\":16,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Data Analysis\"},{\"skillid\":14,\"categoryid\":7,\"subcategoryid\":4,\"skills\":\"Machine Learning\"}]','[{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"}]','2-5 ','<p>Oversee payroll management</p>','Job for Freshers','50000','90000','9AM-6PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Performance Bonuses</p>','2025-04-25','2025-08-20','2025-09-20','<p>test</p>','Paytm','it@paytm.com','9176543225'),(29,5,15,34,'[{\"skillid\":135,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Employee Engagement Strategies\"},{\"skillid\":136,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Workplace Ethics\"},{\"skillid\":137,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Grievance Handling\"}]','[{\"title\":\"MBA\"},{\"title\":\"BCOM\"},{\"title\":\"BSC\"}]','10-50','<p>Lead engagement strategies</p>','Job for Freshers','70000','120000','2PM-10PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"},{\"cityid\":5,\"stateid\":2,\"cityname\":\"Tawang\"}]','<p>Yearly Bonuses</p>','2025-05-01','2025-08-25','2025-09-25','<p>test</p>','Paytm','hr@paytm.com','9176543226'),(30,5,8,7,'[{\"skillid\":29,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Sales Process\"},{\"skillid\":27,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Sales Pitch\"},{\"skillid\":26,\"categoryid\":8,\"subcategoryid\":7,\"skills\":\"Cold Calling\"}]','[{\"title\":\"Higher Secondery School\"},{\"title\":\"High School\"},{\"title\":\"BCOM\"},{\"title\":\"BA\"}]','0-1','<p>Develop employee skills</p>','Job for Freshers','55000','95000','9AM-6PM','<p>Professional Growth</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"},{\"cityid\":10,\"stateid\":4,\"cityname\":\"Patna\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Stock Options</p>','2025-05-05','2025-08-30','2025-09-20','<p>test</p>','Paytm','sales@paytm.com','9176543227'),(31,6,7,2,'[{\"skillid\":23,\"categoryid\":14,\"subcategoryid\":13,\"skills\":\"Conflict Resolution\"},{\"skillid\":6,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Java\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"}]','[{\"title\":\"MBA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"}]','5-10 ','<p>Resolve workplace conflicts</p>','Work From home Jobs','70000','130000','2PM-10PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"},{\"cityid\":5,\"stateid\":2,\"cityname\":\"Tawang\"}]','<p>Performance Bonuses</p>','2025-05-10','2025-08-25','2025-09-20','<p>test</p>','Bibbasketit','it@bibbasket.com','9376543228'),(32,6,8,6,'[{\"skillid\":24,\"categoryid\":14,\"subcategoryid\":14,\"skills\":\"HR Analytics\"},{\"skillid\":119,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Adolescent Psychology\"},{\"skillid\":120,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Exam Preparation Techniques\"},{\"skillid\":121,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Curriculum Development\"},{\"skillid\":118,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Subject Expertise\"}]','[{\"title\":\"MBA in HR\"},{\"title\":\"BSC\"},{\"title\":\"Betech\"},{\"title\":\"MBA\"}]','2-5 ','<p>Analyze and forecast HR needs</p>','Job for Freshers','65000','110000','2PM-10PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Stock Options</p>','2025-05-15','2025-08-30','2025-09-25','<p>test</p>',' Bigbasketsales','sales@bigbasket.com','9176543229'),(33,6,15,35,'[{\"skillid\":19,\"categoryid\":14,\"subcategoryid\":9,\"skills\":\"Recruitment\"},{\"skillid\":138,\"categoryid\":15,\"subcategoryid\":35,\"skills\":\"Salary Benchmarking\"},{\"skillid\":140,\"categoryid\":15,\"subcategoryid\":35,\"skills\":\"Benefits Administration\"}]','[{\"title\":\"MBA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BSC\"}]','2-5 ','<p>Manage end-to-end recruitment</p>','Job for Freshers','50000','95000','2PM-10PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":4,\"stateid\":2,\"cityname\":\"Itanagar\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"}]','<p>Stock Options</p>','2025-05-20','2025-09-01','2025-09-15','<p>test</p>',' HRmanager','hr@bigbasket.com','9176543230'),(34,6,15,34,'[{\"skillid\":20,\"categoryid\":14,\"subcategoryid\":10,\"skills\":\"Payroll\"},{\"skillid\":135,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Employee Engagement Strategies\"},{\"skillid\":136,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Workplace Ethics\"}]','[{\"title\":\"BCOM\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BSC\"}]','2-5 ','<p>Handle payroll systems</p>','Job for Freshers','45000','90000','9AM-6PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Performance Bonuses</p>','2025-05-25','2025-09-05','2025-09-20','<p>test</p>',' Hrmanager','hr@bigbasket.com','9176543231'),(35,6,7,3,'[{\"skillid\":21,\"categoryid\":14,\"subcategoryid\":11,\"skills\":\"Employee Engagement\"},{\"skillid\":11,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"CSS3\"},{\"skillid\":12,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"JavaScript\"}]','[{\"title\":\"MBA\"},{\"title\":\"BSC\"}]','0-1','<p>We are seeking a talented <strong>Full Stack Developer</strong> with strong expertise in <strong>Node.js, AWS, and API integration</strong>. The ideal candidate should be proficient in both <strong>frontend and backend development</strong>, have experience working with <strong>servers and cloud environments</strong>, and be comfortable building scalable, secure, and high-performance web applications.</p><ul><li>Key Responsibilities: <strong>Backend Development:</strong> Design, develop, and optimize server-side applications using <strong>Node.js</strong>.</li><li><strong>Frontend Development:</strong> Work on dynamic and responsive UI/UX using <strong>React.js</strong> (optional but preferred).</li><li><strong>API Development &amp; Integration:</strong> Create and integrate <strong>RESTful APIs</strong> to facilitate seamless communication between services.</li><li><strong>Database Management:</strong> Design and manage databases using <strong>MySQL</strong> or <strong>PostgreSQL</strong>.</li><li><strong>Cloud &amp; Server Management:</strong> Deploy, manage, and optimize applications on <strong>AWS</strong> (EC2, S3, Lambda, RDS, etc.).</li><li><strong>Security &amp; Performance Optimization:</strong> Implement authentication (JWT, OAuth), prevent security vulnerabilities, and optimize performance.</li><li><strong>Version Control &amp; CI/CD:</strong> Utilize <strong>Git</strong> and set up CI/CD pipelines for automated deployments.</li><li><strong>Collaboration &amp; Problem-Solving:</strong> Work with cross-functional teams to build and enhance scalable applications.</li><li><br></li></ul><p>Required Skills &amp; Technologies:✅ <strong>Backend:</strong> Node.js (Express.js, Nest.js), Laravel (PHP)</p><p>✅ <strong>Frontend (Preferred):</strong> React.js, Next.js, Tailwind CSS (optional)</p><p>✅ <strong>Databases:</strong> MySQL, PostgreSQL</p><p>✅ <strong>APIs:</strong> RESTful APIs, WebSockets, Authentication (JWT, OAuth)</p><p>✅ <strong>Cloud &amp; DevOps:</strong> AWS (EC2, S3, RDS, Lambda), Docker, Kubernetes</p><p>✅ <strong>Version Control &amp; CI/CD:</strong> Git, GitHub/GitLab, CI/CD pipelines</p><p>✅ <strong>Security Best Practices:</strong> Authentication, Authorization, SQL Injection Prevention</p><p><br></p><ul><li>Preferred Qualifications:Experience with <strong>serverless computing</strong> (AWS Lambda)</li><li>Knowledge of <strong>microservices architecture</strong></li><li>Understanding of <strong>web performance optimization</strong> techniques</li><li>Familiarity with <strong>Agile methodologies &amp; team collaboration tools</strong> (JIRA, Trello, Slack)</li></ul><p>Why Join Us?✔ Work with the latest <strong>tech stack</strong> and cloud-based architecture</p><p>✔ A <strong>collaborative and innovative</strong> work environment</p><p>✔ Competitive <strong>salary and benefits</strong></p><p>✔ Opportunities for <strong>growth and learning</strong></p><p>✔ we are a growing e-commerce company</p>','Hybrid','60000','115000','9AM-6PM','<p>Yearly Bonuses</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"}]','<p>Flexible Working Hours</p>','2025-05-30','2025-09-10','2025-09-25','<p>test</p>',' itdipartment',' it@bibbasket.com','9176543232'),(36,5,14,12,'[{\"skillid\":22,\"categoryid\":14,\"subcategoryid\":12,\"skills\":\"Training and Development\"}]','[{\"title\":\"PGDM\"}]','3-5 ','<p>Design training programs</p>','Work from home Jobs','50000','95000','9AM-6PM','<p>Employee Stock Options</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"}]','<p>Relocation Assistance</p>','2025-06-01','2025-09-15','2025-09-30','<p>test</p>','Paytm Training','training@paytm.com','9176543233'),(37,7,7,2,'[{\"skillid\":23,\"categoryid\":14,\"subcategoryid\":13,\"skills\":\"Conflict Resolution\"},{\"skillid\":7,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Python\"},{\"skillid\":8,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Spring Boot\"}]','[{\"title\":\"MBA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BSC\"}]','1-2 ','<p>Resolve employee disputes</p>','Work from home Jobs','70000','125000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"}]','<p>Performance Bonuses</p>','2025-06-05','2025-09-20','2025-10-05','<p>test</p>','fkmanager',' it@Manage recruitment process.com','9176543234'),(38,7,8,6,'[{\"skillid\":24,\"categoryid\":14,\"subcategoryid\":14,\"skills\":\"HR Analytics\"},{\"skillid\":24,\"categoryid\":8,\"subcategoryid\":6,\"skills\":\"Product Marketing\"}]','[{\"title\":\"MBA in HR\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"}]','0-1','<p>Analyze workforce metrics</p>','Job for Freshers','65000','110000','2PM-10PM','<p>Flexible Working Hours</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Stock Options</p>','2025-06-10','2025-09-25','2025-10-10','<p>test</p>',' salesmanager',' sales@flipkart.com','9176543235'),(39,7,15,34,'[{\"skillid\":19,\"categoryid\":14,\"subcategoryid\":9,\"skills\":\"Recruitment\"},{\"skillid\":136,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Workplace Ethics\"},{\"skillid\":135,\"categoryid\":15,\"subcategoryid\":34,\"skills\":\"Employee Engagement Strategies\"}]','[{\"title\":\"MBA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BSC\"}]','2-5 ','<p>Lead recruitment drives</p>','Job for Women','55000','95000','9AM-6PM','<p>Health Insurance</p>',NULL,'[{\"cityid\":15,\"stateid\":5,\"cityname\":\"Mumbai\"}]','<p>Performance Bonuses</p>','2025-06-15','2025-09-01','2025-09-20','<p>test</p>','hrmanager',' hr@flipkart.com','9176543236'),(40,7,14,30,'[{\"skillid\":20,\"categoryid\":14,\"subcategoryid\":10,\"skills\":\"Payroll\"},{\"skillid\":120,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Exam Preparation Techniques\"},{\"skillid\":121,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Curriculum Development\"},{\"skillid\":118,\"categoryid\":14,\"subcategoryid\":30,\"skills\":\"Subject Expertise\"}]','[{\"title\":\"BBA\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"MBA\"}]','2-5 ','<p>Manage payroll systems</p>','Work from home Jobs','50000','85000','2PM-10PM','<p>Relocation Assistance</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Yearly Bonuses</p>','2025-06-20','2025-09-10','2025-09-30','<p>test</p>',' fkmanager',' hr@flipkart.com','9176543237'),(41,7,7,2,'[{\"skillid\":21,\"categoryid\":14,\"subcategoryid\":11,\"skills\":\"Employee Engagement\"},{\"skillid\":9,\"categoryid\":7,\"subcategoryid\":2,\"skills\":\"Django\"}]','[{\"title\":\"MBA in HR\"},{\"title\":\"Betech\"}]','5-10 ','<p>Enhance employee satisfaction</p>','Job for Freshers','60000','115000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"}]','<p>Stock Options</p>','2025-06-25','2025-09-15','2025-10-05','<p>test</p>',' itmanager',' it@flipkart.com','9176543238'),(42,7,8,6,'[{\"skillid\":22,\"categoryid\":14,\"subcategoryid\":12,\"skills\":\"Training and Development\"},{\"skillid\":24,\"categoryid\":8,\"subcategoryid\":6,\"skills\":\"Product Marketing\"},{\"skillid\":22,\"categoryid\":8,\"subcategoryid\":6,\"skills\":\"Customer Acquisition\"}]','[{\"title\":\"PGDM\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"BSC\"}]','2-5 ','<p>Develop training programs</p>','Part time Jobs','55000','95000','9AM-6PM','<p>Flexible Schedule</p>',NULL,'[{\"cityid\":38,\"stateid\":13,\"cityname\":\"Indore\"}]','<p>Professional Growth</p>','2025-06-30','2025-09-20','2025-10-10','<p>test</p>',' salesmanager',' sales@flipkart.com','9176543239'),(43,8,7,3,'[{\"skillid\":10,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"HTML5\"},{\"skillid\":11,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"CSS3\"},{\"skillid\":12,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"JavaScript\"},{\"skillid\":13,\"categoryid\":7,\"subcategoryid\":3,\"skills\":\"Vue.js\"}]','[{\"title\":\"High School\"},{\"title\":\"Higher Secondery School\"},{\"title\":\"Betech\"},{\"title\":\"BCOM\"}]','10-50','<p>Resolve workplace conflicts</p>','Job for Women','75000','125000','9AM-6PM','<p>Health Benefits</p>',NULL,'[{\"cityid\":70,\"stateid\":24,\"cityname\":\"Hyderabad\"},{\"cityid\":19,\"stateid\":7,\"cityname\":\"Ahmedabad\"},{\"cityid\":22,\"stateid\":8,\"cityname\":\"Gurgaon\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"}]','<p>Performance Bonuses</p>','2025-07-01','2025-09-25','2025-10-15','<p>test</p>','Zepto IT','it@zepto.com','9176543240'),(44,8,15,33,'[{\"skillid\":131,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Interviewing Techniques\"},{\"skillid\":130,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Candidate Sourcing\"},{\"skillid\":132,\"categoryid\":15,\"subcategoryid\":33,\"skills\":\"Job Posting Strategies\"}]','[{\"title\":\"MBA\"}]','2-5 ','<p>Monitor HR metrics</p>','Part time Jobs','65000','115000','9AM-6PM','<p>Employee Stock Options</p>',NULL,'[{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":31,\"stateid\":11,\"cityname\":\"Bengaluru\"},{\"cityid\":40,\"stateid\":14,\"cityname\":\"Mumbai\"},{\"cityid\":41,\"stateid\":14,\"cityname\":\"Pune\"}]','<p>Flexible Working Hours</p>','2025-07-05','2025-09-30','2025-10-20','<p>test</p>','HR zepto','hr@zepto.com','9176543241'),(77,1,7,1,'[{\"skillid\":1,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MERN\"}]','[{\"title\":\"High School\"}]','10-50','<p>tfvgybhj</p>','Fulltime','150000','35000','2PM-10PM','<p>tyhu</p>',NULL,'[{\"cityid\":1,\"stateid\":1,\"cityname\":\"Visakhapatnam\"},{\"cityid\":2,\"stateid\":1,\"cityname\":\"Vijayawada\"},{\"cityid\":3,\"stateid\":1,\"cityname\":\"Guntur\"}]','<p>gyhjuk</p>','2025-03-13','2025-03-27','2025-03-13','<p>ezsxdrctfnhjmk</p>','radha','ritzz353@gmail.com','9893834793'),(78,1,7,1,'[{\"skillid\":1,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MERN\"},{\"skillid\":2,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"Node.js\"},{\"skillid\":5,\"categoryid\":7,\"subcategoryid\":1,\"skills\":\"MySQL\"}]','[object Object]','5-10 ','<p>jj</p>','Intern','500','1000','8PM-4AM','<p>avb</p>',NULL,'[{\"cityid\":5,\"stateid\":2,\"cityname\":\"Tawang\"}]','','2025-04-01','2025-04-25','2025-04-03','<p>tbc</p>','sid','guptadeepa@gmail.com','8956234175');
/*!40000 ALTER TABLE `company_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobspider_admin`
--

DROP TABLE IF EXISTS `jobspider_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobspider_admin` (
  `emailid` varchar(100) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emailid`,`mobileno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobspider_admin`
--

LOCK TABLES `jobspider_admin` WRITE;
/*!40000 ALTER TABLE `jobspider_admin` DISABLE KEYS */;
INSERT INTO `jobspider_admin` VALUES ('radhag1879@gmail.com','8718046596','Radha','gupta','12345','radha.jpg'),('wipro@gmail.com','9179895031','sid','shiv','123456','wipro.png');
/*!40000 ALTER TABLE `jobspider_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtype`
--

DROP TABLE IF EXISTS `jobtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobtype` (
  `jobtype` varchar(45) NOT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`jobtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtype`
--

LOCK TABLES `jobtype` WRITE;
/*!40000 ALTER TABLE `jobtype` DISABLE KEYS */;
INSERT INTO `jobtype` VALUES ('International Jobs','international-jobs.webp','#fd79a8'),('Job for Freshers','freshers.webp','#e67e22'),('Job For Women','women-jobs.webp','#fd79a8'),('Part time Jobs','part-time-jobs.webp','#74b9ff'),('Work from home Jobs','work-from-home-jobs.webp','#ffeaa7');
/*!40000 ALTER TABLE `jobtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requiredskills`
--

DROP TABLE IF EXISTS `requiredskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requiredskills` (
  `skillid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `skills` text,
  PRIMARY KEY (`skillid`),
  KEY `r_categoryid_fk_idx` (`categoryid`),
  KEY `r_subcategory_fk_idx` (`subcategoryid`),
  CONSTRAINT `r_categoryid_fk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `r_subcategory_fk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requiredskills`
--

LOCK TABLES `requiredskills` WRITE;
/*!40000 ALTER TABLE `requiredskills` DISABLE KEYS */;
INSERT INTO `requiredskills` VALUES (1,7,1,'MERN'),(2,7,1,'Node.js'),(3,7,1,'REACT.js'),(4,7,1,'React.tsx'),(5,7,1,'MySQL'),(6,7,2,'Java'),(7,7,2,'Python'),(8,7,2,'Spring Boot'),(9,7,2,'Django'),(10,7,3,'HTML5'),(11,7,3,'CSS3'),(12,7,3,'JavaScript'),(13,7,3,'Vue.js'),(14,7,4,'Machine Learning'),(15,7,4,'Deep Learning'),(16,7,4,'Data Analysis'),(17,7,4,'TensorFlow'),(18,8,5,'B2B Sales Strategy'),(19,8,5,'CRM Tools'),(20,8,5,'Lead Generation'),(21,8,5,'Market Research'),(22,8,6,'Customer Acquisition'),(23,8,6,'Client Relationship'),(24,8,6,'Product Marketing'),(25,8,6,'Branding'),(26,8,7,'Cold Calling'),(27,8,7,'Sales Pitch'),(28,8,7,'Lead Qualification'),(29,8,7,'Sales Process'),(30,8,8,'Channel Management'),(31,8,8,'Sales Forecasting'),(32,8,8,'Channel Partnerships'),(33,8,8,'Distributor Relations'),(34,9,9,'Talent Acquisition'),(35,9,9,'Employee Engagement'),(36,9,9,'HR Policies'),(37,9,9,'Compensation Management'),(38,9,10,'Project Planning'),(39,9,10,'Risk Management'),(40,9,10,'Agile Methodology'),(41,9,10,'Scrum'),(42,9,11,'Process Improvement'),(43,9,11,'Supply Chain Management'),(44,9,11,'Logistics'),(45,9,11,'Operations Strategy'),(50,10,13,'Accounting Software'),(51,10,13,'Financial Reporting'),(52,10,13,'Taxation Laws'),(53,10,13,'Bookkeeping'),(54,10,14,'Internal Audit'),(55,10,14,'Compliance Auditing'),(56,10,14,'Risk Assessment'),(57,10,14,'Auditing Standards'),(58,10,15,'Financial Modeling'),(59,10,15,'Investment Analysis'),(60,10,15,'Budgeting'),(61,10,15,'Forecasting'),(62,10,16,'Corporate Taxation'),(63,10,16,'Tax Returns'),(64,10,16,'Tax Planning'),(65,10,16,'Tax Compliance'),(66,11,17,'Google Analytics'),(67,11,17,'SEO Strategies'),(68,11,17,'AdWords'),(69,11,17,'Content Strategy'),(70,11,18,'On-Page SEO'),(71,11,18,'Link Building'),(72,11,18,'Keyword Research'),(73,11,18,'SEO Audits'),(74,11,19,'Content Creation'),(75,11,19,'Social Media Strategy'),(76,11,19,'Community Management'),(77,11,19,'Brand Building'),(78,11,20,'Email Campaigns'),(79,11,20,'Lead Nurturing'),(80,11,20,'Landing Pages'),(81,11,20,'Conversion Optimization'),(82,12,21,'3D Modeling'),(83,12,21,'CAD Software'),(84,12,21,'Mechanical Design'),(85,12,21,'Thermodynamics'),(86,12,22,'Structural Analysis'),(87,12,22,'Building Codes'),(88,12,22,'Site Surveying'),(89,12,22,'Civil Engineering Software'),(90,12,23,'Circuit Design'),(91,12,23,'PLC Programming'),(92,12,23,'Microcontrollers'),(93,12,23,'Power Systems'),(94,12,24,'Software Development'),(95,12,24,'Embedded Systems'),(96,12,24,'Algorithm Design'),(97,12,24,'Database Systems'),(105,13,26,'Drug Interaction Analysis'),(106,13,27,'Research Methodology'),(107,13,27,'Clinical Trials'),(108,13,27,'Data Analysis'),(109,13,27,'Scientific Writing'),(110,13,28,'Hospital Management'),(111,13,28,'Patient Record Management'),(112,13,28,'Regulatory Compliance'),(113,13,28,'Healthcare Policy'),(114,14,29,'Lesson Planning'),(115,14,29,'Classroom Management'),(116,14,29,'Early Childhood Education'),(117,14,29,'Basic Literacy and Numeracy'),(118,14,30,'Subject Expertise'),(119,14,30,'Adolescent Psychology'),(120,14,30,'Exam Preparation Techniques'),(121,14,30,'Curriculum Development'),(122,14,31,'Academic Research'),(123,14,31,'Lecturing'),(124,14,31,'Thesis Guidance'),(125,14,31,'Curriculum Design'),(126,14,32,'E-Learning Platforms'),(127,14,32,'Content Creation'),(128,14,32,'Virtual Classroom Management'),(129,14,32,'Interactive Learning Techniques'),(130,15,33,'Candidate Sourcing'),(131,15,33,'Interviewing Techniques'),(132,15,33,'Job Posting Strategies'),(133,15,33,'Onboarding Processes'),(134,15,34,'Conflict Resolution'),(135,15,34,'Employee Engagement Strategies'),(136,15,34,'Workplace Ethics'),(137,15,34,'Grievance Handling'),(138,15,35,'Salary Benchmarking'),(139,15,35,'Payroll Management'),(140,15,35,'Benefits Administration'),(141,15,35,'Compensation Analysis'),(142,15,36,'Training Needs Analysis'),(143,15,36,'Workshop Facilitation'),(144,15,36,'Learning Management Systems'),(145,15,36,'Employee Skill Development'),(146,7,2,'express'),(147,7,3,'react js,html,css'),(148,7,3,'react js,html,css'),(149,7,3,'react js,html,css'),(150,7,3,'react js,html,css'),(151,13,26,'node,js'),(152,13,26,'node,js');
/*!40000 ALTER TABLE `requiredskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `state` (
  `stateid` int(11) NOT NULL,
  `statename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Andhra Pradesh'),(2,'Arunachal Pradesh'),(3,'Assam'),(4,'Bihar'),(5,'Chhattisgarh'),(6,'Goa'),(7,'Gujarat'),(8,'Haryana'),(9,'Himachal Pradesh'),(10,'Jharkhand'),(11,'Karnataka'),(12,'Kerala'),(13,'Madhya Pradesh'),(14,'Maharashtra'),(15,'Manipur'),(16,'Meghalaya'),(17,'Mizoram'),(18,'Nagaland'),(19,'Odisha'),(20,'Punjab'),(21,'Rajasthan'),(22,'Sikkim'),(23,'Tamil Nadu'),(24,'Telangana'),(25,'Tripura'),(26,'Uttar Pradesh'),(27,'Uttarakhand'),(28,'West Bengal');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subcategory` (
  `subcategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryname` varchar(45) DEFAULT NULL,
  `subcategorypicture` text,
  PRIMARY KEY (`subcategoryid`),
  KEY `categoryid_idx` (`categoryid`),
  CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,7,'Full Stack','1cc1e580-7976-45d7-8d6a-03c5e60d590f.png'),(2,7,'Backend','0b60d549-dd88-442b-b755-4e7c09f15e0c.png'),(3,7,'Frontend','cd12fde3-f08f-440c-96d6-7a0618cc3eb4.png'),(4,7,'Data Science','d36d8580-b605-4476-88c4-306fb602d0b3.png'),(5,8,'B2B','173f5079-2a9c-4f59-bfd2-7f9893811ecd.png'),(6,8,'B2C','984cf1e9-b4bf-4a15-aa28-f68b85ae28bb.png'),(7,8,'Inside Sales','b50a101a-0ceb-414c-a639-f87a7dde6348.png'),(8,8,'Channel Sales','614996a0-1762-4d18-8748-ae66444fa88e.png'),(9,9,'HR','743299ba-ae00-4724-8d2f-348441dbdc32.png'),(10,9,'Project Management','5e3beb1a-5db8-4dfa-aed7-d4f8f8e2f694.png'),(11,9,'Operations','a8b4a609-1d7a-42c9-b74d-810d6f5d45ba.png'),(12,9,'Product Management','a9461fb3-9e29-46a2-ba66-0c4dc38f02ba.png'),(13,10,'Accounting','26481a82-45db-488a-8524-802076751e36.png'),(14,10,'Auditing','fff4f07e-ef06-4171-bfa5-7145b426814d.png'),(15,10,'Financial Analysis','b8168853-d479-47d3-a036-3f0403e0584a.png'),(16,10,'Taxation','6643ba83-9a4c-4188-b09b-446a6ef9e269.png'),(17,11,'Digital Marketing','9f20ee84-7d25-47cb-a6c6-92e6c26353aa.png'),(18,11,'SEO','a1478240-3bb6-47b1-b110-ddda445bf5f3.png'),(19,11,'Social Media','0c6a045f-70e8-42bf-9565-edbd4eb05359.png'),(20,11,'Content Marketing','4fc6cd85-88be-44af-a9e5-acd18b31a27c.png'),(21,12,'Mechanical','30e7ecec-2c3a-4465-af62-c1f7916f74d0.png'),(22,12,'Civil','c2f366e7-6ecf-4fa5-8b47-46a2a82fd652.png'),(23,12,'Electrical','8879ae9d-f73e-4db9-ab11-a88cf74d59c2.png'),(24,12,'Software','228b36d9-5bd5-4a97-bac7-88ba36d05ca5.png'),(25,13,'Nursing','a6c9f211-e55f-46b3-9a90-85a79e3ff0b0.png'),(26,13,'Pharmacy','e9ba44d6-c800-4adc-bc25-b1f783c0d767.png'),(27,13,'Medical Research','b3424913-5f2e-4041-87a2-59698cde8cb8.png'),(28,13,'Healthcare Administration','86417744-600d-4a00-98ec-79c79886111d.png'),(29,14,'Primary Education','567d30d5-4507-4227-98ba-968d44585550.png'),(30,14,'Secondary Education','75032433-6e70-4a3c-b29d-f0216907ab9d.png'),(31,14,'Higher Education','3335a458-90b7-452f-817a-441d20e9eac5.png'),(32,14,'Online Learning','bd072e7f-2bf0-426a-8668-4f970845d0f6.png'),(33,15,'Recruitment','b4bd75ef-d49b-4e17-871a-6f4f4df4a07e.png'),(34,15,'Employee Relations','ab985819-4fd6-4aa5-a2a8-29a3469454b0.png'),(35,15,'Compensation and Benefits','f47301f9-c983-4001-9176-831fa2e2911b.png'),(36,15,'Training and Development','7d003254-2957-4fd8-8010-e287baf2a5c5.png');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `mobileno` varchar(15) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  ` username` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mobileno`,`emailaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('8596321456','amit@123gmail.com',NULL,'Amit'),('8718046596','aa@gmail.com','Nitr0gen@','aditya'),('9179895031','radha_gupta2003@gmail.com','Nitr0gen@','Radha Gupta'),('9301115005','aaaww@h.h','Nitr0gen@','Ritu Bansal');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 17:00:50
