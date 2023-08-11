
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
