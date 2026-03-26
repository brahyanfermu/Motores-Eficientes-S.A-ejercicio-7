-- Crea la base de datos
CREATE DATABASE Autofactory;
-- usa la base de datos
USE Autofactory;

-- Crea la tabla modelo_vehiculo

CREATE TABLE modelo_vehiculo ( 
codigo_modelo int PRIMARY KEY auto_increment,
nombre varchar (100),
categoria varchar (100),
especificaciones_tecnicas varchar (250),
tiempo_ensamble int 
);

-- crea la tabla version_vehiculo

CREATE TABLE version_vehiculo( 
codigo_version int PRIMARY KEY auto_increment,
codigo_modelo int,
version_disponible varchar (250),
FOREIGN KEY (codigo_modelo) REFERENCES modelo_vehiculo (codigo_modelo)
); 

-- crea la tabla linea_produccion

CREATE TABLE linea_produccion ( 
numero_linea int PRIMARY KEY auto_increment,
tipo_vehiculo varchar (50),
capacidad_diaria int,
numero_estaciones int,
supervisor varchar (100),
turno_activo varchar (50),
estado_operativo varchar (50)
);

-- crea la tabla estacion_trabajo
 
CREATE TABLE estacion_trabajo (  
codigo_estacion int PRIMARY KEY auto_increment,
numero_linea int,
nombre varchar (100),
descripcion varchar (250),
herramientas_requeridas varchar (250),
tiempo_operacion int,
FOREIGN KEY (numero_linea) REFERENCES linea_produccion (numero_linea)
); 

-- crea la tabla empleado

CREATE TABLE empleado (  
numero_empleado int PRIMARY KEY auto_increment,
nombres varchar (50),
apellido varchar (50),
DNI varchar (10),
puesto varchar (50),
especializacion varchar (100),
numero_linea int,
turno varchar (50),
fecha_contratacion DATE, 
evaluacion_desempeño decimal (3,2),
FOREIGN KEY (numero_linea) REFERENCES linea_produccion (numero_linea)
);



-- crea la tabla empleado_habilidad

CREATE TABLE empleado_habilidad (  
numero_empleado int,
habilidad varchar (100),
PRIMARY KEY (numero_empleado,habilidad),
FOREIGN KEY (numero_empleado) REFERENCES empleado (numero_empleado)
);

-- crea la tabla proveedores

CREATE TABLE proveedores (
codigo_proveedor int PRIMARY KEY auto_increment,
razon_social varchar (255),
RUC varchar(50),
direccion varchar (255),
telefono varchar (50),
email varchar (50),
contacto varchar (100),
condiciones_pago varchar (100),
tiempo_entrega int,
evaluacion_calidad decimal (3,2)
); 

-- crea la tabla componente

CREATE TABLE componente (
codigo_componente int PRIMARY KEY auto_increment,
descripcion varchar (255),
categoria varchar (100),
especificaciones_tecnicas text,
codigo_proveedor int,
tiempo_entrega int,
costo_unitario decimal (10,2),
stock_minimo int,
FOREIGN KEY (codigo_proveedor) REFERENCES proveedores (codigo_proveedor)
); 

-- crea la tabla inventario

CREATE TABLE inventario (
codigo_inventario int PRIMARY KEY auto_increment,
cantidad_disponible int,
ubicacion_almacen varchar(150),
fecha_entrada DATE,
calidad varchar (150),
codigo_componente int,
FOREIGN KEY (codigo_componente) REFERENCES componente (codigo_componente)
);

-- crea la tabla orden_compra

CREATE TABLE orden_compra (
numero_orden_compra int PRIMARY KEY auto_increment,
fecha DATE,
codigo_proveedor int,
fecha_entrega DATE,
terminos_envio varchar (255),
condiciones_pago varchar (255),
estado varchar (50),
FOREIGN KEY (codigo_proveedor) REFERENCES proveedores (codigo_proveedor)
); 

-- crea la tabla especificacion_orden_compra

CREATE TABLE especificacion_orden_compra (
numero_orden_compra int,
codigo_componente int,
cantidad int,
precio decimal (10,2),
PRIMARY KEY (numero_orden_compra ,codigo_componente),
FOREIGN KEY (numero_orden_compra ) REFERENCES orden_compra (numero_orden_compra ),
FOREIGN KEY (codigo_componente) REFERENCES componente (codigo_componente)
); 

-- crea tabla orden_produccion

CREATE TABLE orden_produccion (
numero_produccion int PRIMARY KEY auto_increment,
fecha_emision DATE,
codigo_modelo int,
cantidad_producir int,
fecha_inicio DATE,
fecha_finalizacion DATE,
prioridad varchar (100),
estado_actual varchar (100),
FOREIGN KEY (codigo_modelo) REFERENCES modelo_vehiculo (codigo_modelo)
);

-- crea tabla vehiculo

CREATE TABLE vehiculo (
VIN varchar (50) PRIMARY KEY,
codigo_modelo int,
codigo_version int,
color varchar (50),
caracteristicas varchar (255),
fecha_inicio DATE,
fecha_finalizacion DATE,
numero_linea int,
resultado_final varchar (50),
FOREIGN KEY (codigo_modelo) REFERENCES modelo_vehiculo (codigo_modelo),
FOREIGN KEY (codigo_version) REFERENCES version_vehiculo (codigo_version),
FOREIGN KEY (numero_linea) REFERENCES linea_produccion (numero_linea)
); 

-- crea tabla control_calidad

CREATE TABLE control_calidad(
codigo_control int PRIMARY KEY auto_increment,
numero_produccion int,
VIN varchar (50),
codigo_estacion int,
fecha_hora datetime,
inspector varchar (100),
parametros_evaluados varchar (500),
resultados varchar (255),
defectos_encontrados varchar (500),
decision_final varchar (255),
FOREIGN KEY (numero_produccion) REFERENCES orden_produccion (numero_produccion),
FOREIGN KEY (VIN) REFERENCES vehiculo (VIN),
FOREIGN KEY (codigo_estacion) REFERENCES estacion_trabajo (codigo_estacion)
); 

-- crea tabla pibot modelo_componente

CREATE TABLE modelo_componente (
codigo_modelo int,
codigo_componente int,
componentes_requeridos int,
PRIMARY KEY (codigo_modelo ,codigo_componente),
FOREIGN KEY (codigo_modelo) REFERENCES modelo_vehiculo (codigo_modelo),
FOREIGN KEY (codigo_componente) REFERENCES componente (codigo_componente)
); 

-- crea tabla pibot estacion_empleado

CREATE TABLE estacion_empleado (
codigo_estacion int,
numero_empleado int,
PRIMARY KEY (codigo_estacion ,numero_empleado),
FOREIGN KEY (codigo_estacion) REFERENCES estacion_trabajo (codigo_estacion),
FOREIGN KEY (numero_empleado) REFERENCES empleado (numero_empleado)
);










