create database b8tnmbvalnva3ejnhh47;

USE b8tnmbvalnva3ejnhh47;

CREATE TABLE Pais (
    idPais int primary key auto_increment,
    nombrePais varchar(50)
);

CREATE TABLE Cliente(
    idCliente int primary key auto_increment,
    DNI varchar(8),
    nombreCliente varchar(50),
    apellidoCliente varchar(50),
    correoCliente varchar(50),
    passwordCliente varchar(50),
    celularCliente varchar(9),
    urlFoto varchar(500),
    estado int
);

CREATE TABLE MetodoPago (
    idMetodoPago int primary key auto_increment,
    plataformaDePago varchar(50)
);

CREATE TABLE TipoServicio(
    idTipoServicio int primary key auto_increment,
    nombreTipoServicio varchar(50),
    urlServicio varchar(500)
);

CREATE TABLE Profesional(
    idProfesional int primary key auto_increment,
    DNI varchar(8),
    nombreProfesional varchar(50),
    apellidoProfesional varchar(50),
    correoProfesional varchar(50),
    password varchar(50),
    celularProfesional varchar(9),
    idPais int,
    foreign key (idPais) references Pais(idPais),
    direccionDomicilio varchar(50),
    estado int
);

CREATE TABLE Servicio (
    idServicio int primary key auto_increment,
    NombreServicio varchar(50),
    descripcion text,
    idTipoServicio int,
    foreign key (idTipoServicio) references TipoServicio(idTipoServicio),
    precio float,
    idProfesional int,
    foreign key(idProfesional) references Profesional(idProfesional),
    foto varchar(500),
    estado int
);

CREATE TABLE ComprobanteElectronico(
    idComprobanteElectronico int primary key auto_increment,
    fecha varchar(50),
    estado int,
    idCliente int,
    foreign key (idCliente) references Cliente(idCliente),
    idMetodoPago int,
    foreign key (idMetodoPago) references MetodoPago(idMetodoPago)
);

CREATE TABLE Detalle(
    idDetalleVenta int primary key auto_increment,
    idComprobanteElectronico int,
    foreign key (idComprobanteElectronico) references ComprobanteElectronico(idComprobanteElectronico),
    idServicio int,
    foreign key (idServicio) references Servicio(idServicio)
);

/*datos predeterminados*/
INSERT INTO
    TipoServicio(nombreTipoServicio, urlServicio)
VALUES
(
        "Asistencias terapeúticas",
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/terapias.png?alt=media&token=401ac6c7-aaf8-4f9a-87f8-4e44d97098d6"
    );

INSERT INTO
    TipoServicio(nombreTipoServicio, urlServicio)
VALUES
(
        "Capacitaciones tecnológicas",
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/tecnologias.png?alt=media&token=a6f98190-96ea-45b6-9771-3c58cd1c1f6c"
    );

INSERT INTO
    TipoServicio(nombreTipoServicio, urlServicio)
VALUES
(
        "Educación",
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/educacion.png?alt=media&token=8a485ba3-d8b2-4a6f-9f59-cc836a416c1a"
    );

INSERT INTO
    Pais(nombrePais)
VALUES
    ("Perú");

INSERT INTO
    Pais(nombrePais)
VALUES
    ("Brasil");

INSERT INTO
    Pais(nombrePais)
VALUES
    ("Argentina");

INSERT INTO
    Pais(nombrePais)
VALUES
    ("Colombia");

INSERT INTO
    Pais(nombrePais)
VALUES
    ("Venezuela");

INSERT INTO
    Profesional(
        DNI,
        nombreProfesional,
        apellidoProfesional,
        correoProfesional,
        password,
        celularProfesional,
        idPais,
        direccionDomicilio,
        estado
    )
VALUES
    (
        "12345678",
        "Jadhira",
        "Rodriguez",
        "jadhira123@gmail.com",
        "123456",
        "987654321",
        1,
        "lima-caceres",
        1
    );

INSERT INTO
    Profesional(
        DNI,
        nombreProfesional,
        apellidoProfesional,
        correoProfesional,
        password,
        celularProfesional,
        idPais,
        direccionDomicilio,
        estado
    )
VALUES
    (
        "46467843",
        "Estefany",
        "Rodriguez",
        "estafany123@gmail.com",
        "123456",
        "984564566",
        1,
        "lima-caceres",
        1
    );

INSERT INTO
    Servicio (
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Terapia Reumatologíca","lorem lorem lorem lorem", 1, 55.5, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/reumatologia.png?alt=media&token=66db304e-b3ed-42b2-b467-2ffb2595094e", 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Terapia Dermatológica","lorem lorem lorem lorem", 1, 39, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/dermatologia.png?alt=media&token=0d3b85d0-af8a-4cc6-8e1a-d6a533b88a0c", 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Terapia Geriátrica","lorem lorem lorem lorem", 1, 35, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/geriatrica.png?alt=media&token=45d731d2-1712-4ed6-adc0-d96917b48502", 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Capacitación de redes","lorem lorem lorem lorem", 2, 30, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/redes.jpg?alt=media&token=f14d176d-27d6-4a56-a05d-cde08c45780f", 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Capacitación de programación basica","lorem lorem lorem lorem", 2, 80, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/programacion.jpg?alt=media&token=3e579c20-c93c-42ac-bd2f-df2c597cff55", 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Capacitación de base de datos","lorem lorem lorem lorem", 2, 90, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/baseDeDatos.png?alt=media&token=de9421f0-e5b9-4270-922f-599e7837a87f", 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Curso de Marketing","lorem lorem lorem lorem", 3, 50, 2, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/marketing.png?alt=media&token=897ca5b9-8a4b-4fb9-80cb-9e5758636c64", 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Curso Empresarial","lorem lorem lorem lorem", 3, 46, 2, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/empresarial.png?alt=media&token=00435b4d-229c-47e1-95bc-90c6d75e9e39", 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
("Curso de Administración","lorem lorem lorem lorem", 3, 53, 2, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/administracion.PNG?alt=media&token=98bbbe87-741a-459d-9737-70c2b2eba840", 1);
select
    *
from
    Cliente;

/* store procedures*/
/*cliente*/
CREATE PROCEDURE SP_editar_contraseña(
    _idCliente int,
    _passwordCliente varchar(50)
)
UPDATE
    Cliente
SET
    passwordCliente = _passwordCliente
WHERE
    idCliente = _idCliente;

CREATE PROCEDURE SP_validar_cliente(
    _correoCliente varchar(50),
    _passwordCliente varchar(50)
)
SELECT
    *
FROM
    Cliente
WHERE
    correoCliente = _correoCliente
    AND passwordCliente = _passwordCliente;

CREATE PROCEDURE SP_registrar_cliente(
    _DNI varchar(8),
    _nombreCliente varchar(50),
    _apellidoCliente varchar(50),
    _correoCliente varchar(50),
    _passwordCliente varchar(50),
    _celularCliente varchar(9),
    _urlFoto varchar(500)
)
INSERT INTO
    Cliente(
        DNI,
        nombreCliente,
        apellidoCliente,
        correoCliente,
        passwordCliente,
        celularCliente,
        urlFoto,
        estado
    )
VALUES
    (
        _DNI,
        _nombreCliente,
        _apellidoCliente,
        _correoCliente,
        _passwordCliente,
        _celularCliente,
        _urlFoto,
        1
    );

/*Profesionales*/
CREATE PROCEDURE SP_validar_profesional(
    _correoProfesional varchar(50),
    _password varchar(50)
)
SELECT
    idProfesional,
    DNI,
    nombreProfesional,
    apellidoProfesional,
    correoProfesional,
    celularProfesional,
    nombrePais
FROM
    Profesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais
WHERE
    correoProfesional = _correoProfesional
    AND password = _password;

CREATE PROCEDURE SP_listar_profesionales()
SELECT
    DNI,
    nombreProfesional,
    apellidoProfesional,
    correoProfesional,
    celularProfesional,
    nombrePais,
    direccionDomicilio
from
    Profesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais
where
    estado = 1;

/*servicio*/
CREATE PROCEDURE SP_listar_servicios()
SELECT
idServicio,
    NombreServicio,
    NombreTipoServicio,
    descripcion,
    foto,
    precio,
    nombreProfesional,
    apellidoProfesional,
    nombrePais
FROM
    Servicio
    INNER JOIN TipoServicio on Servicio.idTipoServicio = TipoServicio.idTipoServicio
    INNER JOIN Profesional on Servicio.idProfesional = Profesional.idProfesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais;

CREATE PROCEDURE SP_registrar_servicio(
    _NombreServicio varchar(50),
    _idTipoServicio int,
    _precio float,
    _idProfesional int,
    _foto varchar(500)
)
INSERT INTO
    Servicio (
        NombreServicio,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        estado
    )
VALUES
(
        _NombreServicio,
        _idTipoServicio,
        _precio,
        _idProfesional,
        _foto,
        1
    );

CREATE PROCEDURE SP_listar_servicioId(_idServicio int)
SELECT
idServicio,
    NombreServicio,
    NombreTipoServicio,
    descripcion,
    foto,
    precio,
    nombreProfesional,
    apellidoProfesional,
    nombrePais
FROM
    Servicio
    INNER JOIN TipoServicio on Servicio.idTipoServicio = TipoServicio.idTipoServicio
    INNER JOIN Profesional on Servicio.idProfesional = Profesional.idProfesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais where idServicio =_idServicio;
CREATE PROCEDURE SP_listar_antecedentesServicios(
_idProfesional int
)
SELECT
idServicio,
    NombreServicio,
    NombreTipoServicio,
    descripcion,
    foto,
    precio,
    nombreProfesional,
    apellidoProfesional,
    nombrePais
FROM
    Servicio
    INNER JOIN TipoServicio on Servicio.idTipoServicio = TipoServicio.idTipoServicio
    INNER JOIN Profesional on Servicio.idProfesional = Profesional.idProfesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais WHERE Profesional.idProfesional = _idProfesional;

CREATE PROCEDURE SP_listar_tipoServicio()
SELECT
    *
from
    TipoServicio;