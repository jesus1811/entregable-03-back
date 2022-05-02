# Base de datos
```
CREATE DATABASE bd_montalvo;
USE bd_montalvo;

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
idTipoServicio int,
foreign key (idTipoServicio) references TipoServicio(idTipoServicio),
precio float,
idProfesional int,
foreign key(idProfesional) references Profesional(idProfesional),
foto varchar(100),
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
select * from Cliente;
INSERT INTO TipoServicio(nombreTipoServicio,urlServicio)VALUES("Terapias","https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/terapias.png?alt=media&token=401ac6c7-aaf8-4f9a-87f8-4e44d97098d6");
INSERT INTO TipoServicio(nombreTipoServicio,urlServicio)VALUES("Tegnologia","https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/tecnologias.png?alt=media&token=a6f98190-96ea-45b6-9771-3c58cd1c1f6c");
INSERT INTO TipoServicio(nombreTipoServicio,urlServicio)VALUES("Educacion","https://firebasestorage.googleapis.com/v0/b/crud-image-1acb8.appspot.com/o/educacion.png?alt=media&token=8a485ba3-d8b2-4a6f-9f59-cc836a416c1a");


INSERT INTO Pais(nombrePais) VALUES ("Peru");
INSERT INTO Pais(nombrePais) VALUES ("Brasil");
INSERT INTO Pais(nombrePais) VALUES ("Argentina");
INSERT INTO Pais(nombrePais) VALUES ("Colombia");
INSERT INTO Pais(nombrePais) VALUES ("venezuela");

INSERT INTO Profesional(
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
VALUES ("12345678","Jadhira","Rodriguez","jadhira123@gmail.com","123456","987654321",1,"lima-caceres",1);

INSERT INTO Profesional(
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
VALUES ("46467843","Estefany","Rodriguez","estafany123@gmail.com","123456","984564566",1,"lima-caceres",1);

INSERT INTO Servicio (NombreServicio,idTipoServicio,precio,idProfesional,foto,estado)VALUES("terapia de piernas",1,45.5,1,"url",1);
INSERT INTO Servicio(NombreServicio,idTipoServicio,precio,idProfesional,foto,estado)VALUES("Reparacion de computadora",2,30,1,"url",1);
INSERT INTO Servicio(NombreServicio,idTipoServicio,precio,idProfesional,foto,estado)VALUES("terapia de brazos",1,50,1,"url",1);
INSERT INTO Servicio(NombreServicio,idTipoServicio,precio,idProfesional,foto,estado)VALUES("formateo de pc",2,20,2,"url",1);
select * from Cliente;
/* store procedures*/
/*cliente*/
CREATE PROCEDURE SP_editar_contraseña(
_idCliente int,
_passwordCliente varchar(50)
)
UPDATE Cliente SET passwordCliente=_passwordCliente WHERE idCliente=_idCliente;
CREATE PROCEDURE SP_validar_cliente(
_correoCliente varchar(50),
_passwordCliente varchar(50)
)
SELECT * FROM Cliente WHERE correoCliente=_correoCliente AND passwordCliente=_passwordCliente;
CREATE PROCEDURE SP_registrar_cliente(
_DNI varchar(8),
_nombreCliente varchar(50),
_apellidoCliente varchar(50),
_correoCliente varchar(50),
_passwordCliente varchar(50),
_celularCliente varchar(9),
_urlFoto varchar(500)
)
INSERT INTO Cliente(DNI,nombreCliente,apellidoCliente,correoCliente,passwordCliente,celularCliente,urlFoto,estado) VALUES (_DNI,_nombreCliente,_apellidoCliente,_correoCliente,_passwordCliente,_celularCliente,_urlFoto,1);
/*Profesionales*/
CREATE PROCEDURE SP_validar_profesional(
_correoProfesional varchar(50),
_password varchar(50)
)
SELECT idProfesional,DNI,nombreProfesional,apellidoProfesional,correoProfesional,celularProfesional,nombrePais FROM Profesional 
INNER JOIN Pais on Profesional.idPais = Pais.idPais
WHERE correoProfesional=_correoProfesional AND password=_password;

CREATE PROCEDURE SP_listar_profesionales()
SELECT DNI,nombreProfesional,apellidoProfesional,correoProfesional,celularProfesional,nombrePais,direccionDomicilio from Profesional
INNER JOIN Pais on Profesional.idPais = Pais.idPais where estado=1;

/*servicio*/
CREATE PROCEDURE SP_listar_servicios()
SELECT NombreServicio,NombreTipoServicio,foto,precio,nombreProfesional,apellidoProfesional,nombrePais FROM Servicio
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
INSERT INTO Servicio (NombreServicio,idTipoServicio,precio,idProfesional,foto,estado)
VALUES(_NombreServicio,_idTipoServicio,_precio,_idProfesional,_foto,1);


CREATE PROCEDURE SP_listar_tipoServicio()
SELECT * from TipoServicio;

CREATE PROCEDURE SP_listar_servicioId(
_idProfesional int
)
SELECT NombreServicio,NombreTipoServicio,foto,precio,nombreProfesional,apellidoProfesional,nombrePais FROM Servicio
INNER JOIN TipoServicio on Servicio.idTipoServicio = TipoServicio.idTipoServicio
INNER JOIN Profesional on Servicio.idProfesional = Profesional.idProfesional
INNER JOIN Pais on Profesional.idPais = Pais.idPais WHERE Profesional.idProfesional=_idProfesional;

```
