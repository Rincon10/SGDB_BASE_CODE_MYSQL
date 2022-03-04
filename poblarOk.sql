/**
Poblacion de tablas 
*/

/* Estudiantes*/
INSERT INTO Estudiantes 
VALUES(1003823073,'Iván Camilo', 'Rincón Saavedra', null, 10);

INSERT INTO Estudiantes 
VALUES(1234567890,'Leonardo', 'Galeano', null, 10);


/* Materias*/

INSERT INTO Materias
VALUES('POOB','Programacion Orientada....',4);

INSERT INTO Materias
VALUES('MBDA','Modelo de bases de datos',4);

/* Salones*/

INSERT INTO Salones(edificio,salon)
VALUES('G',111);

INSERT INTO Salones(edificio,salon)
VALUES('G',112);

INSERT INTO Salones(edificio,salon)
VALUES('F',111);

INSERT INTO Salones(edificio,salon)
VALUES('F',112);



/* Grupo*/


INSERT INTO Grupos(numeroGrupo, idMateria)
VALUES(1,'POOB');

INSERT INTO Grupos(numeroGrupo, idMateria)
VALUES(2,'POOB');

INSERT INTO Grupos(numeroGrupo, idMateria)
VALUES(1,'MBDA');

INSERT INTO Grupos(numeroGrupo, idMateria)
VALUES(2,'MBDA');

/* GrupoEstudiante*/

INSERT INTO GrupoEstudiante
VALUES(4,1003823073);

INSERT INTO GrupoEstudiante
VALUES(7,1003823073);

INSERT INTO GrupoEstudiante
VALUES(4,1234567890);

/* SalonGrupo*/

INSERT INTO SalonGrupo
VALUES(4,1);
