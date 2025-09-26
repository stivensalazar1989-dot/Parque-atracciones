CREATE DATABASE parque_de_atracciones;

USE parque_de_atracciones;



CREATE TABLE visitantes(
id INT  AUTO_INCREMENT PRIMARY KEY,
DNI VARCHAR (15)UNIQUE NOT NULL,
edad INT CHECK (edad >=0),
telefono VARCHAR (10) NOT NULL,
correo_electronico VARCHAR (100)UNIQUE NOT NULL
);

DESCRIBE visitantes;


CREATE TABLE atracciones(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
capacidad_max VARCHAR (3) NOT NULL,
altura_min_requerida DECIMAL (4,2)NOT NULL,
estado VARCHAR (20) NOT NULL
);



DESCRIBE atracciones;


CREATE TABLE Acceso_Atracciones(
id INT AUTO_INCREMENT,
id_entrada VARCHAR (20),
id_atraccion VARCHAR (20),
PRIMARY KEY (id)
);

DESCRIBE Acceso_Atracciones;


CREATE TABLE cargos(
id_cargo INT AUTO_INCREMENT, 
horarios_tabajo VARCHAR (20) NOT NULL,
nombre_cargo VARCHAR (20) UNIQUE NOT NULL,
PRIMARY KEY (id_cargo)
);


DESCRIBE cargos;



CREATE TABLE entradas(
id INT AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL DEFAULT CURRENT_DATE,
tipo VARCHAR (20) NOT NULL,
precio DECIMAL (10,2) NOT NULL CHECK (precio>=0),
DNI_visitante VARCHAR(15)  NOT NULL,
FOREIGN KEY (DNI_visitante) REFERENCES visitantes(DNI) 
);


DESCRIBE entradas;



CREATE TABLE empleados(
id INT AUTO_INCREMENT,
nombre VARCHAR (30) NOT NULL, 
id_cargo INT,
PRIMARY KEY (id)
);

ALTER TABLE empleados
ADD CONSTRAINT FK_cargoempleado
FOREIGN KEY (id_cargo) REFERENCES cargos(id_cargo);

DESCRIBE empleados;

DESCRIBE visitantes;
DESCRIBE entradas;
DESCRIBE atracciones;
DESCRIBE acceso_atracciones;
DESCRIBE cargos;
DESCRIBE empleados;



