-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: skl_two
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_13_191618_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Created By User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product 1','Product 1 Description',2000.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(2,'Product 2','Product 2 Description',5000.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(3,'Product 3','Product 3 Description',77000.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(4,'nesciunt','Assumenda laborum sed magnam et officiis nisi reprehenderit. Possimus similique quo aut excepturi. Dicta accusantium ad consequuntur consequatur nesciunt enim et.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(5,'aliquam','Nostrum ducimus consequatur laborum et officia ut. Dolores ea dolore aut et quam qui. Aut quas est eligendi. Et unde quisquam nostrum consequatur.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(6,'consectetur','Quae totam vero voluptate repellendus praesentium voluptatem maiores. Et iure non sint consequatur doloremque. Nisi earum quasi ullam modi. Tempore labore veritatis rerum dolorem.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(7,'ab','Ipsum sint enim dolores. Est sed natus consectetur sapiente quia. Iste culpa qui iste tempore.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(8,'qui','Reiciendis qui eaque architecto eum reiciendis placeat. Est explicabo numquam et tempora porro molestiae quod. Veritatis laboriosam non minima in.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(9,'libero','Voluptatibus vitae voluptas inventore commodi fugit impedit. Enim qui qui architecto sint sed et dolore. Quod voluptatem a aliquam ut.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(10,'non','Consequatur et praesentium ea quis repellendus laudantium. Consequatur ipsum at error eos similique accusantium est. Nihil recusandae ut sit soluta harum nihil.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(11,'aut','Amet dicta et recusandae ratione inventore. Et vero nostrum qui quas. Quo doloremque consequuntur est harum ab aut voluptas illum.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(12,'adipisci','Harum laboriosam libero repudiandae et facere temporibus nihil maxime. Cum voluptatibus sunt vero ut et eaque.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(13,'veritatis','Saepe dicta accusantium quis. Corporis voluptatem sint ab quis natus. Eaque minima ad quia est perferendis velit. Temporibus voluptatem quod consequatur illo praesentium non excepturi quo.',9.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(14,'mollitia','Aspernatur qui est alias nostrum cupiditate dolorem cumque. Sint hic officia ipsa sit harum quia sunt. Odit tempore ut quod nihil inventore et. Quasi vitae nostrum dolorem neque.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(15,'impedit','Et repellendus veniam dolorum delectus vel repellendus. Incidunt qui aspernatur dolorem voluptate. Aperiam soluta porro ducimus illo labore incidunt. Dolores autem quaerat est numquam similique et.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(16,'laborum','Velit ullam eum delectus sit. Adipisci nam porro earum voluptates id molestias. Rerum corrupti nulla distinctio sapiente aut earum non.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(17,'enim','Qui dolores quos amet consequatur molestias voluptas est. Aut aut libero perferendis sed eos. Et impedit quia dolor.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(18,'ea','Et voluptatem deleniti a et. Reprehenderit beatae dolorem dolor iusto consequatur blanditiis delectus.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(19,'consequatur','Cupiditate facilis architecto voluptate perspiciatis impedit unde nemo. Reiciendis sed perspiciatis repellendus cupiditate. Et nihil ullam aut perferendis qui voluptas quos.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(20,'consectetur','Occaecati ullam quaerat inventore odit voluptas accusamus rerum. Aut ut est dolorem culpa ad. Eum maiores aut dolores incidunt qui.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(21,'aut','Omnis est aut autem laborum qui ullam. Quo perferendis ut aut aut.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(22,'fuga','Et reprehenderit et corporis et dolorem et porro. Perferendis aspernatur numquam sequi quod est.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(23,'et','Ipsa enim ad nihil expedita eligendi illum rem. Voluptatem ea nihil rerum totam dicta nam. Voluptas unde provident sunt. Aut dicta ratione placeat dolores suscipit ipsa reprehenderit.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(24,'consequatur','Dolores corporis necessitatibus et voluptatem rem unde. Consequatur natus ab possimus quidem cumque soluta voluptas. Ea tempora rerum rerum harum.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(25,'et','Est hic nihil eum alias quia provident. Voluptatem odit ut et voluptatibus minus dicta.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(26,'eveniet','Iure explicabo similique architecto ducimus dolores nemo dolor sed. Sunt itaque voluptate laborum eligendi quas nam at beatae. Temporibus incidunt eos veritatis repudiandae consequuntur qui eius.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(27,'repellat','Possimus et nesciunt magnam magni voluptate temporibus officiis doloremque. Vitae sed dolor aut facilis sint non. Inventore blanditiis voluptatem et enim id velit animi ducimus.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(28,'autem','Odio repudiandae tempora rem in. Veniam accusamus ratione sequi et aspernatur mollitia nihil voluptatibus. Quod aliquid unde nihil consequuntur officia culpa.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(29,'ullam','Earum labore inventore quaerat nihil natus voluptas. Voluptatem cupiditate odit vitae laborum omnis et. Ea officia voluptas voluptatem dolores nesciunt veniam impedit.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(30,'repellendus','Dolorem nisi ex similique est fuga sint aut. Possimus ad fugit sed voluptas. Non rerum repellat voluptatem excepturi temporibus illum molestiae eveniet. Culpa quos saepe ut perspiciatis numquam.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(31,'adipisci','Praesentium hic odio quasi rerum nihil. Eos repellat odit corporis. Quia quasi necessitatibus deleniti soluta ut commodi aut.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(32,'eaque','Quisquam labore dolorum nesciunt tenetur omnis. Libero voluptate voluptatibus qui labore. Eveniet vero sed similique ut totam. Et nihil vel vitae iusto officiis.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(33,'excepturi','Sed ut consequatur est qui nulla. Aperiam atque consequatur ut delectus laborum dolorem. Officiis molestias consequuntur voluptatem. Suscipit sit aspernatur similique.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(34,'minima','Nam sed illo repudiandae libero ipsa provident. Quaerat error voluptatem numquam tempore fugiat. Provident molestias tempore distinctio sint. Fuga consequatur voluptas perferendis beatae.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(35,'velit','Distinctio fugiat culpa ipsam quod assumenda voluptas. In quia ex deserunt nemo. Error numquam odio veritatis ullam et excepturi aut. Vero quisquam in ea aliquam tempora omnis.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(36,'eos','Deserunt est sequi sit odit. Aut ipsum facere consequatur sunt et et fugiat perferendis. Labore aut et atque temporibus qui dolores impedit. In voluptas aut eaque repudiandae excepturi officia.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(37,'ut','Porro dignissimos quia quia et nihil. Est accusantium inventore reprehenderit vel exercitationem harum. Perspiciatis id exercitationem cupiditate ratione.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(38,'veniam','Molestiae vel repudiandae assumenda. Debitis quia deleniti minima consectetur. Perferendis sed aspernatur rem odit tempora ea. Ex reiciendis soluta itaque enim repellat sequi tempora.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(39,'ut','Dolorum aspernatur ratione velit minus ratione. Voluptatem commodi officia eligendi quae ullam quod ut. Officiis nihil illum accusamus dignissimos. Odio ea hic perferendis.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(40,'rerum','Ab ab placeat voluptas. Autem autem dignissimos voluptatem modi. Quam at dolorem quos eius quos. Est libero atque iste in.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(41,'autem','Animi dolorum expedita voluptatem repellendus sint aut. Odit voluptas ut dolores facilis nisi. Omnis aspernatur consequatur eaque nesciunt. A quo accusamus asperiores.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(42,'sit','Deserunt et architecto earum quia non iste unde. Mollitia molestiae quis ab porro distinctio dignissimos. Quam eius eos et deleniti sint.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(43,'ut','Pariatur omnis rerum voluptatem ut. Eum consequuntur maiores quia et. Dolor voluptas harum adipisci in culpa optio.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(44,'consequatur','Et et tempora facere accusantium. Cumque rerum aut officia excepturi aliquam. Asperiores molestias veniam voluptatem officiis. Quam deleniti est laboriosam.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(45,'nobis','Excepturi et in quasi et. Et mollitia ut eum quia odit quae amet. Repudiandae et velit incidunt est.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(46,'enim','Natus laudantium neque repellendus. Dolorem nobis enim numquam doloribus eum magni et. Deleniti earum qui libero est voluptates.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(47,'enim','Aliquam corrupti et qui molestiae tempora qui veniam. Molestias vero consequuntur ut nobis.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(48,'modi','Aliquid ratione est nihil error veniam. Dolor natus nesciunt et distinctio enim facere. Accusamus delectus debitis quibusdam quam consequatur et.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(49,'vitae','Maxime ullam atque tenetur qui quas. Facilis dignissimos quibusdam id a assumenda. Ipsam et corrupti est id sed ea qui.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(50,'et','Et necessitatibus consectetur quia minima sequi. Quas rerum deserunt et qui quis maxime. Facilis quia natus soluta eaque accusamus distinctio aut. Vitae est quasi voluptatum eaque fuga.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(51,'culpa','Delectus esse enim veritatis dicta voluptatem. Vel voluptas voluptatem sapiente. Aut et ea quia aut sit maiores. Facere ut in voluptate ab qui id commodi.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(52,'similique','Inventore ut corporis et non fugit. Excepturi vel praesentium ducimus molestiae. Tenetur labore nihil ratione optio.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(53,'ex','Doloremque quasi sit at ut dolores dolor repudiandae est. Qui exercitationem sint odio magnam veritatis nemo temporibus omnis. In itaque est consequatur tempore id non eligendi.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(54,'fuga','Nihil praesentium necessitatibus et accusantium inventore. Repellendus rerum non et dolor ex molestias. Labore quia molestias est et minus sit omnis. Ut et accusamus sunt.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(55,'rerum','Est soluta rerum non itaque. Assumenda omnis ex facere sapiente doloribus eum. At sit voluptatem et. Enim harum sed aspernatur qui quos.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(56,'expedita','In ullam id nobis modi est facilis. Dolorem repellat natus corrupti voluptas. Recusandae assumenda sint minima qui.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(57,'eos','Quaerat quia assumenda quas sed ut sunt vel. Beatae et voluptatem labore et et. Consequatur debitis error enim quisquam ut voluptatum illo. Aut et quis quia.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(58,'maxime','Quia aliquid praesentium fuga animi qui aliquam amet. Sit enim tempore cupiditate aut odit. Cum inventore aut minima modi ea ex magni.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(59,'possimus','Quis repellat fugit blanditiis omnis commodi. Maxime rerum ut rerum veritatis aliquid magnam vitae ea. Doloribus optio fugit explicabo deserunt voluptas blanditiis.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(60,'pariatur','Saepe iure minima officiis omnis aperiam aliquid voluptas. Atque qui et asperiores aperiam maxime earum.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(61,'consequatur','Sequi velit consequatur est consequatur. Eaque quo sit animi rerum eos natus eaque. Omnis et laborum dicta quia dolorem. Quidem dolor fuga porro ipsam ipsum praesentium.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(62,'nihil','Minima est similique voluptatem architecto. Quod adipisci aut odio aut. Placeat cum dolorum quo sapiente aliquid consectetur ipsam. Eligendi et qui enim voluptate repudiandae.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(63,'odio','Ratione qui magnam repellendus quos. Nesciunt a explicabo dolores dolore voluptas est. Sit ut unde sed cumque. Magnam tenetur repudiandae quo labore ratione quasi et eaque.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(64,'veritatis','Eius dolorem eos delectus. Ut tempore provident vero. Neque et est quaerat veritatis consequuntur veritatis.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(65,'delectus','Non dicta tempora neque tempora quisquam est. Harum qui vel delectus quo accusamus.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(66,'laudantium','Et nostrum incidunt harum inventore. Laudantium deserunt voluptas tempora facilis incidunt. Velit iusto rerum accusamus eius iste possimus quisquam. Est nisi accusamus atque porro nulla.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(67,'pariatur','Nam qui hic eos enim voluptas repellendus. Corrupti sit omnis sit nobis nihil. Voluptates temporibus commodi perspiciatis aut maiores.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(68,'eius','Ab maiores tempora velit ipsam voluptas perspiciatis iste perferendis. Expedita unde ipsum et iusto veritatis aliquam beatae magnam. Et ab quasi dicta.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(69,'est','Illo repudiandae hic similique quibusdam. Fugit id similique incidunt culpa. Eum repudiandae in et accusantium. Quo atque sed ratione quos.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(70,'ea','Enim et consequuntur iste voluptas et ex molestiae. Sunt voluptatem est nemo libero itaque. Enim dolorem velit fugiat earum aut libero dicta.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(71,'architecto','Blanditiis libero quo consequatur voluptatem qui voluptatem dolores. Minus dolor quia et nemo labore. Ut molestiae sunt et id.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(72,'ea','Animi temporibus quia velit facilis architecto. Et voluptas aut eius explicabo voluptate qui saepe. Laboriosam et laboriosam esse ea suscipit. Aut ipsam eaque quaerat non et voluptatem autem.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(73,'similique','Error autem officiis minus id possimus. Aut eos velit assumenda quaerat. Omnis ad consequatur vitae qui temporibus est est. Quod repudiandae tempore fugit asperiores aut quasi sit tempora.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(74,'quia','Animi et laborum repellendus laudantium sit odit et voluptate. Non in aut repellendus adipisci.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(75,'voluptatem','Est aspernatur nihil est laboriosam. Aut sequi veniam autem omnis quos sint accusamus aut. Eum ea quam velit aperiam ullam.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(76,'sit','Eveniet non nihil voluptatibus voluptatibus id cupiditate. Officiis minus sit in odit voluptas. Consequatur asperiores assumenda hic sit earum nisi. Neque et hic sed quis.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(77,'molestiae','Tenetur provident voluptatem qui ipsa dolor. Vero blanditiis ullam nam. Repellendus sed perspiciatis voluptatem quod voluptates est.',3.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(78,'facilis','Quia asperiores voluptatem laborum recusandae nobis sint. Sit impedit aliquam ipsum ea et. Consequatur esse in ipsam omnis qui ad qui.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(79,'voluptatibus','Odit nobis qui aut velit et quas. Quia sint consequuntur architecto error. Totam autem modi molestias est sed voluptatum sed natus.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(80,'porro','Ipsa aut amet tenetur est. Ad rerum repellat asperiores autem. Ipsum doloremque iure error et quaerat enim libero pariatur.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(81,'omnis','Porro qui sed voluptatibus sunt est. Laboriosam magnam accusamus beatae non. In totam quia ut soluta. Corporis consequatur iste dolorem minus hic.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(82,'et','Quasi sunt iusto omnis quae. Maxime deserunt quia debitis sed eos. Dolore illum eaque exercitationem. Repudiandae mollitia necessitatibus harum soluta. Porro aut et velit sunt rerum ab.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(83,'laudantium','Sed earum natus quas neque veritatis iusto aspernatur. Repellendus quibusdam nihil minus numquam cum. Consequuntur quia culpa nihil. Officiis consequatur quibusdam quis voluptates.',9.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(84,'recusandae','Maxime earum temporibus illo non. Omnis id odio dolores a. Dicta et deserunt voluptatibus numquam. Alias voluptatem assumenda consectetur rem quasi animi nobis tenetur. Ut vel rerum voluptatem unde.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(85,'facere','Sequi non aliquid facere iste. Non aut facere suscipit a cum. Inventore molestias blanditiis quia veniam. Quia nulla ullam voluptas ratione velit facilis id.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(86,'aut','Provident voluptas eum a repudiandae blanditiis ad. Corporis provident error et veniam numquam possimus. Ut odit sit et vitae at doloribus consequatur.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(87,'quam','Quisquam optio aut fugit delectus facere. Quia nesciunt nesciunt vitae accusantium iste. Tempore modi qui explicabo.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(88,'nesciunt','Fuga sit sit rerum voluptatem. Illum minima amet aut doloribus fugiat.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(89,'a','Accusantium hic laudantium omnis est delectus rerum cupiditate voluptatem. Delectus alias ut voluptate voluptate enim aut aut. Aliquid dolorem sint beatae non.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(90,'in','Cupiditate qui nostrum ducimus ut fugit explicabo. Reprehenderit quisquam quidem accusantium odit veniam molestias qui.',8.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(91,'quidem','Ut voluptatem occaecati et quia repellat. Minus est repellendus iusto. Sapiente error magnam nam ut aperiam.',9.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(92,'eaque','Enim sed quia dolor aut asperiores. Dolor id ab nobis ducimus rerum molestiae dolores. Quisquam nihil quia consequatur qui assumenda. Culpa laboriosam reiciendis vitae quibusdam.',0.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(93,'non','Eius nam distinctio at saepe ab beatae delectus. Est corporis dolores eum maxime recusandae. Unde est est eaque autem ut nisi. Officia aut repudiandae eaque quasi nihil deleniti.',7.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(94,'eum','Aut voluptatem autem eum id iusto. Provident et repudiandae natus. Veritatis tempora et quasi.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(95,'laudantium','Blanditiis sed est libero voluptatem non voluptates ullam. Molestiae aut nostrum et. Veritatis sit est commodi ratione veritatis.',1.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(96,'magnam','Veritatis possimus aspernatur quis et. Vero officia ipsam deleniti rerum necessitatibus maiores. Ut tenetur quis vel numquam natus iusto. Sint incidunt et eum eaque pariatur necessitatibus.',6.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(97,'iusto','Fugiat dolorem ipsa exercitationem qui amet. Perferendis vero ea nihil maiores tempora. Libero sint est odio.',9.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(98,'enim','Dolorem dignissimos temporibus voluptatum autem tenetur placeat eum atque. Vero quod eum dolorem impedit architecto tempora. Aut et neque maxime.',4.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(99,'illo','Ea modi quisquam ea provident iure distinctio cumque. Dolorum voluptas cum nemo dolores architecto quasi. Eos dicta illum quia. Facere aliquid dolorem dolores suscipit qui ut est.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(100,'odio','Enim nihil exercitationem est iusto. Culpa velit impedit harum autem debitis accusamus ea consequatur. Aut numquam voluptates voluptas delectus exercitationem rerum. Ea atque odit dolor nobis.',9.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(101,'necessitatibus','Optio est explicabo neque in accusamus quam quia. Ipsam delectus modi ut sit eveniet expedita temporibus. Ea odio iure non sit quisquam recusandae.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(102,'ipsam','Doloribus quisquam voluptates nihil voluptatibus. In aut dolorum blanditiis esse esse non. Ipsum aliquid porro placeat qui culpa error qui.',5.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(103,'nihil','Voluptate aspernatur reprehenderit autem. Expedita sit omnis mollitia. Rerum nesciunt veniam aut.',2.00,NULL,1,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(104,'Title',NULL,3400.00,NULL,22,'2023-03-30 02:37:45','2023-03-30 02:37:45');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maniruzzaman Akash','admin@example.com',NULL,'$2y$10$jxzH2qkTpQA9011rYuH/OOmVqb5vkW2JpObkPPyARPKFSX4bmJpdW',NULL,'2023-03-30 00:23:52','2023-03-30 00:23:52'),(2,'Syble McDermott','teresa92@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dvvNcwdjNO','2023-03-30 00:23:52','2023-03-30 00:23:52'),(3,'Ethan Runte Jr.','cward@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','f9hb9LuBYd','2023-03-30 00:23:52','2023-03-30 00:23:52'),(4,'Deon Casper','janice25@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HxYGTREhKQ','2023-03-30 00:23:52','2023-03-30 00:23:52'),(5,'Ewald Thiel','vkris@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','0nZaGDenhs','2023-03-30 00:23:52','2023-03-30 00:23:52'),(6,'Lester Wintheiser','nienow.austin@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CYZmInd2uR','2023-03-30 00:23:52','2023-03-30 00:23:52'),(7,'Armand McKenzie','zpouros@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jAt9BeyZyP','2023-03-30 00:23:52','2023-03-30 00:23:52'),(8,'Elnora Morissette','deven.schultz@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','33noaqolUf','2023-03-30 00:23:52','2023-03-30 00:23:52'),(9,'Hailey Paucek','camren.hills@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','f6mMlrLxT6','2023-03-30 00:23:52','2023-03-30 00:23:52'),(10,'Prof. Connor Cole','sophia.fahey@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','juquGekt5q','2023-03-30 00:23:52','2023-03-30 00:23:52'),(11,'Avery Swift','wkreiger@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','s4DgXtApp0','2023-03-30 00:23:52','2023-03-30 00:23:52'),(12,'Dr. Clotilde Emard MD','brielle.dicki@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CGMZVjax6z','2023-03-30 00:23:52','2023-03-30 00:23:52'),(13,'Waino Ratke','flemke@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dyPSRBZPMB','2023-03-30 00:23:52','2023-03-30 00:23:52'),(14,'Karson Dietrich III','kbuckridge@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8GuzJRSfKx','2023-03-30 00:23:52','2023-03-30 00:23:52'),(15,'Roselyn Kessler','jheller@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mSuv8CajJt','2023-03-30 00:23:52','2023-03-30 00:23:52'),(16,'Ms. Leatha Johns IV','hoeger.louisa@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bihvrBdUvE','2023-03-30 00:23:52','2023-03-30 00:23:52'),(17,'Prof. Eleazar Harris','bmarquardt@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dx9THnb9bZ','2023-03-30 00:23:52','2023-03-30 00:23:52'),(18,'Roma Gibson','kevon78@example.net','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bkHZ0wUSRL','2023-03-30 00:23:52','2023-03-30 00:23:52'),(19,'Miss Cathrine Murphy II','fnikolaus@example.com','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jZtWhWbiSd','2023-03-30 00:23:52','2023-03-30 00:23:52'),(20,'Kyle Huels','carmela.oconnell@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ndaV73ZtYe','2023-03-30 00:23:52','2023-03-30 00:23:52'),(21,'Antonio Ryan','nolan.rubye@example.org','2023-03-30 00:23:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4gcU27Ci6e','2023-03-30 00:23:52','2023-03-30 00:23:52'),(22,'maaz','maaz@gmail.com',NULL,'$2y$10$mUl6fuC6PDyuXOoIZ67gSe3euW8aHlxq6yOKKpBViwv86cNbjer4m',NULL,'2023-03-30 01:05:33','2023-03-30 01:05:33'),(23,'MynameS','new@gmail.com',NULL,'$2y$10$AzsGqZk4QYanHcSgeQU3m.0yfkjaIK0XBfqVc6k7YgOm.UqvIoU2q',NULL,'2023-03-30 02:30:23','2023-03-30 02:30:23');
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

-- Dump completed on 2023-04-30 20:01:42
