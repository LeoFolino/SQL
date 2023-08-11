-- Crear la base de datos
CREATE DATABASE neotec;

-- Usar la base de datos
USE neotec;

-- Crear la tabla de Localidad
CREATE TABLE localidad (
    localidad_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    PRIMARY KEY (localidad_ID),
    UNIQUE (localidad_ID),
    UNIQUE (nombre)
);

-- Tabla de Dirección
CREATE TABLE direccion (
    direccion_ID INT NOT NULL AUTO_INCREMENT,
    calle VARCHAR(30) NOT NULL,
    altura INT NOT NULL,
    localidad_ID INT NOT NULL,
    PRIMARY KEY (direccion_ID),
    UNIQUE (direccion_ID),
    FOREIGN KEY (localidad_ID) REFERENCES localidad(localidad_ID)
);

-- Tabla de Proveedor
CREATE TABLE proveedor (
    proveedor_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    direccion_ID INT NOT NULL,
    telefono INT NULL,
    email VARCHAR(50) NULL,
    PRIMARY KEY (proveedor_ID),
    UNIQUE (proveedor_ID),
    UNIQUE (nombre),
    UNIQUE (direccion_ID),
    UNIQUE (telefono),
    UNIQUE (email),
    FOREIGN KEY (direccion_ID) REFERENCES direccion(direccion_ID)
);

-- Tabla de categoría
CREATE TABLE categoria (
    categoria_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(70) NOT NULL,
    PRIMARY KEY (categoria_ID),
    UNIQUE (categoria_ID),
    UNIQUE (nombre),
    UNIQUE (descripcion)
);

-- Tabla de Marca
CREATE TABLE marca (
    marca_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    pais_origen VARCHAR(25) NOT NULL,
    PRIMARY KEY (marca_ID),
    UNIQUE (marca_ID),
    UNIQUE (nombre)
);

-- Tabla de cliente
CREATE TABLE cliente (
    cliente_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    direccion_ID INT NOT NULL,
    telefono INT NULL,
    email VARCHAR(50) NULL,
    PRIMARY KEY (cliente_ID),
    UNIQUE (cliente_ID),
    UNIQUE (telefono),
    UNIQUE (email),
    FOREIGN KEY (direccion_ID) REFERENCES direccion(direccion_ID)
);

-- Tabla de pedido
CREATE TABLE pedido (
    pedido_ID INT NOT NULL AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    total INT NOT NULL,
    cliente_ID INT NOT NULL,
    PRIMARY KEY (pedido_ID),
    UNIQUE (pedido_ID),
    UNIQUE (cliente_ID),
    FOREIGN KEY (cliente_ID) REFERENCES cliente(cliente_ID)
);

-- Tabla de empleado
CREATE TABLE empleado (
    empleado_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    direccion_ID INT NOT NULL,
    telefono INT NULL,
    email VARCHAR(50) NULL,
    cargo VARCHAR(15) NOT NULL,
    PRIMARY KEY (empleado_ID),
    UNIQUE (empleado_ID),
    UNIQUE (telefono),
    UNIQUE (email),
    FOREIGN KEY (direccion_ID) REFERENCES direccion(direccion_ID)
);

-- Tabla de venta
CREATE TABLE venta (
    venta_ID INT NOT NULL AUTO_INCREMENT,
    fecha_venta TIMESTAMP NOT NULL,
    total INT NOT NULL,
    cliente_ID INT NOT NULL,
    empleado_ID INT NOT NULL,
    PRIMARY KEY (venta_ID),
    UNIQUE (venta_ID),
    FOREIGN KEY (cliente_ID) REFERENCES cliente(cliente_ID),
    FOREIGN KEY (empleado_ID) REFERENCES empleado(empleado_ID)
);

-- Tabla de producto
CREATE TABLE producto (
    producto_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(120) NOT NULL,
    descripcion VARCHAR(120) NOT NULL,
    precio INT NOT NULL,
    stock INT NULL,
    fecha_actualizacion DATE NOT NULL,
    proveedor_ID INT NOT NULL,
    marca_ID INT NOT NULL,
    categoria_ID INT NOT NULL,
    PRIMARY KEY (producto_ID),
    UNIQUE (producto_ID),
    FOREIGN KEY (proveedor_ID) REFERENCES proveedor(proveedor_ID),
    FOREIGN KEY (marca_ID) REFERENCES marca(marca_ID),
    FOREIGN KEY (categoria_ID) REFERENCES categoria(categoria_ID)
);

-- Tabla de Detalle_Venta
CREATE TABLE detalle_venta (
    detalle_venta_ID INT NOT NULL AUTO_INCREMENT,
    cantidad INT NOT NULL,
    precio_unitario INT NOT NULL,
    subtotal INT NOT NULL,
    producto_ID INT NOT NULL,
    venta_ID INT NOT NULL,
    PRIMARY KEY (detalle_venta_ID),
    UNIQUE (detalle_venta_ID),
    UNIQUE (producto_ID),
    UNIQUE (venta_ID),
    FOREIGN KEY (producto_ID) REFERENCES producto(producto_ID),
    FOREIGN KEY (venta_ID) REFERENCES venta(venta_ID)
);

-- Tabla de sucursal
CREATE TABLE sucursal (
    sucursal_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    direccion_ID INT NOT NULL,
    telefono INT NOT NULL,
    PRIMARY KEY (sucursal_ID),
    UNIQUE (sucursal_ID),
    FOREIGN KEY (direccion_ID) REFERENCES direccion(direccion_ID)
);

-- Tabla de Método de pago
CREATE TABLE metodo_pago (
    metodo_ID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    PRIMARY KEY (metodo_ID),
    UNIQUE (metodo_ID)
);

-- Tabla de pago
CREATE TABLE pago (
    pago_ID INT NOT NULL AUTO_INCREMENT,
    fecha_pago DATE NOT NULL,
    monto INT NOT NULL,
    pedido_ID INT NOT NULL,
    metodo_ID INT NOT NULL,
    PRIMARY KEY (pago_ID),
    UNIQUE (pago_ID),
    FOREIGN KEY (pedido_ID) REFERENCES pedido(pedido_ID),
    FOREIGN KEY (metodo_ID) REFERENCES metodo_pago(metodo_ID)
);

-- Tabla de valoración
CREATE TABLE valoracion (
    valoracion_ID INT NOT NULL AUTO_INCREMENT,
    producto_ID INT NOT NULL,
    cliente_ID INT NOT NULL,
    calificacion INT NULL,
    comentario VARCHAR(80) NULL,
    PRIMARY KEY (valoracion_ID),
    UNIQUE (valoracion_ID),
    UNIQUE (comentario),
    FOREIGN KEY (producto_ID) REFERENCES producto(producto_ID),
    FOREIGN KEY (cliente_ID) REFERENCES cliente(cliente_ID)
);

USE neotec;

INSERT INTO localidad (nombre) VALUES
	('CABA'),
    ('La Matanza'),
    ('Luján'),
    ('San Fernando'),
    ('San Miguel'),
    ('La Plata'),
    ('Quilmes'),
    ('Tigre'),
    ('San Isidro'),
    ('Bahia Blanca'),
    ('Pilar'),
    ('Escobar'),
    ('Moreno'),
    ('Berazategui'),
    ('Lanús');

INSERT INTO direccion (calle, altura, localidad_ID) VALUES
	('Avenida Santa Fe', 1324, 2),
    ('San Juan', 6342, 1),
    ('Avenida Hipólito Yrigoyen', 6333, 12),
    ('Laprida', 1234, 7),
    ('Sarmiento', 5355, 4),
    ('Avenida Belgrano', 7564, 10),
    ('Mitre', 2311, 8),
    ('Avenida Independencia', 3423, 3),
    ('3 de Febrero', 7777, 5),
    ('Urquiza', 4532, 9),
    ('Güemes', 9743, 11),
    ('Avenida Corrientes', 5354, 6),
    ('Moreno', 546, 13),
    ('Roca', 2423, 15),
    ('Rivadavia', 6743, 2),
    ('Larralde', 4578, 6),
    ('Santa Rosa', 1344, 8),
    ('Lemans', 1343, 3),
    ('Talcahuano', 5324, 2),
    ('Peron', 5216, 2),
    ('Cerati', 7534, 7),
    ('Garcia Merou', 3462, 7),
    ('Ricardo Gutierrez', 1245, 9),
    ('Lanin', 2534, 6),
    ('Saturno', 7543, 1),
    ('Crisol', 2455, 14),
    ('El charrua', 534, 2),
    ('Murguiondo', 1644, 8),
    ('Pueyrredón', 4567, 3),
    ('Esmeralda', 6789, 2),
    ('Avenida Las Heras', 1234, 7),
    ('Montevideo', 5678, 7),
    ('Avenida Santa Cruz', 9012, 8),
    ('Uspallata', 3456, 9),
    ('Avenida Juan B. Justo', 7890, 10),
    ('Thames', 2345, 11),
    ('Avenida Triunvirato', 5678, 2),
    ('Viamonte', 9012, 3),
    ('Avenida Dorrego', 1234, 14),
    ('Córdoba', 5678, 13),
    ('Avenida Santa María', 9012, 5),
    ('Godoy Cruz', 3456, 5),
    ('Avenida Leandro N. Alem', 7890, 4),
    ('Cabrera', 2345, 8),
    ('Avenida Federico Lacroze', 5678, 6),
    ('Malabia', 9012, 9),
    ('Avenida Álvarez Thomas', 1234, 10),
    ('Billinghurst', 5678, 9),
    ('Avenida Cramer', 9012, 11),
    ('Holmberg', 3456, 11),
    ('Avenida Monroe', 7890, 13);

INSERT INTO proveedor (nombre, direccion_ID, telefono, email) VALUES
    ('GIGABYTE', 1, 1558647856, 'gigabyte@gmail.com'),
    ('Fullh4rd', 2, 1598465312, 'fullh4rd@gmail.com'),
    ('Mexx Computación', 3, 1597562145, 'mexxcomputacion@outlook.com'),
    ('ASUS', 4, 1509823746, 'asus@gmail.com'),
    ('AMD', 5, 1576543210, 'amd@hotmail.com'),
    ('Apple', 6, 1523486091, 'apple@hotmail.com'),
    ('SONY', 7, 1567890452, 'sony@gmail.com'),
    ('Microsoft', 8, 1598123406, 'microsoft@outlook.com'),
    ('CompuWorld', 9, 1532456789, 'compuworld@gmail.com'),
    ('Starters', 10, 1587904321, 'starters@hotmail.com'),
    ('DEvTEC', 11, 1543201987, 'devtec@gmail.com'),
    ('Pastion', 12, 1512345678, 'pastion@outlook.com'),
    ('Owerland', 13, 1556789012, 'owerland@gmail.com'),
    ('GameStore', 14, 1590876543, 'gamestore@hotmail.com'),
    ('TechnicalLambda', 15, 1576543289, 'technicallambda@gmail.com');

INSERT INTO categoria (nombre, descripcion) VALUES
    ('Procesadores', 'Procesadores para computadoras.'),
    ('Placas de Video', 'Placa gráficas para gaming.'),
    ('Memorias RAM', 'Memorias RAM.'),
    ('Discos SSD', 'Discos de estado sólido de alta velocidad de escritura y lectura.'),
    ('Discos HDD', 'Discos duros tradicionales para almacenamiento masivo.'),
    ('Laptops', 'Laptops y notebooks de diversas marcas.'),
    ('Tablets', 'Tablets para entretenimiento y diseño.'),
    ('Celulares', 'Smartphones.'),
    ('Consolas de Videojuegos', 'Consolas para juegos.'),
    ('Monitores', 'Monitores para computadoras.'),
    ('Teclados', 'Teclados mecánicos y de membrana.'),
    ('Mouse', 'Mouse gamers y estándars.'),
    ('Impresoras', 'Impresoras para uso personal y profesional.'),
    ('Auriculares', 'Auriculares para Gaming / Alta calidad de audio.');

INSERT INTO marca (nombre, pais_origen) VALUES
    ('AMD', 'Estados Unidos'),
    ('GIGABYTE', 'Estados Unidos'),
    ('Intel', 'Estados Unidos'),
    ('ASUS', 'Taiwán'),
    ('Kingston', 'Estados Unidos'),
    ('Samsung', 'Corea del Sur'),
    ('Western Digital', 'Estados Unidos'),
    ('Seagate', 'Estados Unidos'),
    ('HP', 'Estados Unidos'),
    ('Lenovo', 'China'),
    ('Apple', 'Estados Unidos'),
    ('SONY', 'Japón'),
    ('Logitech', 'Suiza'),
    ('Epson', 'Japón'),
    ('Corsair', 'Estados Unidos'),
    ('Microsoft', 'Estados Unidos');

INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES
    ('Ana Pérez', 16, 1589432076, 'anaperez@gmail.com'),
    ('Luis Gómez', 17, 1537029841, 'luisgomez@gmail.com'),
    ('María Torres', 18, 1598143027, 'mariatorres@gmail.com'),
    ('Carlos Rodríguez', 19, 1570968453, 'carlosrodriguez@hotmail.com'),
    ('Diego Martínez', 20, 1502986347, 'diegomartinez@hotmail.com'),
    ('Laura Sánchez', 21, 1523809641, 'laurasanchez@gmail.com'),
    ('Pedro Ramírez', 22, 1547203689, 'pedroramirez@gmail.com'),
    ('Sofía Gutiérrez', 23, 1556098213, 'sofiagutierrez@hotmail.com'),
    ('Manuel Herrera', 24, 1513946820, 'manuelherrera@gmail.com'),
    ('Isabel Castro', 25, 1534987602, 'isabelcastro@gmail.com'),
    ('Andrés Vargas', 26, 1579302184, 'andresvargas@gmail.com'),
    ('Carolina Jiménez', 27, 1583029647, 'carolinajimenez@hotmail.com'),
    ('Miguel Ríos', 28, 1567142093, 'miguelrios@hotmail.com'),
    ('Valentina Gómez', 29, 1502496783, 'valentinagomez@outlook.com'),
    ('Alejandro Fernández', 30, 1597420836, 'alejandrorfernandez@hotmail.com');

INSERT INTO pedido (fecha_pedido, total, cliente_ID) VALUES
    ('2023-07-20', 700000, 1),
	('2023-07-20', 280000, 2),
    ('2023-07-20', 1500000, 3),
    ('2023-07-20', 450000, 4),
    ('2023-07-21', 640000, 5),
	('2023-07-21', 520000, 6),
	('2023-07-21', 65000, 7),
	('2023-07-21', 850000, 8),
	('2023-07-21', 1800000, 9),
	('2023-07-23', 600000, 10),
	('2023-07-23', 360000, 11),
	('2023-07-23', 160000, 12),
	('2023-07-23', 95000, 13),
	('2023-07-24', 500000, 14),
	('2023-07-24', 2500000, 15);
    
    
INSERT INTO empleado (nombre, direccion_ID, telefono, email, cargo) VALUES
    ('Martín Núñez', 31, 1576023845, 'martinnunez@hotmail.com', 'Vendedor'),
    ('Marina Torres', 31, 1534567890, 'marinatorres@hotmail.com', 'Vendedor'),
    ('Ricardo Gómez', 32, 1589032145, 'ricardogomez@gmail.com', 'Vendedor'),
    ('Julieta González', 32, 1590789356, 'julietagonzalez@outlook.com', 'Vendedor'),
    ('Santiago Méndez', 33, 1567893012, 'santiagomendez@outlook.com', 'Vendedor'),
    ('Laura Romero', 33, 1523098765, 'lauraromero@outlook.com', 'Vendedor'),
    ('Eduardo Mendoza', 34, 1543201987, 'eduardomendoza@gmail.com', 'Vendedor'),
    ('Ana Jiménez', 34, 1590812340, 'anajimenez@hotmail.com', 'Vendedor');

INSERT INTO venta (fecha_venta, total, cliente_ID, empleado_ID) VALUES
	('2023-07-20 09:30:00', 700000, 1, 1),
	('2023-07-20 11:45:00', 280000, 2, 2),
    ('2023-07-20 15:20:00', 1500000, 3, 3),
    ('2023-07-20 13:10:00', 450000, 4, 4),
    ('2023-07-21 10:00:00', 640000, 5, 5),
	('2023-07-21 16:35:00', 520000, 6, 6),
	('2023-07-21 12:20:00', 65000, 7, 7),
	('2023-07-21 14:50:00', 850000, 8, 8),
	('2023-07-21 17:15:00', 1800000, 9, 1),
	('2023-07-23 09:00:00', 600000, 10, 2),
	('2023-07-23 08:35:00', 360000, 11, 3),
	('2023-07-23 18:15:00', 160000, 12, 4),
	('2023-07-23 19:00:00', 95000, 13, 5),
	('2023-07-24 16:40:00', 500000, 14, 6),
	('2023-07-24 15:23:00', 2500000, 15, 7);

INSERT INTO producto (nombre, descripcion, precio, stock, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID) VALUES
    ('Procesador AMD Ryzen 9 8900', 'Procesador multinúcleo gaming.', 700000, 10, '2023-07-20', 5, 1, 1),
    ('Procesador AMD Ryzen 7 6700', 'Procesador multinúcleo gaming.', 450000, 10, '2023-07-18', 5, 1, 1),
    ('Procesador AMD Ryzen 5 5200', 'Procesador multinúcleo gaming.', 320000, 15, '2023-07-15', 5, 1, 1),
    ('Placa de Video NVIDIA RTX 3090', 'Placa gráfica para gaming en 4K con RTX full.', 1250000, 10, '2023-07-20', 1, 2, 2),
    ('Placa de Video NVIDIA RTX 3080', 'Placa gráfica gaming en 1440p con RTX full.', 690000, 10, '2023-07-20', 1, 2, 2),
    ('Placa de Video NVIDIA RTX 3070', 'Placa gráfica gaming en 1440p.', 480000, 10, '2023-07-20', 1, 2, 2),
    ('Memoria RAM Kingston HyperX 32GB 4800mhz', 'Memoria RAM DDR4 de 32GB.', 80000, 20, '2023-07-19', 2, 5, 3),
	('Memoria RAM Kingston HyperX 16GB 3600mhz', 'Memoria RAM DDR4 de 16GB.', 65000, 30, '2023-07-19', 2, 5, 3),
	('Memoria RAM Kingston HyperX 8GB 3200mhz', 'Memoria RAM DDR4 de 8GB.', 40000, 40, '2023-07-19', 2, 5, 3),
    ('Disco SSD Samsung 2TB', 'Disco de estado sólido de 2TB con 8000mb/s de lectura y escritura.', 250000, 30, '2023-07-21', 3, 6, 4),
    ('Disco SSD Samsung 1TB', 'Disco de estado sólido de 1TB con 4500mb/s de lectura y escritura.', 160000, 30, '2023-07-21', 3, 6, 4),
    ('Disco SSD Samsunglocalidadproducto 500GB', 'Disco de estado sólido de 500GB con 4500mb/s de lectura y escritura.', 80000, 30, '2023-07-21', 3, 6, 4),
    ('Laptop ASUS ZenBook 14', 'Laptop ultradelgada con pantalla de 14 pulgadas y diseño elegante. Porta Ryzen 7 6800 y NVIDIA RTX 2060', 1300000, 8, '2023-07-23', 15, 4, 6),
    ('Laptop ASUS TUF Gaming A15', 'Laptop para gaming con pantalla de 15.6 pulgadas, con procesador AMD Ryzen 9 y NVIDIA RTX 3080.', 2500000, 10, '2023-07-23', 15, 4, 6),
    ('Laptop ASUS TUF Gaming A15', 'Laptop para gaming con pantalla de 15.6 pulgadas, con procesador AMD Ryzen 9 y NVIDIA RTX 3080.', 2500000, 10, '2023-07-23', 15, 4, 6),
    ('Laptop ASUS ROG Zephyrus', 'Laptop para gaming con pantalla de 17 pulgadas y alto rendimiento. Porta Intel i7 12900 y RTX 2060', 1500000, 5, '2023-07-01', 15, 4, 6),
    ('iPad Air 11 pulgadas', 'Tablet de gama media con pantalla Retina y soporte para Apple Pencil.', 450000, 15, '2023-07-14', 6, 11, 7),
	('iPad Pro 13 pulgadas', 'Tablet de gama alta con pantalla Retina y soporte para Apple Pencil.', 850000, 15, '2023-07-14', 6, 11, 7),
	('iPhone 14 Pro', 'Smartphone de última generación.', 1250000, 15, '2023-07-14', 6, 11, 8),
	('iPhone 14 Pro Max', 'Smartphone de última generación con 1.2 pulgadas más de pantlla que el 14 Pro.', 1800000, 15, '2023-07-14', 6, 11, 8),
    ('Consola Xbox Series S', 'Consola de videojuegos de última generación con gráficos en 4K.', 400000, 8, '2023-07-18', 8, 16, 9),
    ('Consola Xbox Series X', 'Consola de videojuegos de última generación con gráficos en 4K. Más potente que la Series S', 800000, 8, '2023-07-18', 8, 16, 9),
    ('Teclado Mecánico Corsair K70 RGB', 'Teclado mecánico.', 45000, 20, '2023-07-12', 14, 15, 11),
    ('Teclado Mecánico Corsair K95 RGB Platinum', 'Teclado mecánico.', 70000, 15, '2023-07-23', 14, 15, 11),
    ('Teclado Mecánico Corsair K60 RGB Pro', 'Teclado mecánico.', 20000, 18, '2023-07-23', 14, 15, 11),
    ('Monitor Samsung 32" Ultragear', 'Monitor de alta resolución y alta frecuencia de actualización para gaming.', 180000, 12, '2023-07-10', 12, 6, 10),
    ('Monitor Samsung 27" Curvo', 'Monitor curvo de alta resolución y amplio ángulo de visión.', 150000, 8, '2023-07-23', 12, 6, 10),
    ('Monitor Samsung 34" Ultrawide', 'Monitor ultrawide de alta resolución para una experiencia de pantalla panorámica.', 450000, 10, '2023-07-23', 12, 6, 10),
    ('Monitor Samsung 24" Gaming', 'Monitor de alta frecuencia de actualización y tiempo de respuesta para gaming.', 100000, 15, '2023-07-23', 12, 6, 10),
    ('Mouse Logitech G502', 'Mouse para gaming con sensor óptico de alta sensibilidad y diseño ergonómico.', 60000, 40, '2023-07-23', 11, 13, 12),
    ('Mouse Logitech G Pro X', 'Mouse para gaming con sensor HERO 25K y diseño ligero.', 80000, 30, '2023-07-23', 11, 13, 12),
    ('Mouse Logitech G305', 'Mouse inalámbrico para gaming con sensor HERO 12K y gran durabilidad.', 65000, 20, '2023-07-23', 11, 13, 12),
    ('Teclado Mecánico Logitech G Pro X', 'Teclado mecánico para gaming con interruptores GX Clicky.', 95000, 15, '2023-07-23', 11, 13, 11),
    ('Teclado Mecánico Logitech G413', 'Teclado mecánico para gaming con interruptores Romer-G.', 75000, 20, '2023-07-23', 11, 13, 11),
    ('Impresora HP OfficeJet', 'Impresora multifunción para uso personal y profesional.', 300000, 18, '2023-07-10', 3, 9, 13),
	('Impresora HP DeskJet', 'Impresora para uso personal y pequeñas oficinas.', 150000, 10, '2023-07-10', 3, 9, 13),
	('Impresora Epson WorkForce', 'Impresora rápida y eficiente para oficinas.', 320000, 5, '2023-07-10', 3, 14, 13),
	('Impresora Epson EcoTank', 'Impresora de tanque de tinta recargable de alta capacidad.', 280000, 7, '2023-07-10', 3, 14, 13),
    ('Procesador Intel Core i9', 'Procesador de alto rendimiento para multitarea y gaming.', 900000, 25, '2023-07-10', 10, 3, 1),
    ('Procesador Intel Core i7', 'Procesador de alto rendimiento para multitarea y gaming.', 600000, 25, '2023-07-10', 10, 3, 1),
    ('Procesador Intel Core i5', 'Procesador de alto rendimiento para multitarea.', 350000, 25, '2023-07-10', 10, 3, 1),
    ('Placa de Video ASUS TUF Gaming', 'Tarjeta gráfica de gama media para gaming en alta calidad.', 320000, 15, '2023-07-19', 4, 4, 2),
	('Placa de Video ASUS Dual', 'Tarjeta gráfica de gama media para gaming en resolución 1080p.', 280000, 20, '2023-07-23', 4, 4, 2),
    ('Placa de Video ASUS ROG Strix', 'Tarjeta gráfica de gama alta para gaming en 4K.', 450000, 10, '2023-07-23', 4, 4, 2),
    ('Placa de Video ASUS Phoenix', 'Tarjeta gráfica compacta de gama media para PC pequeñas.', 260000, 18, '2023-07-23', 4, 4, 2),
    ('Memoria RAM Corsair Vengeance 16GB', 'Memoria RAM DDR4 de 16GB para edición de video y diseño.', 50000, 40, '2023-07-17', 9, 15, 3),
    ('Memoria RAM Corsair Vengeance 32GB', 'Memoria RAM DDR4 de 32GB para edición de video y diseño.', 90000, 30, '2023-07-23', 9, 15, 3),
    ('Memoria RAM Corsair Dominator Platinum 16GB', 'Memoria RAM DDR4 de alto rendimiento para entusiastas.', 70000, 25, '2023-07-23', 9, 15, 3),
    ('Memoria RAM Corsair Vengeance RGB Pro 32GB', 'Memoria RAM DDR4 con iluminación RGB para personalización.', 95000, 20, '2023-07-23', 9, 15, 3),
    ('Disco SSD Western Digital 1TB', 'Disco de estado sólido de 1TB para una carga rápida del sistema.', 60000, 50, '2023-07-20', 2, 7, 4),
    ('Disco SSD Western Digital 2TB', 'Disco de estado sólido de 2TB para una carga rápida del sistema.', 80000, 40, '2023-07-23', 2, 7, 4),
    ('Disco HDD Western Digital Blue 500GB', 'Disco rígido tradicional de 500GB.', 20000, 30, '2023-07-23', 3, 7, 5),
    ('Disco HDD Western Digital Black 1TB', 'Disco rígido tradicional de 1TB con alto rendimiento para gaming.', 45000, 35, '2023-07-23', 3, 7, 5),
    ('PS5', 'Consola de videojuegos PlayStation 5 con gráficos en 4K y amplio catálogo de juegos.', 520000, 15, '2023-07-23', 7, 12, 9),
    ('Auriculares Sony WH-1000XM4', 'Auriculares inalámbricos con cancelación de ruido y sonido de alta resolución.', 150000, 20, '2023-07-23', 7, 12, 14),
    ('Auriculares Sony WF-SP800N', 'Auriculares inalámbricos deportivos con resistencia al agua y batería de larga duración.', 100000, 25, '2023-07-23', 7, 12, 14),
    ('Auriculares Sony WH-XB900N', 'Auriculares inalámbricos con graves potentes y cancelación de ruido.', 60000, 18, '2023-07-23', 6, 12, 14);

INSERT INTO detalle_venta (cantidad, precio_unitario, subtotal, producto_ID, venta_ID) VALUES
    (1, 700000, 700000, 1, 1),
    (1, 280000, 280000, 42, 2),
    (1, 1500000, 1500000, 15, 3),
    (3, 150000, 450000, 26, 4),
    (2, 320000, 640000, 41, 5),
    (1, 520000, 520000, 53, 6),
    (1, 65000, 65000, 31, 7),
    (1, 850000, 850000, 17, 8),
    (2, 90000, 1800000, 38, 9),
	(2, 300000, 600000, 34, 10),
    (4, 90000, 360000, 46, 11),
    (2, 80000, 160000, 50, 12),
    (1, 95000, 95000, 32, 13),
    (2, 250000, 500000, 10, 14),
    (1, 250000, 250000, 14, 15);

INSERT INTO sucursal (nombre, direccion_ID, telefono) VALUES
    ('Sucursal Central', 31, 1528974306),
    ('Sucursal Osterser', 32, 1593640287),
    ('Sucursal GamingOC', 33, 1536724018),
    ('Sucursal Caseros', 34, 1565409837);

INSERT INTO metodo_pago (nombre) VALUES
    ('Efectivo'),
    ('Tarjeta de crédito'),
    ('Tarjeta de débito'),
    ('QR'),
    ('Transferencia bancaria');

INSERT INTO pago (fecha_pago, monto, pedido_ID, metodo_ID) VALUES
    ('2023-07-20', 700000, 1, 1),
	('2023-07-20', 280000, 2, 2),
    ('2023-07-20', 1500000, 3, 5),
    ('2023-07-20', 450000, 4, 5),
    ('2023-07-21', 640000, 5, 5),
	('2023-07-21', 520000, 6, 5),
	('2023-07-21', 65000, 7, 1),
	('2023-07-21', 850000, 8, 2),
	('2023-07-21', 1800000, 9, 5),
	('2023-07-23', 600000, 10, 3),
	('2023-07-23', 360000, 11, 2),
	('2023-07-23', 160000, 12, 4),
	('2023-07-23', 95000, 13, 4),
	('2023-07-24', 500000, 14, 5),
	('2023-07-24', 2500000, 15, 1);

INSERT INTO valoracion (producto_ID, cliente_ID, calificacion, comentario) VALUES
	(1, 1, 4, 'Rendimiento potente, ideal para gaming..'),
	(42, 2, 3, 'Buena relación calidad-precio.'),
	(15, 3, 5, 'Excelente rendimiento y diseño.'),
	(26, 4, 4, 'Pantalla curva inmersiva, buena calidad de imagen.'),
	(41, 5, 3, 'Adecuada para gaming en calidad media.'),
	(53, 6, 5, 'Increíble experiencia de juego, gráficos asombrosos.'),
	(31, 7, 4, 'Ligero y preciso, ideal para juegos.'),
	(17, 8, 5, 'Potente y versátil, perfecto para creatividad.'),
	(38, 9, 5, 'Poderoso para multitarea y gaming.'),
	(34, 10, 3, 'Asequible y funcional para uso doméstico.'),
	(46, 11, 4, 'Rapidez en tareas exigentes.'),
	(50, 12, 5, 'Carga rápida del sistema, gran capacidad.'),
	(32, 13, 4, 'Diseño ergonómico y respuesta rápida.'),
	(10, 14, 4, 'Transferencias de datos ágiles y fiables.'),
	(14, 15, 4, 'Portátil, liviana y de buen rendimiento.');
    
    
-- CREA VISTA QUE RELACIONA PRODUCTOS CON SU CATEGORIA Y VALORES
CREATE VIEW productos_y_categorias AS 
SELECT p.nombre AS nombre_producto, c.nombre AS nombre_categoria, p.precio
FROM producto p
JOIN categoria c ON p.categoria_ID = c.categoria_ID;


-- CREA VISTA QUE MUESTRA LOS EMPLEADOS Y EN QUE SUCURSAL SE ENCUENTRAN
CREATE VIEW informacion_empleados AS
SELECT e.empleado_ID, e.nombre as Empleado, s.nombre as Sucursal, d.calle as 'Calle Sucursal', d.altura as N°, l.nombre as Localidad
FROM empleado e
JOIN sucursal s ON e.direccion_ID = s.direccion_ID
JOIN direccion d ON s.direccion_ID = d.direccion_ID
JOIN localidad l ON d.localidad_ID = l.localidad_ID;


-- CREA VISTA SOBRE LOS PRODUCTOS MAS VENDIDOS
CREATE VIEW productos_mas_vendidos AS 
SELECT p.nombre, COUNT(d.detalle_venta_ID) AS cantidad_vendida
FROM producto p
JOIN detalle_venta d ON d.producto_ID = p.producto_ID
GROUP BY p.nombre
ORDER BY cantidad_vendida DESC;


-- CREA VISTA SOBRE LOS PRODUCTOS MENOS VENDIDOS
CREATE VIEW productos_menos_vendidos AS 
SELECT p.nombre, COUNT(d.detalle_venta_ID) AS cantidad_vendida
FROM producto p
JOIN detalle_venta d ON d.producto_ID = p.producto_ID
GROUP BY p.nombre
ORDER BY cantidad_vendida ASC;


-- CREA VISTA DE VENTAS POR CATEGORIA
CREATE VIEW ventas_por_categoria AS 
SELECT c.nombre, COUNT(d.detalle_venta_ID) AS cantidad_de_ventas
FROM categoria c 
JOIN producto p ON p.categoria_ID = c.categoria_ID
JOIN detalle_venta d ON d.producto_ID = p.producto_ID
GROUP BY c.nombre;


-- CREA VISTA DE DETALLE DE PROVEEDORES
CREATE VIEW detalle_de_proveedores AS 
SELECT pv.nombre, COUNT(pd.producto_ID) AS numero_de_productos, SUM(pd.precio * pd.stock) AS valor_total_de_productos
FROM proveedor pv
JOIN producto pd ON pd.proveedor_ID = pv.proveedor_ID
GROUP BY pv.nombre;


-- CREA VISTA DEL METODO DE PAGO MAS REALIZADO
CREATE VIEW metodo_pago_mas_efectuado AS 
SELECT mp.nombre, COUNT(p.pago_ID) AS cantidad_usado
FROM metodo_pago mp
JOIN pago p ON p.metodo_ID = mp.metodo_ID
GROUP BY mp.nombre
ORDER BY cantidad_usado DESC;

-- CREAR S.P. QUE ORDENE LAS TABLAS POR NOMBRE ASCENDENTE O DESCENDENTE
-- CALL orden_de_tablas('tabla','nombre', 'ASC' o 'DESC') siendo "nombre" inamovíble

DELIMITER $$
CREATE PROCEDURE orden_de_tablas(IN nombre_tabla VARCHAR(50), IN nombre_columna VARCHAR(50), IN tipo_orden VARCHAR(4))
BEGIN
    SET @tabla = CONCAT('SELECT * FROM ', nombre_tabla, ' ORDER BY ', nombre_columna, ' ', tipo_orden);
    PREPARE stmt FROM @tabla;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;

-- CREAR S.P. QUE INSERTE REGISTROS NUEVOS
-- CALL insertar_registros('empleado', 'Leonel Folino', 25, 1564953356, 'leonelfolinoing@gmail.com');
-- TAMBIÉN PUEDE FUNCIONAR PARA INSERTAR REGISTROS EN LA TABLA PROVEEDOR y CLIENTE
DELIMITER $$
CREATE PROCEDURE insertar_registros(IN nombre_de_tabla VARCHAR(15), IN nombre VARCHAR(30), IN direccion_ID INT, IN telefono INT, IN email VARCHAR(50))
BEGIN
    SET @insertar = CONCAT('INSERT INTO ', nombre_de_tabla, ' (nombre, direccion_ID, telefono, email) VALUES (''', nombre, ''', ', direccion_ID, ', ', telefono, ', ''', email, ''')');
    PREPARE stmt FROM @insertar;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;


#Crear la tabla de bitácora de productos
CREATE TABLE log_producto (
    log_producto_ID INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(30) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    operacion VARCHAR(25) NOT NULL,
    producto_ID INT NOT NULL,
    nombre VARCHAR(120) NULL,
    descripcion VARCHAR(120) NULL,
    precio INT NULL,
    stock INT NULL,
    fecha_actualizacion DATE NULL,
    proveedor_ID INT NULL,
    marca_ID INT NULL,
    categoria_ID INT NULL,
    PRIMARY KEY (log_producto_ID)
);

#Crear la tabla de bitácora de ventas
CREATE TABLE log_venta (
    log_venta_ID INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(30) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    operacion VARCHAR(25) NOT NULL,
    venta_ID INT NOT NULL,
    fecha_venta TIMESTAMP NULL,
    total INT NULL,
    cliente_ID INT NULL,
    empleado_ID INT NULL,
    PRIMARY KEY (log_venta_ID)
);

-- Trigger BEFORE INSERT en la tabla producto para AÑADIR PRODUCTO
CREATE TRIGGER TR_agregar_producto
BEFORE INSERT ON producto 
FOR EACH ROW  
    INSERT INTO log_producto(operacion, usuario, producto_ID, nombre, descripcion, precio, stock, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID)
    VALUES ('Nuevo Producto', SESSION_USER(), NEW.producto_ID, NEW.nombre, NEW.descripcion, NEW.precio, NEW.stock, NEW.fecha_actualizacion, NEW.proveedor_ID, NEW.marca_ID, NEW.categoria_ID);
#EJEMPLO
#INSERT INTO producto(nombre, descripcion, precio, stock, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID)
#VALUES ('Prueba', 'Producto de prueba', 15000, 20, CURDATE(), 1, 1, 1);


-- Trigger AFTER UPDATE en la tabla producto para EDITAR PRODUCTO (con vista de los datos viejos)
CREATE TRIGGER TR_actualizar_producto
AFTER UPDATE ON producto 
FOR EACH ROW 
    INSERT INTO log_producto(operacion, usuario, producto_ID, nombre_anterior, nombre_nuevo, descripcion_anterior, descripcion_nueva, precio_anterior, precio_nuevo, stock_anterior, stock_nuevo, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID)
    VALUES ('Edicion de Producto', SESSION_USER(), NEW.producto_ID, OLD.nombre, NEW.nombre, OLD.descripcion, NEW.descripcion, OLD.precio, NEW.precio, OLD.stock, NEW.stock, NEW.fecha_actualizacion, NEW.proveedor_ID, NEW.marca_ID, NEW.categoria_ID);
#EJEMPLO
#SET nombre = 'Nombre Actualizado', descripcion = 'Descripcion Actualizada', precio = 3000000
#WHERE producto_ID = 14;


-- Trigger BEFORE DELETE en la tabla producto para ELIMINAR PRODUCTO
CREATE TRIGGER TR_eliminar_producto 
BEFORE DELETE ON producto 
FOR EACH ROW 
    INSERT INTO log_producto(operacion, usuario, producto_ID, nombre, descripcion, precio, stock, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID)
    VALUES ('Eliminar Producto', SESSION_USER(), OLD.producto_ID, OLD.nombre, OLD.descripcion, OLD.precio, OLD.stock, OLD.fecha_actualizacion, OLD.proveedor_ID, OLD.marca_ID, OLD.categoria_ID);
#EJEMPLO
#DELETE FROM producto
#WHERE producto_ID = 58;


-- Trigger BEFORE INSERT en la tabla venta para AÑADIR VENTA
CREATE TRIGGER TR_agregar_venta
BEFORE INSERT ON venta 
FOR EACH ROW  
    INSERT INTO log_venta(operacion, usuario, venta_ID, fecha_venta, total, cliente_ID, empleado_ID)
    VALUES ('Nueva Venta', SESSION_USER(), NEW.venta_ID, NEW.fecha_venta, NEW.total, NEW.cliente_ID, NEW.empleado_ID);
#EJEMPLO
#INSERT INTO venta(fecha_venta, total, cliente_ID, empleado_ID)
#VALUES (CURDATE(), 1250000, 13, 4);


-- Trigger AFTER DELETE en la tabla venta para ELIMINAR VENTA
CREATE TRIGGER TR_eliminar_venta
AFTER DELETE ON venta 
FOR EACH ROW 
    INSERT INTO log_venta(operacion, usuario, venta_ID, fecha_venta, total, cliente_ID, empleado_ID)
    VALUES ('Eliminar Venta', SESSION_USER(), OLD.venta_ID, OLD.fecha_venta, OLD.total, OLD.cliente_ID, OLD.empleado_ID);
#EJEMPLO
#DELETE FROM venta WHERE venta_ID = 16;

