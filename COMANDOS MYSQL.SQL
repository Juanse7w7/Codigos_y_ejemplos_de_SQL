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






