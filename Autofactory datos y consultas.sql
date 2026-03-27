use Autofactory;

-- brahyan


-- insertar en la tabla modelo_vehiculo los datos correspondientes.

INSERT INTO modelo_vehiculo (nombre, categoria, especificaciones_tecnicas, tiempo_ensamble) VALUES
('Modelo A', 'Sedan', 'Gasolina', 10),
('Modelo B', 'SUV', 'Híbrido', 12),
('Modelo C', 'Pickup', 'Diesel', 15),
('Modelo D', 'Sedan', 'Eléctrico', 11),
('Modelo E', 'SUV', 'Gasolina', 13),
('Modelo F', 'Pickup', 'Híbrido', 14),
('Modelo G', 'Sedan', 'Eléctrico', 9),
('Modelo H', 'SUV', 'Diesel', 16;),
('Modelo I', 'Pickup', 'Gasolina', 10),
('Modelo J', 'Sedan', 'Híbrido', 12),
('Modelo K', 'SUV', 'Eléctrico', 13),
('Modelo L', 'Pickup', 'Diesel', 14),
('Modelo M', 'Sedan', 'Gasolina', 10),
('Modelo N', 'SUV', 'Híbrido', 12),
('Modelo O', 'Pickup', 'Eléctrico', 15);

-- insertar en la tabla version_vehiculo los datos correspondientes.

INSERT INTO version_vehiculo (codigo_modelo, version_disponible) VALUES
(1,'Base'),(2,'Full'),(3,'Sport'),(4,'Luxury'),(5,'Base'),
(6,'Full'),(7,'Sport'),(8,'Luxury'),(9,'Base'),(10,'Full'),
(11,'Sport'),(12,'Luxury'),(13,'Base'),(14,'Full'),(15,'Sport');


-- insertar en la tabla linea_produccion los datos correspondientes.

INSERT INTO linea_produccion (tipo_vehiculo, capacidad_diaria, numero_estaciones, supervisor, turno_activo, estado_operativo) VALUES
('Sedan',100,10,'Carlos','Mañana','Activa'),
('SUV',120,12,'Ana','Tarde','Activa'),
('Pickup',80,8,'Luis','Noche','Activa'),
('Sedan',90,9,'Maria','Mañana','Activa'),
('SUV',110,11,'Pedro','Tarde','Activa'),
('Pickup',70,7,'Jose','Noche','Activa'),
('Sedan',95,9,'Laura','Mañana','Activa'),
('SUV',130,13,'Miguel','Tarde','Activa'),
('Pickup',85,8,'Sofia','Noche','Activa'),
('Sedan',100,10,'Diego','Mañana','Activa'),
('SUV',120,12,'Paula','Tarde','Activa'),
('Pickup',75,7,'Andres','Noche','Activa'),
('Sedan',90,9,'Elena','Mañana','Activa'),
('SUV',115,11,'Raul','Tarde','Activa'),
('Pickup',80,8,'Camila','Noche','Activa');

-- insertar en la tabla estacion_trabajo los datos correspondientes.

INSERT INTO estacion_trabajo (numero_linea,nombre,descripcion,herramientas_requeridas,tiempo_operacion) VALUES
(1,'Est1','Montaje','Llaves',5),
(1,'Est2','Soldadura','Soldador',6),
(2,'Est3','Pintura','Pistola',4),
(2,'Est4','Motor','Herramientas',7),
(3,'Est5','Chasis','Equipo',6),
(3,'Est6','Pruebas','Tester',5),
(4,'Est7','Montaje','Llaves',5),
(5,'Est8','Pintura','Pistola',4),
(6,'Est9','Motor','Herramientas',7),
(7,'Est10','Chasis','Equipo',6),
(8,'Est11','Pruebas','Tester',5),
(9,'Est12','Montaje','Llaves',5),
(10,'Est13','Pintura','Pistola',4),
(11,'Est14','Motor','Herramientas',7),
(12,'Est15','Pruebas','Tester',5);
Use the arrows to find the image where the number of symbols on the top sides of the dice matches the left image exactly (1 of 1)
-- insertar en la tabla empleado los datos correspondientes.

INSERT INTO empleado (nombres,apellido,DNI,puesto,especializacion,numero_linea,turno,fecha_contratacion,evaluacion_desempeño) VALUES
('Juan','Perez','1','Operario','Soldadura',1,'Mañana','2020-01-01',4.5),
('Ana','Gomez','2','Operario','Pintura',2,'Tarde','2021-02-01',4.2),
('Luis','Diaz','3','Supervisor','Motor',3,'Noche','2019-03-01',4.8),
('Maria','Lopez','4','Operario','Montaje',4,'Mañana','2022-01-01',4.0),
('Pedro','Ruiz','5','Operario','Chasis',5,'Tarde','2020-05-01',4.1),
('Jose','Torres','6','Operario','Pruebas',6,'Noche','2021-06-01',4.3),
('Laura','Castro','7','Operario','Soldadura',7,'Mañana','2020-07-01',4.6),
('Miguel','Vega','8','Operario','Pintura',8,'Tarde','2021-08-01',4.4),
('Sofia','Rios','9','Operario','Motor',9,'Noche','2022-09-01',4.2),
('Diego','Mora','10','Operario','Montaje',10,'Mañana','2020-10-01',4.7),
('Paula','Silva','11','Operario','Chasis',11,'Tarde','2021-11-01',4.3),
('Andres','Rey','12','Operario','Pruebas',12,'Noche','2022-12-01',4.1),
('Elena','Navas','13','Operario','Soldadura',13,'Mañana','2020-01-15',4.5),
('Raul','Mejia','14','Operario','Pintura',14,'Tarde','2021-02-15',4.2),
('Camila','Ortega','15','Operario','Motor',15,'Noche','2022-03-15',4.6);


-- insertar en la tabla empleado_habilidad los datos correspondientes.


INSERT INTO empleado_habilidad (numero_empleado, habilidad) VALUES
(1,'Soldadura'),(2,'Pintura'),(3,'Supervisión'),
(4,'Montaje'),(5,'Chasis'),(6,'Pruebas'),
(7,'Soldadura'),(8,'Pintura'),(9,'Motor'),
(10,'Montaje'),(11,'Chasis'),(12,'Pruebas'),
(13,'Soldadura'),(14,'Pintura'),(15,'Motor');

-- insertar en la tabla empleado_habilidad los datos correspondientes.

INSERT INTO proveedores (razon_social,ruc,direccion,telefono,email,contacto,condiciones_pago,tiempo_entrega,evaluacion_calidad) VALUES
('Prov1','111','Dir1','111','a@a.com','Carlos','30 dias',5,4.5),
('Prov2','222','Dir2','222','b@b.com','Ana','30 dias',7,4.2),
('Prov3','333','Dir3','333','c@c.com','Luis','30 dias',6,4.1),
('Prov4','444','Dir4','444','d@d.com','Maria','30 dias',8,4.0),
('Prov5','555','Dir5','555','e@e.com','Pedro','30 dias',9,4.3),
('Prov6','666','Dir6','666','f@f.com','Jose','30 dias',4,4.6),
('Prov7','777','Dir7','777','g@g.com','Laura','30 dias',3,4.7),
('Prov8','888','Dir8','888','h@h.com','Miguel','30 dias',5,4.2),
('Prov9','999','Dir9','999','i@i.com','Sofia','30 dias',6,4.3),
('Prov10','101','Dir10','101','j@j.com','Diego','30 dias',7,4.1),
('Prov11','102','Dir11','102','k@k.com','Paula','30 dias',8,4.0),
('Prov12','103','Dir12','103','l@l.com','Andres','30 dias',5,4.4),
('Prov13','104','Dir13','104','m@m.com','Elena','30 dias',6,4.3),
('Prov14','105','Dir14','105','n@n.com','Raul','30 dias',7,4.2),
('Prov15','106','Dir15','106','o@o.com','Camila','30 dias',9,4.1);

-- insertar en la tabla componente los datos correspondientes.


INSERT INTO componente (descripcion,categoria,especificaciones_tecnicas,codigo_proveedor,tiempo_entrega,costo_unitario,stock_minimo) VALUES
('Motor','Mecanico','Alta potencia',1,5,1000,10),
('Llanta','Rueda','Radial',3,6,200,20),
('Bateria','Electrico','12V',7,4,150,15),
('Freno','Seguridad','ABS',1,5,300,10),
('Filtro','Motor','Aire',3,6,50,30),
('Radiador','Motor','Aluminio',7,4,400,10),
('Aceite','Lubricante','Sintetico',1,5,80,25),
('Bujia','Motor','Iridio',3,6,20,40),
('Alternador','Electrico','12V',7,4,350,10),
('Caja','Transmision','Manual',1,5,900,5),
('Sensor','Electronico','Digital',3,6,60,20),
('Turbo','Motor','Alta presión',7,4,800,5),
('Embrague','Transmision','Kit',1,5,500,8),
('Escape','Sistema','Acero',3,6,250,10),
('Airbag','Seguridad','Frontal',7,4,700,5);

-- insertar en la tabla inventario los datos correspondientes.

INSERT INTO inventario (codigo_componente,cantidad_disponible,ubicacion_almacen,fecha_entrada,calidad) VALUES
(1,5,'A1','2024-03-01','Aprobado'),
(2,30,'A2','2024-03-02','Aprobado'),
(3,10,'A3','2024-03-03','Aprobado'),
(4,8,'A4','2024-03-04','Aprobado'),
(5,50,'A5','2024-03-05','Aprobado'),
(6,7,'A6','2024-03-06','Aprobado'),
(7,20,'A7','2024-03-07','Aprobado'),
(8,60,'A8','2024-03-08','Aprobado'),
(9,9,'A9','2024-03-09','Aprobado'),
(10,4,'A10','2024-03-10','Aprobado'),
(11,25,'A11','2024-03-11','Aprobado'),
(12,3,'A12','2024-03-12','Aprobado'),
(13,6,'A13','2024-03-13','Aprobado'),
(14,15,'A14','2024-03-14','Aprobado'),
(15,2,'A15','2024-03-15','Aprobado');

-- insertar en la tabla orden_compra los datos correspondientes.

INSERT INTO orden_compra (codigo_proveedor, fecha, fecha_entrega, terminos_envio, condiciones_pago, estado) VALUES
(1,'2024-03-01','2024-03-05','Normal','30 dias','Recibido'),
(3,'2024-03-02','2024-03-06','Normal','30 dias','Pendiente'),
(7,'2024-03-03','2024-03-07','Normal','30 dias','Recibido'),
(1,'2024-03-04','2024-03-08','Normal','30 dias','Pendiente'),
(3,'2024-03-05','2024-03-09','Normal','30 dias','Recibido'),
(7,'2024-03-06','2024-03-10','Normal','30 dias','Pendiente'),
(1,'2024-03-07','2024-03-11','Normal','30 dias','Recibido'),
(3,'2024-03-08','2024-03-12','Normal','30 dias','Pendiente'),
(7,'2024-03-09','2024-03-13','Normal','30 dias','Recibido'),
(1,'2024-03-10','2024-03-14','Normal','30 dias','Pendiente'),
(3,'2024-03-11','2024-03-15','Normal','30 dias','Recibido'),
(7,'2024-03-12','2024-03-16','Normal','30 dias','Pendiente'),
(1,'2024-03-13','2024-03-17','Normal','30 dias','Recibido'),
(3,'2024-03-14','2024-03-18','Normal','30 dias','Pendiente'),
(7,'2024-03-15','2024-03-19','Normal','30 dias','Recibido');

-- insertar en la tabla especificacion_orden_compra los datos correspondientes.

INSERT INTO especificacion_orden_compra (numero_orden_compra, codigo_componente, cantidad, precio) VALUES
(1,1,10,1000),(2,2,20,200),(3,3,15,150),
(4,4,10,300),(5,5,25,50),(6,6,8,400),
(7,7,20,80),(8,8,30,20),(9,9,10,350),
(10,10,5,900),(11,11,15,60),(12,12,5,800),
(13,13,8,500),(14,14,12,250),(15,15,6,700);

-- insertar en la tabla orden_produccion los datos correspondientes.

INSERT INTO orden_produccion (codigo_modelo, fecha_emision, cantidad_producir, fecha_inicio, fecha_finalizacion, prioridad, estado_actual) VALUES
(1,'2024-03-01',10,'2024-03-02','2024-03-05','Alta','En proceso'),
(2,'2024-03-02',20,'2024-03-03','2024-03-06','Media','Pendiente'),
(3,'2024-03-03',15,'2024-03-04','2024-03-07','Alta','En proceso'),
(4,'2024-03-04',12,'2024-03-05','2024-03-08','Baja','Pendiente'),
(5,'2024-03-05',18,'2024-03-06','2024-03-09','Media','Finalizada'),
(6,'2024-03-06',14,'2024-03-07','2024-03-10','Alta','En proceso'),
(7,'2024-03-07',16,'2024-03-08','2024-03-11','Media','Pendiente'),
(8,'2024-03-08',22,'2024-03-09','2024-03-12','Alta','En proceso'),
(9,'2024-03-09',11,'2024-03-10','2024-03-13','Baja','Finalizada'),
(10,'2024-03-10',19,'2024-03-11','2024-03-14','Media','En proceso'),
(11,'2024-03-11',13,'2024-03-12','2024-03-15','Alta','Pendiente'),
(12,'2024-03-12',17,'2024-03-13','2024-03-16','Media','En proceso'),
(13,'2024-03-13',21,'2024-03-14','2024-03-17','Alta','Pendiente'),
(14,'2024-03-14',23,'2024-03-15','2024-03-18','Media','Finalizada'),
(15,'2024-03-15',25,'2024-03-16','2024-03-19','Alta','En proceso');

-- insertar en la tabla orden_produccion los datos correspondientes.

INSERT INTO vehiculo (vin, codigo_modelo, codigo_version, color, caracteristicas, fecha_inicio, fecha_finalizacion, numero_linea, resultado_final) VALUES
('VIN001',1,1,'Rojo','Base','2024-03-02','2024-03-05',1,'OK'),
('VIN002',2,2,'Azul','Full','2024-03-03','2024-03-06',2,'OK'),
('VIN003',3,3,'Negro','Sport','2024-03-04','2024-03-07',3,'OK'),
('VIN004',4,4,'Blanco','Luxury','2024-03-05','2024-03-08',4,'OK'),
('VIN005',5,5,'Rojo','Base','2024-03-06','2024-03-09',5,'OK'),
('VIN006',6,6,'Azul','Full','2024-03-07','2024-03-10',6,'OK'),
('VIN007',7,7,'Negro','Sport','2024-03-08','2024-03-11',7,'OK'),
('VIN008',8,8,'Blanco','Luxury','2024-03-09','2024-03-12',8,'OK'),
('VIN009',9,9,'Rojo','Base','2024-03-10','2024-03-13',9,'OK'),
('VIN010',10,10,'Azul','Full','2024-03-11','2024-03-14',10,'OK'),
('VIN011',11,11,'Negro','Sport','2024-03-12','2024-03-15',11,'OK'),
('VIN012',12,12,'Blanco','Luxury','2024-03-13','2024-03-16',12,'OK'),
('VIN013',13,13,'Rojo','Base','2024-03-14','2024-03-17',13,'OK'),
('VIN014',14,14,'Azul','Full','2024-03-15','2024-03-18',14,'OK'),
('VIN015',15,15,'Negro','Sport','2024-03-16','2024-03-19',15,'OK');

-- insertar en la tabla control_calidad los datos correspondientes.

INSERT INTO control_calidad (numero_produccion, VIN, codigo_estacion, fecha_hora, inspector, parametros_evaluados, resultados, defectos_encontrados, decision_final) VALUES
(1,'VIN001',1,'2024-03-05 10:00','Inspector1','OK','Aprobado','Ninguno','Liberado'),
(2,'VIN002',2,'2024-03-06 11:00','Inspector2','OK','Aprobado','Ninguno','Liberado'),
(3,'VIN003',3,'2024-03-07 12:00','Inspector3','OK','Aprobado','Ninguno','Liberado'),
(4,'VIN004',4,'2024-03-08 13:00','Inspector4','OK','Aprobado','Ninguno','Liberado'),
(5,'VIN005',5,'2024-03-09 14:00','Inspector5','OK','Aprobado','Ninguno','Liberado'),
(6,'VIN006',6,'2024-03-10 15:00','Inspector6','OK','Aprobado','Ninguno','Liberado'),
(7,'VIN007',7,'2024-03-11 16:00','Inspector7','OK','Aprobado','Ninguno','Liberado'),
(8,'VIN008',8,'2024-03-12 17:00','Inspector8','OK','Aprobado','Ninguno','Liberado'),
(9,'VIN009',9,'2024-03-13 18:00','Inspector9','OK','Aprobado','Ninguno','Liberado'),
(10,'VIN010',10,'2024-03-14 19:00','Inspector10','OK','Aprobado','Ninguno','Liberado'),
(11,'VIN011',11,'2024-03-15 20:00','Inspector11','OK','Aprobado','Ninguno','Liberado'),
(12,'VIN012',12,'2024-03-16 21:00','Inspector12','OK','Aprobado','Ninguno','Liberado'),
(13,'VIN013',13,'2024-03-17 22:00','Inspector13','OK','Aprobado','Ninguno','Liberado'),
(14,'VIN014',14,'2024-03-18 23:00','Inspector14','OK','Aprobado','Ninguno','Liberado'),
(15,'VIN015',15,'2024-03-19 08:00','Inspector15','OK','Aprobado','Ninguno','Liberado');

-- insertar en la tabla modelo_componente los datos correspondientes.

INSERT INTO modelo_componente (codigo_modelo, codigo_componente, componentes_requeridos) VALUES
(1,1,1),(2,2,4),(3,3,1),(4,4,2),(5,5,2),
(6,6,1),(7,7,3),(8,8,4),(9,9,1),(10,10,1),
(11,11,2),(12,12,1),(13,13,1),(14,14,2),(15,15,2);


-- insertar en la tabla estacion_empleado los datos correspondientes.

INSERT INTO estacion_empleado (codigo_estacion, numero_empleado) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15);


--    consultas de acuerdo a las preguntas soliciradas

   -- 1. ¿Cuáles son todas las estaciones de una línea de producción específica?

SELECT * FROM estacion_trabajo
WHERE numero_linea;  -- se pone el numero de la linea que se desea saber numero_linea=1;2 etc

   --  2. ¿Qué componentes tienen stock menor al mínimo requerido?

SELECT c.descripcion, i.cantidad_disponible, c.stock_minimo
FROM componente c
JOIN inventario i ON c.codigo_componente = i.codigo_componente
WHERE i.cantidad_disponible < c.stock_minimo;


    
    -- 3. ¿Cuáles son los vehículos fabricados en cierta línea y de determinado modelo?

SELECT * FROM vehiculo
WHERE numero_linea = 5 AND codigo_modelo = 5;


    -- 4. ¿Qué empleados no pertenecen a las líneas de producción 3 o 4?

SELECT * FROM empleado
WHERE numero_linea NOT IN (3,4);

    -- 5. ¿Cuáles son las órdenes de producción programadas en marzo de 2024?

SELECT * FROM orden_produccion
WHERE fecha_inicio BETWEEN '2024-03-01' AND '2024-03-31';

    -- 6. ¿Qué componentes son de los proveedores 1, 3 o 7?

SELECT * FROM componente
WHERE codigo_proveedor IN (1,3,7);

    -- 7. ¿Cuáles son los modelos de vehículos con características "híbrido" o "eléctrico" en su descripción?

SELECT * FROM modelo_vehiculo
WHERE especificaciones_tecnicas LIKE 'Híbrido' OR especificaciones_tecnicas LIKE 'Eléctrico';

    -- 8. ¿Qué controles de calidad ya tienen resultado final registrado?

SELECT * FROM control_calidad
WHERE decision_final IS NOT NULL;

    -- 9. ¿Cuáles son los proveedores ordenados por tiempo de entrega promedio ascendente?

SELECT * FROM proveedores
ORDER BY tiempo_entrega ASC;

    -- 10. ¿Cuál es el tiempo promedio de ensamblaje por modelo de vehículo?

SELECT AVG (tiempo_ensamble) AS promedio
FROM modelo_vehiculo;
