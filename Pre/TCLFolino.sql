-- ELIMINACION DE PRODUCTOS (TABLA 1)

START TRANSACTION;

-- Elimina productos del 50 al 57 exceptuando 50 y 53
DELETE FROM producto WHERE producto_ID BETWEEN 50 AND 57 AND producto_ID NOT IN (50, 53);

-- ROLLBACK;

COMMIT;

-- Restaurar los registros del producto_ID 50 al 57
#INSERT INTO producto (producto_ID, nombre, descripcion, precio, stock, fecha_actualizacion, proveedor_ID, marca_ID, categoria_ID) VALUES -- (50, 'NombreProd50', 'DescProd50', 100, 50, '2023-08-17', 1, 1, 1),
#(51,'Disco SSD Western Digital 2TB', 'Disco de estado sólido de 2TB para una carga rápida del sistema.', 80000, 40, '2023-07-23', 2, 7, 4),
#(52,'Disco HDD Western Digital Blue 500GB', 'Disco rígido tradicional de 500GB.', 20000, 30, '2023-07-23', 3, 7, 5),
#(54,'PS5', 'Consola de videojuegos PlayStation 5 con gráficos en 4K y amplio catálogo de juegos.', 520000, 15, '2023-07-23', 7, 12, 9),
#(55,'Auriculares Sony WH-1000XM4', 'Auriculares inalámbricos con cancelación de ruido y sonido de alta resolución.', 150000, 20, '2023-07-23', 7, 12, 14),
#(56,'Auriculares Sony WF-SP800N', 'Auriculares inalámbricos deportivos con resistencia al agua y batería de larga duración.', 100000, 25, '2023-07-23', 7, 12, 14),
#(57,'Auriculares Sony WH-XB900N', 'Auriculares inalámbricos con graves potentes y cancelación de ruido.', 60000, 18, '2023-07-23', 6, 12, 14);


-- INSERCION DE REGISTROS EN TABLA CLIENTES (TABLA 2)
START TRANSACTION;

INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Juan Martinez', 50, '1564788888', 'juanma@outlook.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Marcos Acosta', 49, '1563233337', 'makos@gmail.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Sabrina Mariana', 48, '1563111145', 'salnrals@hotmail.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Guillermina Saravia', 47, '1574334477', 'gulmanasaravia@yahoo.com.ar');

SAVEPOINT lote1;

INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Antonella Estupignan', 46, '1597653311', 'antoestu@gmail.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Camila Esparta', 45, '1564763146', 'camithisparta@gmail.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Mariana Bonaparte', 44, '1539475355', 'marubona769@outlook.com');
INSERT INTO cliente (nombre, direccion_ID, telefono, email) VALUES ('Agustina Bello', 43, '1561333476', 'agu57in4@hotmail.com');

-- Eliminacion de savepoint lote1
#RELEASE SAVEPOINT lote1;

COMMIT;


