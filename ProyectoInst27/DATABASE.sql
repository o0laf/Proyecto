create DATABASE Ferreteria; 
use Ferreteria; 

create table USUARIOS ( 
USU_ID int not null  auto_increment, 
USU_NOMBRE varchar(50) not null, 
USU_APELLIDO varchar(50) not null, 
USU_DIRECCION varchar(50) not null, 
PRIMARY KEY (USU_ID) 
); 

create table TIPOS_DE_PRODUCTOS ( 
TDP_ID int not null auto_increment, 
TDP_NOMBRE varchar(50) not null, 
PRIMARY KEY (TDP_ID) 
); 

create table PRODUCTOS (
PROD_ID int not null auto_increment, 
PROD_NOMBRE varchar(50) not null, 
PROD_PRECIO int not null, 
PROD_TDP_ID int not null, 
PRIMARY KEY (PROD_ID), 
FOREIGN KEY (PROD_TDP_ID) REFERENCES TIPOS_DE_PRODUCTOS (TDP_ID) 
);

INSERT INTO USUARIOS (USU_NOMBRE, USU_APELLIDO, USU_DIRECCION) VALUES 
('Juan', 'Martinez', ‘Mitre 525); 
INSERT INTO USUARIOS (USU_NOMBRE, USU_APELLIDO, USU_DIRECCION) VALUES 
('María', 'Suarez', ‘Belgrano 127); 

INSERT INTO TIPOS_DE_PRODUCTOS (TDP_NOMBRE) VALUES 
(‘Herramientas’); 
INSERT INTO TIPOS_DE_PRODUCTOS (TDP_NOMBRE) VALUES 
(‘Materiales de construccion’); 

INSERT INTO PRODUCTOS (PROD_NOMBRE, PROD_PRECIO, PROD_TDP_ID) VALUES

('Martillo', ‘$5000’, 1),
('Ladrillo', ‘$2500’, 3),

UPDATE USUARIOS
SET USU_NOMBRE = 'José', USU_APELLIDO = 'Lopez', USU_DIRECCION = 'Alvear 230'
WHERE USU_ID = 1;