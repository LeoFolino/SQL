# LAS TABLAS QUE SE INCLUYERON EN EL BACKUP SON "categoria, cliente, detalle_venta, direccion, empleado, localidad, log_producto, log_venta, marca, metodo_pago, pago, pedido, producto, proveedor, sucursal, valoracion, venta"

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: neotec
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Procesadores','Procesadores para computadoras.'),(2,'Placas de Video','Placa gráficas para gaming.'),(3,'Memorias RAM','Memorias RAM.'),(4,'Discos SSD','Discos de estado sólido de alta velocidad de escritura y lectura.'),(5,'Discos HDD','Discos duros tradicionales para almacenamiento masivo.'),(6,'Laptops','Laptops y notebooks de diversas marcas.'),(7,'Tablets','Tablets para entretenimiento y diseño.'),(8,'Celulares','Smartphones.'),(9,'Consolas de Videojuegos','Consolas para juegos.'),(10,'Monitores','Monitores para computadoras.'),(11,'Teclados','Teclados mecánicos y de membrana.'),(12,'Mouse','Mouse gamers y estándars.'),(13,'Impresoras','Impresoras para uso personal y profesional.'),(14,'Auriculares','Auriculares para Gaming / Alta calidad de audio.');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Pérez',16,1589432076,'anaperez@gmail.com'),(2,'Luis Gómez',17,1537029841,'luisgomez@gmail.com'),(3,'María Torres',18,1598143027,'mariatorres@gmail.com'),(4,'Carlos Rodríguez',19,1570968453,'carlosrodriguez@hotmail.com'),(5,'Diego Martínez',20,1502986347,'diegomartinez@hotmail.com'),(6,'Laura Sánchez',21,1523809641,'laurasanchez@gmail.com'),(7,'Pedro Ramírez',22,1547203689,'pedroramirez@gmail.com'),(8,'Sofía Gutiérrez',23,1556098213,'sofiagutierrez@hotmail.com'),(9,'Manuel Herrera',24,1513946820,'manuelherrera@gmail.com'),(10,'Isabel Castro',25,1534987602,'isabelcastro@gmail.com'),(11,'Andrés Vargas',26,1579302184,'andresvargas@gmail.com'),(12,'Carolina Jiménez',27,1583029647,'carolinajimenez@hotmail.com'),(13,'Miguel Ríos',28,1567142093,'miguelrios@hotmail.com'),(14,'Valentina Gómez',29,1502496783,'valentinagomez@outlook.com'),(15,'Alejandro Fernández',30,1597420836,'alejandrorfernandez@hotmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,700000,700000,1,1),(2,1,280000,280000,42,2),(3,1,1500000,1500000,15,3),(4,3,150000,450000,26,4),(5,2,320000,640000,41,5),(6,1,520000,520000,53,6),(7,1,65000,65000,31,7),(8,1,850000,850000,17,8),(9,2,90000,1800000,38,9),(10,2,300000,600000,34,10),(11,4,90000,360000,46,11),(12,2,80000,160000,50,12),(13,1,95000,95000,32,13),(14,2,250000,500000,10,14),(15,1,250000,250000,14,15);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'Avenida Santa Fe',1324,2),(2,'San Juan',6342,1),(3,'Avenida Hipólito Yrigoyen',6333,12),(4,'Laprida',1234,7),(5,'Sarmiento',5355,4),(6,'Avenida Belgrano',7564,10),(7,'Mitre',2311,8),(8,'Avenida Independencia',3423,3),(9,'3 de Febrero',7777,5),(10,'Urquiza',4532,9),(11,'Güemes',9743,11),(12,'Avenida Corrientes',5354,6),(13,'Moreno',546,13),(14,'Roca',2423,15),(15,'Rivadavia',6743,2),(16,'Larralde',4578,6),(17,'Santa Rosa',1344,8),(18,'Lemans',1343,3),(19,'Talcahuano',5324,2),(20,'Peron',5216,2),(21,'Cerati',7534,7),(22,'Garcia Merou',3462,7),(23,'Ricardo Gutierrez',1245,9),(24,'Lanin',2534,6),(25,'Saturno',7543,1),(26,'Crisol',2455,14),(27,'El charrua',534,2),(28,'Murguiondo',1644,8),(29,'Pueyrredón',4567,3),(30,'Esmeralda',6789,2),(31,'Avenida Las Heras',1234,7),(32,'Montevideo',5678,7),(33,'Avenida Santa Cruz',9012,8),(34,'Uspallata',3456,9),(35,'Avenida Juan B. Justo',7890,10),(36,'Thames',2345,11),(37,'Avenida Triunvirato',5678,2),(38,'Viamonte',9012,3),(39,'Avenida Dorrego',1234,14),(40,'Córdoba',5678,13),(41,'Avenida Santa María',9012,5),(42,'Godoy Cruz',3456,5),(43,'Avenida Leandro N. Alem',7890,4),(44,'Cabrera',2345,8),(45,'Avenida Federico Lacroze',5678,6),(46,'Malabia',9012,9),(47,'Avenida Álvarez Thomas',1234,10),(48,'Billinghurst',5678,9),(49,'Avenida Cramer',9012,11),(50,'Holmberg',3456,11),(51,'Avenida Monroe',7890,13);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Martín Núñez',31,1576023845,'martinnunez@hotmail.com','Vendedor'),(2,'Marina Torres',31,1534567890,'marinatorres@hotmail.com','Vendedor'),(3,'Ricardo Gómez',32,1589032145,'ricardogomez@gmail.com','Vendedor'),(4,'Julieta González',32,1590789356,'julietagonzalez@outlook.com','Vendedor'),(5,'Santiago Méndez',33,1567893012,'santiagomendez@outlook.com','Vendedor'),(6,'Laura Romero',33,1523098765,'lauraromero@outlook.com','Vendedor'),(7,'Eduardo Mendoza',34,1543201987,'eduardomendoza@gmail.com','Vendedor'),(8,'Ana Jiménez',34,1590812340,'anajimenez@hotmail.com','Vendedor');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (10,'Bahia Blanca'),(14,'Berazategui'),(1,'CABA'),(12,'Escobar'),(2,'La Matanza'),(6,'La Plata'),(15,'Lanús'),(3,'Luján'),(13,'Moreno'),(11,'Pilar'),(7,'Quilmes'),(4,'San Fernando'),(9,'San Isidro'),(5,'San Miguel'),(8,'Tigre');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_producto`
--

LOCK TABLES `log_producto` WRITE;
/*!40000 ALTER TABLE `log_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_venta`
--

LOCK TABLES `log_venta` WRITE;
/*!40000 ALTER TABLE `log_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'AMD','Estados Unidos'),(2,'GIGABYTE','Estados Unidos'),(3,'Intel','Estados Unidos'),(4,'ASUS','Taiwán'),(5,'Kingston','Estados Unidos'),(6,'Samsung','Corea del Sur'),(7,'Western Digital','Estados Unidos'),(8,'Seagate','Estados Unidos'),(9,'HP','Estados Unidos'),(10,'Lenovo','China'),(11,'Apple','Estados Unidos'),(12,'SONY','Japón'),(13,'Logitech','Suiza'),(14,'Epson','Japón'),(15,'Corsair','Estados Unidos'),(16,'Microsoft','Estados Unidos');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
INSERT INTO `metodo_pago` VALUES (1,'Efectivo'),(2,'Tarjeta de crédito'),(3,'Tarjeta de débito'),(4,'QR'),(5,'Transferencia bancaria');
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2023-07-20',700000,1,1),(2,'2023-07-20',280000,2,2),(3,'2023-07-20',1500000,3,5),(4,'2023-07-20',450000,4,5),(5,'2023-07-21',640000,5,5),(6,'2023-07-21',520000,6,5),(7,'2023-07-21',65000,7,1),(8,'2023-07-21',850000,8,2),(9,'2023-07-21',1800000,9,5),(10,'2023-07-23',600000,10,3),(11,'2023-07-23',360000,11,2),(12,'2023-07-23',160000,12,4),(13,'2023-07-23',95000,13,4),(14,'2023-07-24',500000,14,5),(15,'2023-07-24',2500000,15,1);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2023-07-20',700000,1),(2,'2023-07-20',280000,2),(3,'2023-07-20',1500000,3),(4,'2023-07-20',450000,4),(5,'2023-07-21',640000,5),(6,'2023-07-21',520000,6),(7,'2023-07-21',65000,7),(8,'2023-07-21',850000,8),(9,'2023-07-21',1800000,9),(10,'2023-07-23',600000,10),(11,'2023-07-23',360000,11),(12,'2023-07-23',160000,12),(13,'2023-07-23',95000,13),(14,'2023-07-24',500000,14),(15,'2023-07-24',2500000,15);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Procesador AMD Ryzen 9 8900','Procesador multinúcleo gaming.',700000,10,'2023-07-20',5,1,1),(2,'Procesador AMD Ryzen 7 6700','Procesador multinúcleo gaming.',450000,10,'2023-07-18',5,1,1),(3,'Procesador AMD Ryzen 5 5200','Procesador multinúcleo gaming.',320000,15,'2023-07-15',5,1,1),(4,'Placa de Video NVIDIA RTX 3090','Placa gráfica para gaming en 4K con RTX full.',1250000,10,'2023-07-20',1,2,2),(5,'Placa de Video NVIDIA RTX 3080','Placa gráfica gaming en 1440p con RTX full.',690000,10,'2023-07-20',1,2,2),(6,'Placa de Video NVIDIA RTX 3070','Placa gráfica gaming en 1440p.',480000,10,'2023-07-20',1,2,2),(7,'Memoria RAM Kingston HyperX 32GB 4800mhz','Memoria RAM DDR4 de 32GB.',80000,20,'2023-07-19',2,5,3),(8,'Memoria RAM Kingston HyperX 16GB 3600mhz','Memoria RAM DDR4 de 16GB.',65000,30,'2023-07-19',2,5,3),(9,'Memoria RAM Kingston HyperX 8GB 3200mhz','Memoria RAM DDR4 de 8GB.',40000,40,'2023-07-19',2,5,3),(10,'Disco SSD Samsung 2TB','Disco de estado sólido de 2TB con 8000mb/s de lectura y escritura.',250000,30,'2023-07-21',3,6,4),(11,'Disco SSD Samsung 1TB','Disco de estado sólido de 1TB con 4500mb/s de lectura y escritura.',160000,30,'2023-07-21',3,6,4),(12,'Disco SSD Samsunglocalidadproducto 500GB','Disco de estado sólido de 500GB con 4500mb/s de lectura y escritura.',80000,30,'2023-07-21',3,6,4),(13,'Laptop ASUS ZenBook 14','Laptop ultradelgada con pantalla de 14 pulgadas y diseño elegante. Porta Ryzen 7 6800 y NVIDIA RTX 2060',1300000,8,'2023-07-23',15,4,6),(14,'Laptop ASUS TUF Gaming A15','Laptop para gaming con pantalla de 15.6 pulgadas, con procesador AMD Ryzen 9 y NVIDIA RTX 3080.',2500000,10,'2023-07-23',15,4,6),(15,'Laptop ASUS TUF Gaming A15','Laptop para gaming con pantalla de 15.6 pulgadas, con procesador AMD Ryzen 9 y NVIDIA RTX 3080.',2500000,10,'2023-07-23',15,4,6),(16,'Laptop ASUS ROG Zephyrus','Laptop para gaming con pantalla de 17 pulgadas y alto rendimiento. Porta Intel i7 12900 y RTX 2060',1500000,5,'2023-07-01',15,4,6),(17,'iPad Air 11 pulgadas','Tablet de gama media con pantalla Retina y soporte para Apple Pencil.',450000,15,'2023-07-14',6,11,7),(18,'iPad Pro 13 pulgadas','Tablet de gama alta con pantalla Retina y soporte para Apple Pencil.',850000,15,'2023-07-14',6,11,7),(19,'iPhone 14 Pro','Smartphone de última generación.',1250000,15,'2023-07-14',6,11,8),(20,'iPhone 14 Pro Max','Smartphone de última generación con 1.2 pulgadas más de pantlla que el 14 Pro.',1800000,15,'2023-07-14',6,11,8),(21,'Consola Xbox Series S','Consola de videojuegos de última generación con gráficos en 4K.',400000,8,'2023-07-18',8,16,9),(22,'Consola Xbox Series X','Consola de videojuegos de última generación con gráficos en 4K. Más potente que la Series S',800000,8,'2023-07-18',8,16,9),(23,'Teclado Mecánico Corsair K70 RGB','Teclado mecánico.',45000,20,'2023-07-12',14,15,11),(24,'Teclado Mecánico Corsair K95 RGB Platinum','Teclado mecánico.',70000,15,'2023-07-23',14,15,11),(25,'Teclado Mecánico Corsair K60 RGB Pro','Teclado mecánico.',20000,18,'2023-07-23',14,15,11),(26,'Monitor Samsung 32\" Ultragear','Monitor de alta resolución y alta frecuencia de actualización para gaming.',180000,12,'2023-07-10',12,6,10),(27,'Monitor Samsung 27\" Curvo','Monitor curvo de alta resolución y amplio ángulo de visión.',150000,8,'2023-07-23',12,6,10),(28,'Monitor Samsung 34\" Ultrawide','Monitor ultrawide de alta resolución para una experiencia de pantalla panorámica.',450000,10,'2023-07-23',12,6,10),(29,'Monitor Samsung 24\" Gaming','Monitor de alta frecuencia de actualización y tiempo de respuesta para gaming.',100000,15,'2023-07-23',12,6,10),(30,'Mouse Logitech G502','Mouse para gaming con sensor óptico de alta sensibilidad y diseño ergonómico.',60000,40,'2023-07-23',11,13,12),(31,'Mouse Logitech G Pro X','Mouse para gaming con sensor HERO 25K y diseño ligero.',80000,30,'2023-07-23',11,13,12),(32,'Mouse Logitech G305','Mouse inalámbrico para gaming con sensor HERO 12K y gran durabilidad.',65000,20,'2023-07-23',11,13,12),(33,'Teclado Mecánico Logitech G Pro X','Teclado mecánico para gaming con interruptores GX Clicky.',95000,15,'2023-07-23',11,13,11),(34,'Teclado Mecánico Logitech G413','Teclado mecánico para gaming con interruptores Romer-G.',75000,20,'2023-07-23',11,13,11),(35,'Impresora HP OfficeJet','Impresora multifunción para uso personal y profesional.',300000,18,'2023-07-10',3,9,13),(36,'Impresora HP DeskJet','Impresora para uso personal y pequeñas oficinas.',150000,10,'2023-07-10',3,9,13),(37,'Impresora Epson WorkForce','Impresora rápida y eficiente para oficinas.',320000,5,'2023-07-10',3,14,13),(38,'Impresora Epson EcoTank','Impresora de tanque de tinta recargable de alta capacidad.',280000,7,'2023-07-10',3,14,13),(39,'Procesador Intel Core i9','Procesador de alto rendimiento para multitarea y gaming.',900000,25,'2023-07-10',10,3,1),(40,'Procesador Intel Core i7','Procesador de alto rendimiento para multitarea y gaming.',600000,25,'2023-07-10',10,3,1),(41,'Procesador Intel Core i5','Procesador de alto rendimiento para multitarea.',350000,25,'2023-07-10',10,3,1),(42,'Placa de Video ASUS TUF Gaming','Tarjeta gráfica de gama media para gaming en alta calidad.',320000,15,'2023-07-19',4,4,2),(43,'Placa de Video ASUS Dual','Tarjeta gráfica de gama media para gaming en resolución 1080p.',280000,20,'2023-07-23',4,4,2),(44,'Placa de Video ASUS ROG Strix','Tarjeta gráfica de gama alta para gaming en 4K.',450000,10,'2023-07-23',4,4,2),(45,'Placa de Video ASUS Phoenix','Tarjeta gráfica compacta de gama media para PC pequeñas.',260000,18,'2023-07-23',4,4,2),(46,'Memoria RAM Corsair Vengeance 16GB','Memoria RAM DDR4 de 16GB para edición de video y diseño.',50000,40,'2023-07-17',9,15,3),(47,'Memoria RAM Corsair Vengeance 32GB','Memoria RAM DDR4 de 32GB para edición de video y diseño.',90000,30,'2023-07-23',9,15,3),(48,'Memoria RAM Corsair Dominator Platinum 16GB','Memoria RAM DDR4 de alto rendimiento para entusiastas.',70000,25,'2023-07-23',9,15,3),(49,'Memoria RAM Corsair Vengeance RGB Pro 32GB','Memoria RAM DDR4 con iluminación RGB para personalización.',95000,20,'2023-07-23',9,15,3),(50,'Disco SSD Western Digital 1TB','Disco de estado sólido de 1TB para una carga rápida del sistema.',60000,50,'2023-07-20',2,7,4),(51,'Disco SSD Western Digital 2TB','Disco de estado sólido de 2TB para una carga rápida del sistema.',80000,40,'2023-07-23',2,7,4),(52,'Disco HDD Western Digital Blue 500GB','Disco rígido tradicional de 500GB.',20000,30,'2023-07-23',3,7,5),(53,'Disco HDD Western Digital Black 1TB','Disco rígido tradicional de 1TB con alto rendimiento para gaming.',45000,35,'2023-07-23',3,7,5),(54,'PS5','Consola de videojuegos PlayStation 5 con gráficos en 4K y amplio catálogo de juegos.',520000,15,'2023-07-23',7,12,9),(55,'Auriculares Sony WH-1000XM4','Auriculares inalámbricos con cancelación de ruido y sonido de alta resolución.',150000,20,'2023-07-23',7,12,14),(56,'Auriculares Sony WF-SP800N','Auriculares inalámbricos deportivos con resistencia al agua y batería de larga duración.',100000,25,'2023-07-23',7,12,14),(57,'Auriculares Sony WH-XB900N','Auriculares inalámbricos con graves potentes y cancelación de ruido.',60000,18,'2023-07-23',6,12,14);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'GIGABYTE',1,1558647856,'gigabyte@gmail.com'),(2,'Fullh4rd',2,1598465312,'fullh4rd@gmail.com'),(3,'Mexx Computación',3,1597562145,'mexxcomputacion@outlook.com'),(4,'ASUS',4,1509823746,'asus@gmail.com'),(5,'AMD',5,1576543210,'amd@hotmail.com'),(6,'Apple',6,1523486091,'apple@hotmail.com'),(7,'SONY',7,1567890452,'sony@gmail.com'),(8,'Microsoft',8,1598123406,'microsoft@outlook.com'),(9,'CompuWorld',9,1532456789,'compuworld@gmail.com'),(10,'Starters',10,1587904321,'starters@hotmail.com'),(11,'DEvTEC',11,1543201987,'devtec@gmail.com'),(12,'Pastion',12,1512345678,'pastion@outlook.com'),(13,'Owerland',13,1556789012,'owerland@gmail.com'),(14,'GameStore',14,1590876543,'gamestore@hotmail.com'),(15,'TechnicalLambda',15,1576543289,'technicallambda@gmail.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Sucursal Central',31,1528974306),(2,'Sucursal Osterser',32,1593640287),(3,'Sucursal GamingOC',33,1536724018),(4,'Sucursal Caseros',34,1565409837);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `valoracion`
--

LOCK TABLES `valoracion` WRITE;
/*!40000 ALTER TABLE `valoracion` DISABLE KEYS */;
INSERT INTO `valoracion` VALUES (1,1,1,4,'Rendimiento potente, ideal para gaming..'),(2,42,2,3,'Buena relación calidad-precio.'),(3,15,3,5,'Excelente rendimiento y diseño.'),(4,26,4,4,'Pantalla curva inmersiva, buena calidad de imagen.'),(5,41,5,3,'Adecuada para gaming en calidad media.'),(6,53,6,5,'Increíble experiencia de juego, gráficos asombrosos.'),(7,31,7,4,'Ligero y preciso, ideal para juegos.'),(8,17,8,5,'Potente y versátil, perfecto para creatividad.'),(9,38,9,5,'Poderoso para multitarea y gaming.'),(10,34,10,3,'Asequible y funcional para uso doméstico.'),(11,46,11,4,'Rapidez en tareas exigentes.'),(12,50,12,5,'Carga rápida del sistema, gran capacidad.'),(13,32,13,4,'Diseño ergonómico y respuesta rápida.'),(14,10,14,4,'Transferencias de datos ágiles y fiables.'),(15,14,15,4,'Portátil, liviana y de buen rendimiento.');
/*!40000 ALTER TABLE `valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2023-07-20 12:30:00',700000,1,1),(2,'2023-07-20 14:45:00',280000,2,2),(3,'2023-07-20 18:20:00',1500000,3,3),(4,'2023-07-20 16:10:00',450000,4,4),(5,'2023-07-21 13:00:00',640000,5,5),(6,'2023-07-21 19:35:00',520000,6,6),(7,'2023-07-21 15:20:00',65000,7,7),(8,'2023-07-21 17:50:00',850000,8,8),(9,'2023-07-21 20:15:00',1800000,9,1),(10,'2023-07-23 12:00:00',600000,10,2),(11,'2023-07-23 11:35:00',360000,11,3),(12,'2023-07-23 21:15:00',160000,12,4),(13,'2023-07-23 22:00:00',95000,13,5),(14,'2023-07-24 19:40:00',500000,14,6),(15,'2023-07-24 18:23:00',2500000,15,7);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-18  0:05:26
