create database ejercicio_2;
use ejercicio_2;

CREATE TABLE pais
(
  pais_id INT NOT NULL unique auto_increment,
  nombre_pais varchar(50) NOT NULL,
  PRIMARY KEY (pais_id)
);

CREATE TABLE provincia
(
  provincia_id INT NOT NULL unique auto_increment,
  nombre_provincia varchar(50) NOT NULL,
  pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (pais_id) REFERENCES pais(pais_id)
);

CREATE TABLE localidad
(
  codigo_localidad INT NOT NULL unique auto_increment,
  nombre varchar(50) NOT NULL,
  codigo_postal varchar(50) NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (codigo_localidad),
  FOREIGN KEY (provincia_id) REFERENCES provincia(provincia_id)
);

CREATE TABLE empleado
(
  empleado_id INT NOT NULL unique auto_increment,
  dni INT NOT NULL,
  nombre varchar(50) NOT NULL,
  telefono varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  fecha_alta date NOT NULL,
  codigo_localidad INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (codigo_localidad) REFERENCES localidad(codigo_localidad)
);

insert into pais (nombre_pais) values ("Argentina");
insert into pais (nombre_pais) values ("Brasil");
insert into pais (nombre_pais) values ("Uruguay");

insert into provincia (nombre_provincia, pais_id) values ("Misiones", 1);
insert into provincia (nombre_provincia, pais_id) values ("Paraná", 2);
insert into provincia (nombre_provincia, pais_id) values ("Soriano", 3);

insert into localidad (nombre, codigo_postal, provincia_id) values ("Posadas", "3300", 1);
insert into localidad (nombre, codigo_postal, provincia_id) values ("Curitiba", "80000-82999", 2);
insert into localidad (nombre, codigo_postal, provincia_id) values ("Mercedes", "75000", 3);

insert into empleado (dni, nombre, telefono, email, fecha_alta, codigo_localidad) values (40547234, "Matías Benegas", "54 3764 112284","crosserain@gmail.com", "2021-10-17", 1);
insert into empleado (dni, nombre, telefono, email, fecha_alta, codigo_localidad) values (35987823, "Roberto Musso", "598 2204 5199","cuartetodeNos@gmail.com", "2010-04-12", 2);
insert into empleado (dni, nombre, telefono, email, fecha_alta, codigo_localidad) values (103035834, "Ronaldinho Gaúcho", "55 33 95243 7627","2002worldcup@gmail.com", "2018-01-16", 3);