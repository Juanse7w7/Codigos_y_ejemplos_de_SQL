Creación de una base de datos:
CREATE DATABASE  nombre_base_datos 
para crear una base de datos


DROP DATABASE nombre_base_datos
para eliminar una base de datos



CREATE TABLE nombre_tabla ();

EJEMPLO: para crear una tabla 

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    celular VARCHAR(20)
);

Modificacion de una tabla 
ALTER TABLE nombre_tabla   ADD (nombre_columna tipo de dato reglas);


ejemplo: para agregar una columna nueva
ALTER TABLE clientes
ADD ciudad VARCHAR(200) NOT NULL;


                           DROP(nombre_columna);
ejemplo: para eliminar una columna
ALTER TABLE clientes
DROP ciudad

                           MODIFY(nombre_columna tipo_dato, reglas);


ejemplo: para modificar
ALTER  TABLE clientes
MODIFY celular VARCHAR(20) NOT NULL;

                           RENAME (nuevo_nombre_tabla);


ejemplo: para cambiar el nombre de la tabla
ALTER TABLE clientes
RENAME tbl_clientes;



Manipulacion de datos 
C INSERT
R SELECT
U UPDATE
D DELETE

Insertar base de datos 
INSERT INTO tabla (columna_1.columna_2.,.,.,);
VALUES (valor_1,valor_2.,.,.,);
ejemplo: insertar informacion en las tablas 


INSERT INTO tbl_clientes (nombre, apellido, correo, fecha_nacimiento, celular, ciudad)
VALUES ('Juanse', 'Sepulveda', 'juanse@gmail.com', '2001-02-14', '3003564589', 'Bello'),
('Pepe', 'Perez', 'Pepito@gmail.com', '2000-05-23', '300024568', 'Bello'),
('Juan', 'Martinez', 'juan@gmail.com', '2000-03-04', '300456897', 'Bello');

Multiples datos 
VALUES (valor_1,valor_2,.,.,),


Actualizar informacion

UPDATE nombre_tabla 
SET columna_1 = valor_1
    columna_2 = valor_2



WHERE  condicion 
        id_cliente = 1234
            1   = falso
            2   = falso
            3   = falso
            1234 = 

ejemplo:

UPDATE tbl_clientes 
SET ciudad = 'Cali'
WHERE id_cliente = 2;

ejemplo 2

UPDATE tbl_clientes 
SET nombre = 'Goku'
WHERE id_cliente = 3;


Eliminar DATEFROMPARTS

DELETE from nombre_tabla 
WHERE condicion 

ejemplo:1

DELETE FROM tbl_clientes
WHERE id_cliente = 3



Recuperar datos o consultas(READ)

SELECT  columna_1, columna_2 FROM nombre_tabla
                * --> todos 
ejemplo: Con todos los de la lista

SELECT nombre, apellido, celular FROM tbl_clientes

ejemplo : con el filtro 

SELECT nombre, apellido, celular FROM tbl_clientes
WHERE id_cliente = 4

SELECT nombre, apellido, celular FROM tbl_clientes
WHERE ciudad = 'Medellín'   |los caracteres simpre va en comillas ''|

SELECT nombre, apellido, celular, ciudad FROM tbl_clientes
WHERE ciudad = 'Cali' AND fecha_nacimiento > '2000-01-01'

de forma ordenada en asendente 

SELECT * FROM tbl_clientes ORDER BY fecha_nacimiento ASC;
SELECT * FROM tbl_clientes ORDER BY fecha_nacimiento DESC;


contador  de cantidad de datos 

COUNT
COUNT(columna)

SELECT COUNT(columna) AS alias FROM nombre_tabla WHERE condicion 
SELECT * FROM nombre_tabla 

SELECT COUNT(ciudad) AS PersonasXciudad FROM tbl_clientes WHERE ciudad = 'Medellín';


SUM
SUM (columna_numerica)

SELECT SUM(columna_#) AS alias FROM nombre_tabla

SELECT SUM(id_cliente) AS suma_cedulas FROM tbl_clientes;

ejemplo con venta total de MES

SELECT SUM(precio_total) AS total_ventas FROM toltal:factura WHERE fecha >= '2024-01-01' AND fecha <= '2024-01-31'


Promedio ( AVG )
AVG(columna_numerica)

SELECT AVG(columna_numerica) AS alias FROM nombre_tabla WHERE condicion

SELECT AVG(id_cliente) AS promedio_cedulas FROM tbl_clientes;


MIN --> MINIMO 
MIN(columna_numerica)

SELECT MIN(columna_numerica) AS ALIAS FROM nombre_tabla 

SELECT MIN(id_cliente) AS ID_MENOR FROM tbl_clientes;

MAX
MAX(columna_numerica) 


SELECT MAX(columna_numerica) AS ALIAS FROM nombre_tabla

SELECT MAX(id_cliente) AS ID_MAYOR FROM tbl_clientes;


GROUP BY (agrupar por)

SELECT columna_agrupacion Fucion_agrupar(columna) FROM nombre_tabla GROUP BY columna_agrupacion;


ejemplo: 


SELECT ciudad, COUNT(*) AS PersonaXCiudad FROM tbl_clientes GROUP BY ciudad;


HAVING 

SELECT columna_agrupacion, Fucion_agrupar( Numerico, SUM, AVG, MIN, MAX)(columna_numerica) AS alias FROM nombre_tabla GROUP BY columna_agrupacion HAVING condicion; 

ejemplo;

SELECT ciudad, SUM(id_cliente) AS Suma_idcliente FROM tbl_clientes GROUP BY ciudad;

SELECT ciudad, SUM(id_cliente) AS Suma_idcliente FROM tbl_clientes GROUP BY ciudad HAVING Suma_idcliente > 25


