create database ejercicio_1;

use ejercicio_1;

CREATE TABLE Alumno
(
  cod_matricula INT NOT NULL UNIQUE auto_increment,
  nombre varchar(90) NOT NULL,
  dni INT NOT NULL,
  fecha_nac date NOT NULL,
  email varchar(90) NOT NULL,
  PRIMARY KEY (cod_matricula)
);

CREATE TABLE Curso
(
  cod_curso INT NOT NULL unique auto_increment,
  nombre varchar(90) NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE Profesor
(
  profesor_id INT NOT NULL unique auto_increment,
  especialidad varchar(90) NOT NULL,
  nombre varchar(90) NOT NULL,
  email varchar(90) NOT NULL,
  PRIMARY KEY (profesor_id)
);

CREATE TABLE está_inscripto
(
  cod_matricula INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_matricula, cod_curso),
  FOREIGN KEY (cod_matricula) REFERENCES Alumno(cod_matricula),
  FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso)
);

CREATE TABLE imparte
(
  cod_curso INT NOT NULL,
  profesor_id INT NOT NULL,
  PRIMARY KEY (cod_curso, profesor_id),
  FOREIGN KEY (cod_curso) REFERENCES Curso(cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES Profesor(profesor_id)
);

insert into alumno (nombre, dni, fecha_nac, email) values ("Esteban Gutierrez", 44924358 , "2000-4-9","estebGut@gmail.com");
insert into alumno (nombre, dni, fecha_nac, email) values ("Benegas Matías", 44013358 , "2002-2-22","crosserain@gmail.com");
insert into alumno (nombre, dni, fecha_nac, email) values ("Pérez Sabrina", 40013158 , "2001-10-12","rainbowSabri@gmail.com");

insert into curso (nombre) values ("Programación");
insert into curso (nombre) values ("Base de Datos");
insert into curso (nombre) values ("Front-End");

insert into está_inscripto (cod_matricula, cod_curso) values (1,1);
insert into está_inscripto (cod_matricula, cod_curso) values (2,2);
insert into está_inscripto (cod_matricula, cod_curso) values (3,3);

insert into profesor (especialidad, nombre, email) values ("Programación", "Lucas Podkowa", "proHacker@gmail.com");
insert into profesor (especialidad, nombre, email) values ("Base de Datos", "Gollum Sméagol", "miAnillo@gmail.com");
insert into profesor (especialidad, nombre, email) values ("Fron-End", "Legolas del Bosque", "blackArrow@gmail.com");

insert into imparte (cod_curso, profesor_id) values (1,1);
insert into imparte (cod_curso, profesor_id) values (2,2);
insert into imparte (cod_curso, profesor_id) values (3,3);