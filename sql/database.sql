CREATE DATABASE b8tnmbvalnva3ejnhh47;
USE b8tnmbvalnva3ejnhh47;

CREATE TABLE Pais (
    idPais int primary key auto_increment,
    nombrePais varchar(50)
);	
CREATE TABLE Valoracion(
idValoracion int primary key auto_increment,
comentario varchar(255),
idServicio int,
idCliente int
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
    urlFoto varchar(500),
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
    descuento float,
    estado int
);

CREATE TABLE ComprobanteElectronico(
    idComprobanteElectronico int primary key auto_increment,
    fecha varchar(50),
    estado int,
    idCliente int,
    foreign key (idCliente) references Cliente(idCliente),
    idMetodoPago int,
    foreign key (idMetodoPago) references MetodoPago(idMetodoPago),
    idServicio int,
    foreign key(idServicio) references Servicio(idServicio)
);
/*
CREATE TABLE Detalle(
    idDetalleVenta int primary key auto_increment,
    idComprobanteElectronico int,
    foreign key (idComprobanteElectronico) references ComprobanteElectronico(idComprobanteElectronico),
    idServicio int,
    foreign key (idServicio) references Servicio(idServicio)
);
*/
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
        urlFoto,
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
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/jadhira.jpg?alt=media&token=e514db0b-49e0-4930-8270-7de34996c923",
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
        urlFoto,
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
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/estefany.jpg?alt=media&token=71bcc817-b93d-44d4-89d9-d99ad42c18f5",
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
        urlFoto,
        idPais,
        direccionDomicilio,
        estado
    )
VALUES
    (
        "62421350",
        "Roberto",
        "Moll",
        "RobertoMol@gmail.coml",
        "123456",
        "974164594",
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/roberto.jfif?alt=media&token=be69491c-8fc7-4776-a609-4dd08c7ebc69",
        2,
        "parana",
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
        urlFoto,
        idPais,
        direccionDomicilio,
        estado
    )
VALUES
    (
        "66523453",
        "Gianella",
        "Neyra",
        "GianellaNeyra@gmail.com",
        "123456",
        "934352386",
        "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/luisa.jfif?alt=media&token=e5dd052b-e080-497a-b9f5-c992746e0320",
        1,
        "miraflores",
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
        descuento,
        estado
    )
VALUES
("Terapia Reumatologíca","La Fisioterapia Traumatológica es una especialidad indicada para el tratamiento de las lesiones del sistema musculo esquelético, óseo y ligamentoso de las diferentes partes del cuerpo humano.", 1, 55.5, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/reumatologia.png?alt=media&token=66db304e-b3ed-42b2-b467-2ffb2595094e",0, 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Terapia Dermatológica","Estos tratamientos están enfocados a rejuvenecer la piel, ya sea del rostro, el cuello, el escote o las manos. En función de las características y las necesidades de cada piel, desde el Centro Dermatológico", 1, 39, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/dermatologia.png?alt=media&token=0d3b85d0-af8a-4cc6-8e1a-d6a533b88a0c",0, 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Terapia Geriátrica","La rehabilitación geriátrica es el conjunto de actividades sociales encaminadas a buscar la mejor incorporación del anciano a la macrosociedad y microsociedad.", 1, 35, 1, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/geriatrica.jpg?alt=media&token=45d731d2-1712-4ed6-adc0-d96917b48502",0, 1);
INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Capacitación de redes","Este curso de redes está dirigido a personas que posean o no conocimientos de informática pero que deseen adquirir conocimientos en el área de: diseño, instalación, configuración y solución de problemas de redes informáticas", 2, 30, 2, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/redes.jpg?alt=media&token=f14d176d-27d6-4a56-a05d-cde08c45780f",10, 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Capacitación de programación basica","La programación consiste en escribir lo que debe hacer la computadora para resolver un problema concreto utilizando un lenguaje de programación. En este apartado se introducen algunos conceptos básicos sobre los elementos que involucra la programación.", 2, 80, 3, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/programacion.jpg?alt=media&token=3e579c20-c93c-42ac-bd2f-df2c597cff55",0, 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Capacitación de base de datos","En este curso de base de datos, aprenderás aplicar los procesos asociados a la creación, elaboración, gestión, automatización y clasificación de datos e información, haciendo uso de distintos sistemas informáticos.", 2, 90, 3, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/baseDeDatos.png?alt=media&token=de9421f0-e5b9-4270-922f-599e7837a87f",0, 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Curso de Marketing","El curso brinda conocimientos acerca de las estrategias de promoción de productos y/o servicios, el uso de plataformas y otros medios virtuales. Aprenderán a utilizar las herramientas digitales como medio de promoción de su propia actividad profesional.", 3, 50, 4, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/marketing.png?alt=media&token=897ca5b9-8a4b-4fb9-80cb-9e5758636c64",0, 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Curso Empresarial","Curso enfocados en personas interesadas en aprender sobre administración de empresas. También están enfocados en personas que ya se desempeñen en una organización y deseen aprender sobre gestión empresarial.", 3, 46, 4, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/empresarial.png?alt=media&token=00435b4d-229c-47e1-95bc-90c6d75e9e39",0, 1);

INSERT INTO
    Servicio(
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        idProfesional,
        foto,
        descuento,
        estado
    )
VALUES
("Curso de Administración","En este curso de administración aprenderás a llevar a cabo la planeación, organización, dirección y control de los recursos de una empresa; mediante el estudio del liderazgo y la gestión administrativa, logística y financiera.", 3, 53, 4, "https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/administracion.png?alt=media&token=98bbbe87-741a-459d-9737-70c2b2eba840",0, 1);
INSERT INTO Cliente(DNI,nombreCliente,apellidoCliente,correoCliente,passwordCliente,celularCliente,urlFoto,estado) values(
"74434089","Jesus","Ayarza","jayarza1811@gmail.com","123456","936129604","https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/jesudevImage.jpg?alt=media&token=449b3048-6b97-42b5-8436-9f926747cc05",1);
INSERT INTO Cliente(DNI,nombreCliente,apellidoCliente,correoCliente,passwordCliente,celularCliente,urlFoto,estado) values(
"72030566","Cristina","Advincola","cris@gmail.com","123456","960433408","https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/IMG_20220307_160635_107.webp?alt=media&token=449b3048-6b97-42b5-8436-9f926747cc05",1);


INSERT INTO MetodoPago(plataformaDePago) values ("Yape");
INSERT INTO MetodoPago(plataformaDePago) values ("Plin");

INSERT INTO Valoracion(comentario,idServicio,idCliente) values("tu curso es bien feo por mi madre",1,2);
INSERT INTO Valoracion(comentario,idServicio,idCliente) values("tu curso es buenoe",1,2);

INSERT INTO Valoracion(comentario,idServicio,idCliente) values("hola",2,2);
INSERT INTO Valoracion(comentario,idServicio,idCliente) values("mundo",2,2);

/*
INSERT INTO ComprobanteElectronico(fecha,estado,idCliente,idMetodoPago) values("2022-05-26",1,1,1);
INSERT INTO ComprobanteElectronico(fecha,estado,idCliente,idMetodoPago) values("2022-05-26",1,1,2);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (1,7);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (1,5);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (1,1);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (2,1);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (2,2);
INSERT INTO Detalle(idComprobanteElectronico,idServicio) values (2,3);
*/
/*SELECT nombreServicio,descripcion,foto,nombreTipoServicio,precio,nombreProfesional,apellidoProfesional,urlFoto,fecha,plataformaDePago
FROM Detalle
INNER JOIN ComprobanteElectronico ON Detalle.idComprobanteElectronico = ComprobanteElectronico.idComprobanteElectronico
INNER JOIN */
/*
CREATE PROCEDURE SP_listar_comprobanteElectronico(
_idCliente int
)
SELECT idComprobanteElectronico,fecha,Cliente.idCliente,nombreCliente,apellidoCliente,plataformaDePago FROM ComprobanteElectronico
INNER JOIN Cliente ON ComprobanteElectronico.idCliente = Cliente.idCliente
INNER JOIN MetodoPago ON ComprobanteElectronico.idMetodoPago = MetodoPago.idMetodoPago WHERE ComprobanteElectronico.estado = 1 and Cliente.idCliente=_idCliente;
*/
/*cliente*/
/* store procedures*/
CREATE PROCEDURE SP_agregar_compra(
_fecha varchar(50),
_idCliente int,
_idMetodoPago int,
_idServicio int
)
INSERT INTO ComprobanteElectronico(Fecha,estado,idCliente,idMetodoPago,idServicio) VALUES(_fecha,1,_idCliente,_idMetodoPago,_idServicio);
CREATE PROCEDURE SP_listar_comprobanteElectronico(
_idCliente int)
SELECT idComprobanteElectronico,fecha,plataformaDePago,idTipoServicio,NombreServicio FROM ComprobanteElectronico
INNER JOIN MetodoPago ON ComprobanteElectronico.idMetodoPago = MetodoPago.idMetodoPago
INNER JOIN Servicio ON ComprobanteElectronico.idServicio = Servicio.idServicio WHERE idCliente = _idCliente;
CREATE PROCEDURE SP_listar_comprobanteElectronicobyId(
_idComprobanteElectronico int)
SELECT idComprobanteElectronico,fecha,plataformaDePago,nombreTipoServicio,NombreServicio,descripcion,precio,descuento,foto,Profesional.idProfesional,nombreProfesional,apellidoProfesional,direccionDomicilio,celularProfesional,Profesional.urlFoto as fotoProfesional,Cliente.idCliente,nombreCliente,apellidoCliente,celularCliente,Cliente.urlFoto FROM ComprobanteElectronico
INNER JOIN MetodoPago ON ComprobanteElectronico.idMetodoPago = MetodoPago.idMetodoPago
INNER JOIN Servicio ON ComprobanteElectronico.idServicio = Servicio.idServicio
INNER JOIN TipoServicio ON Servicio.idTipoServicio = TipoServicio.idTipoServicio
INNER JOIN Profesional ON Servicio.idProfesional = Profesional.idProfesional
INNER JOIN Cliente ON ComprobanteElectronico.idCliente = Cliente.idCliente
 WHERE idComprobanteElectronico = _idComprobanteElectronico;

CREATE PROCEDURE SP_editar_Profesional(
    _idProfesional int,
    _nombreProfesional varchar(50),
    _apellidoProfesional varchar(50),
    _correoProfesional varchar(50),
    _password varchar(50),
    _celularProfesional varchar(9),
    _idPais int,
    _direccionDomicilio varchar(500)  
)
UPDATE
    Profesional
SET
    nombreProfesional = _nombreProfesional,
    apellidoProfesional = _apellidoProfesional,
    correoProfesional = _correoProfesional,
    password = _password,
    celularProfesional = _celularProfesional,
    idPais = _idPais,
    direccionDomicilio = _direccionDomicilio
WHERE
    idProfesional = _idProfesional;
    CREATE PROCEDURE SP_registrar_profesional(
    _DNI varchar(8),
    _nombreProfesional varchar(50),
    _apellidoProfesional varchar(50),
    _correoProfesional varchar(50),
    _password varchar(50),
    _celularProfesional varchar(9),
    _urlFoto varchar(500),
    _idPais int,
    _direccionDomicilio varchar(500)    
)
INSERT INTO
    Profesional(
        DNI,
        nombreProfesional,
        apellidoProfesional,
        correoProfesional,
        password,
        celularProfesional,
        urlFoto,
        idPais,
        direccionDomicilio,
        estado
    )
VALUES
    (
		_DNI,
		_nombreProfesional,
		_apellidoProfesional,
		_correoProfesional,
		_password,
		_celularProfesional,
		_urlFoto,
		_idPais,
		_direccionDomicilio,
        1
    );
CREATE PROCEDURE SP_editar_cliente(
    _idCliente int,
    _nombreCliente varchar(50),
    _apellidoCliente varchar(50),
    _correoCliente varchar(60),
    _passwordCliente varchar(50),
    _celularCliente char(9)
)
UPDATE
    Cliente
SET
nombreCliente = _nombreCliente,
apellidoCliente= _apellidoCliente,
correoCliente =_correoCliente,
passwordCliente = _passwordCliente,
celularCliente =_celularCliente
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
    urlFoto,
    nombrePais,
    direccionDomicilio
FROM
    Profesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais
WHERE
    correoProfesional = _correoProfesional
    AND password = _password;
CREATE PROCEDURE SP_listar_profesionales()
SELECT
idProfesional,
    DNI,
    nombreProfesional,
    apellidoProfesional,
    correoProfesional,
    celularProfesional,
    urlFoto,
    nombrePais,
    direccionDomicilio
from
    Profesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais
where
    estado = 1;
    CREATE PROCEDURE SP_listar_profesionalId(_idProfesional int)
    SELECT
    DNI,
    nombreProfesional,
    apellidoProfesional,
    correoProfesional,
    celularProfesional,
    urlFoto,
    nombrePais,
    direccionDomicilio
from
    Profesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais
where
    estado = 1 and idProfesional = _idProfesional;
    
/*servicio*/
CREATE PROCEDURE SP_listar_servicios()
SELECT
idServicio,
    NombreServicio,
    NombreTipoServicio,
    descripcion,
    foto,
    precio,
    descuento,
    Profesional.idProfesional,
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
    _descripcion varchar(500),
    _idTipoServicio int,
    _precio float,
    _idProfesional int,
    _foto varchar(500)
)
INSERT INTO
    Servicio (
        NombreServicio,
        descripcion,
        idTipoServicio,
        precio,
        descuento,
        idProfesional,
        foto,
        estado
    )
VALUES 
(
        _NombreServicio,
        _descripcion,
        _idTipoServicio,
        _precio,
        0,
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
    descuento,
    Profesional.idProfesional,
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
    descuento,
    nombreProfesional,
    apellidoProfesional,
    nombrePais
FROM
    Servicio
    INNER JOIN TipoServicio on Servicio.idTipoServicio = TipoServicio.idTipoServicio
    INNER JOIN Profesional on Servicio.idProfesional = Profesional.idProfesional
    INNER JOIN Pais on Profesional.idPais = Pais.idPais WHERE Profesional.idProfesional =_idProfesional;

CREATE PROCEDURE SP_listar_tipoServicio()
SELECT
    *
from
    TipoServicio;
CREATE PROCEDURE SP_listar_paises()
SELECT * FROM Pais;
CREATE PROCEDURE SP_listar_clienteForProfesional(
_idProfesional int)
SELECT DISTINCT Cliente.idCliente,Cliente.urlFoto,nombreCliente,apellidoCliente FROM ComprobanteElectronico
INNER JOIN Cliente ON ComprobanteElectronico.idCliente = Cliente.idCliente
INNER JOIN Servicio ON ComprobanteElectronico.idServicio = Servicio.idServicio
INNER JOIN Profesional ON Servicio.idProfesional = Profesional.idProfesional
WHERE Profesional.idProfesional =_idProfesional;
/* ...*/
Create procedure SP_editar_servicio(
id int,
nombre varchar(50),
descr varchar(500),
prec float,
idpro int,
_descuento float)
update Servicio
set NombreServicio=nombre,descripcion=descr, precio=prec, idProfesional=idpro, descuento=_descuento
where idServicio=id;
CREATE PROCEDURE SP_listar_valoracion(
_idServicio int
)
SELECT idValoracion,comentario,Cliente.idCliente,nombreCliente,apellidoCliente from Valoracion
INNER JOIN Servicio ON Servicio.idServicio = Valoracion.idServicio
INNER JOIN Cliente ON Cliente.idCliente = Valoracion.idCliente
 WHERE Servicio.idServicio= _idServicio;