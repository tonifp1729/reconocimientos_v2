
-- Tipos de alumno
CREATE TABLE tiposalumno (
    idTipoAlumno char(1) NOT NULL,
    descripcionTipo varchar(50) NOT NULL,
    PRIMARY KEY (idTipoAlumno)
);

-- Tabla alumno
CREATE TABLE alumno (
    idAlumno tinyint unsigned NOT NULL AUTO_INCREMENT, 
    nombre varchar(80) NOT NULL,
    correo varchar(255) NOT NULL,
    contrasenia varchar(100) NOT NULL,
    webReconocimiento varchar(50),
    tipoAlumno char(1) NOT NULL,
    CONSTRAINT fk_tipo_alumno FOREIGN KEY (tipoAlumno) REFERENCES tiposalumno(idTipoAlumno),
    CONSTRAINT pk_usuario PRIMARY KEY (idAlumno),
    CONSTRAINT correo_unico UNIQUE (correo),
    CONSTRAINT WEB_unica UNIQUE (webReconocimiento)
);

-- Tabla reconocimiento
CREATE TABLE reconocimiento (
    idReconocimiento smallint unsigned AUTO_INCREMENT,
    momento varchar(100) NOT NULL,
    descripcion varchar(255) NOT NULL,
    idAlumEnvia tinyint unsigned NOT NULL,
    idAlumRecibe tinyint unsigned NOT NULL,
	CONSTRAINT pk_recon PRIMARY KEY (idReconocimiento),
    CONSTRAINT fk_alumno_env FOREIGN KEY (idAlumEnvia) REFERENCES alumno(idAlumno),
    CONSTRAINT fk_alumno_rec FOREIGN KEY (idAlumRecibe) REFERENCES alumno(idAlumno)
);