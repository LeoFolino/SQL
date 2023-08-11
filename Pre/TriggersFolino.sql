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

