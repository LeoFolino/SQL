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
    UNIQUE (cliente_ID),
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
