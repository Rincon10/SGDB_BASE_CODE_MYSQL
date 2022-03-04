/**
CREACION DE TABLAS
*/

CREATE TABLE Materias( 
    sigla VARCHAR(10) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    creditos INTEGER(2) NOT NULL,
	CONSTRAINT PK_Materia PRIMARY KEY (sigla),
	CONSTRAINT UK_Materia UNIQUE KEY (nombre)
);

CREATE TABLE Grupos( 
	idGrupo int NOT NULL AUTO_INCREMENT, 
    numeroGrupo INTEGER(3) NOT NULL
    idMateria VARCHAR(10) NOT NULL,
	CONSTRAINT PK_Grupo PRIMARY KEY (idGrupo),
	CONSTRAINT UK_Grupo UNIQUE KEY (idMateria, numeroGrupo),
	CONSTRAINT FK_IdMateria FOREIGN KEY (idMateria) REFERENCES Materias(sigla)
);

CREATE TABLE Estudiantes( 
    id INTEGER(15) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
	correo VARCHAR(25) ,
	semestre INTEGER(2) NOT NULL,
	CONSTRAINT PK_Estudiante PRIMARY KEY (id),
	CONSTRAINT UK_Correo UNIQUE KEY (correo)
);

CREATE TABLE Salones( 
	idSalon int NOT NULL AUTO_INCREMENT, 
    edificio CHAR(1) NOT NULL,
    salon INTEGER(3),
	CONSTRAINT PK_Salon PRIMARY KEY (idSalon),
	CONSTRAINT UK_Salon UNIQUE KEY (edificio, salon)
);

CREATE TABLE SalonGrupo( 
    idGrupoFk INTEGER(11) NOT NULL, 
	idSalonFk INTEGER(11) NOT NULL, 
	CONSTRAINT PK_SalonGrupo PRIMARY KEY (idGrupoFk, idSalonFk),
	CONSTRAINT FK_IdSalon FOREIGN KEY (idSalonFk) REFERENCES Salones(idSalon),
	CONSTRAINT FK_IdGrupo FOREIGN KEY (idGrupoFk) REFERENCES Grupos(idGrupo)
);


CREATE TABLE GrupoEstudiante( 
    idGrupoFk INTEGER(11) NOT NULL, 
	idEstudianteFk INTEGER(15) NOT NULL,
	CONSTRAINT PK_GrupoEstudiante PRIMARY KEY (idGrupoFk, idEstudianteFk),
	CONSTRAINT FK_IdEstudiante FOREIGN KEY (idEstudianteFk) REFERENCES Estudiantes(id),
	CONSTRAINT FK_IdGrupo FOREIGN KEY (idGrupoFk) REFERENCES Grupos(idGrupo)
);