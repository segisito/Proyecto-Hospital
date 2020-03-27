-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2020 a las 5:20:48
-- Versión del servidor: 10.1.8-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';
SET time_zone = '+00:00';



/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hospital`
--

DROP SCHEMA IF EXISTS Hospital;
CREATE SCHEMA Hospital;
USE Hospital;

DROP TABLE IF EXISTS Tratamientos;
CREATE TABLE Tratamientos (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  Descripcion varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS Enfermedades;
CREATE TABLE Enfermedades (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  virulencia varchar(45) NOT NULL,
  sintomas varchar(255) NOT NULL,
  idTratamiento int(50),FOREIGN KEY (idTratamiento) REFERENCES Tratamientos(id) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS Pacientes;
CREATE TABLE Pacientes (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  edad int(2) NOT NULL,
  sexo varchar(6) NOT NULL,
  dni varchar(9) NOT NULL ,
  fechaNacimiento date NOT NULL,
  procedencia varchar(50) NOT NULL,
  contacto int(9) NOT NULL,
  contactoFamiliar int(9) NOT NULL,
  idEnfermedad int(50),FOREIGN KEY (idEnfermedad) REFERENCES Enfermedades(id) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS Medicos;
CREATE TABLE Medicos (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  edad int(2) NOT NULL,
  sexo varchar(6) NOT NULL,
  dni varchar(9) NOT NULL ,
  fechaNacimiento date NOT NULL,
  contacto int(9) NOT NULL,
  especialidad varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS Enfermeras;
CREATE TABLE Enfermeras (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  edad int(2) NOT NULL,
  sexo varchar(6) NOT NULL,
  dni varchar(9) NOT NULL ,
  fechaNacimiento date NOT NULL,
  contacto int(9) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS Consultas;
CREATE TABLE Consultas (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  edad int(2) NOT NULL,
  motivo longtext NOT NULL,
  urgente boolean,
  fechaCita date NOT NULL,
  idPaciente int(50),FOREIGN KEY (idPaciente) REFERENCES Pacientes(id) ON UPDATE CASCADE,
  idMedico int(50),FOREIGN KEY (idMedico) REFERENCES Medicos(id) ON UPDATE CASCADE,
  idEnfermera int(50),FOREIGN KEY (idEnfermera) REFERENCES Enfermeras(id) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS Historial;
CREATE TABLE Historial (
  id int(50) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(45) NOT NULL,
  apellido varchar(45) NOT NULL,
  edad int(2) NOT NULL,
  sexo varchar(6) NOT NULL,
  dni varchar(9) NOT NULL ,
  fechaNacimiento date NOT NULL,
  idPaciente int(50),FOREIGN KEY (idPaciente) REFERENCES Pacientes(id) ON UPDATE CASCADE,
  idEnfermedad int(50),FOREIGN KEY (idEnfermedad) REFERENCES Enfermedades(id) ON UPDATE CASCADE,
  idTratamiento int(50),FOREIGN KEY (idTratamiento) REFERENCES Tratamientos(id) ON UPDATE CASCADE,   
  idMedico int(50),FOREIGN KEY (idMedico) REFERENCES Medicos(id) ON UPDATE CASCADE,
  idEnfermera int(50),FOREIGN KEY (idEnfermera) REFERENCES Enfermeras(id) ON UPDATE CASCADE,
  idConsulta int(50),FOREIGN KEY (idConsulta) REFERENCES Consultas(id) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla Pacientes
--

INSERT INTO Pacientes (id,nombre,apellido,edad,sexo,dni,fechaNacimiento,procedencia,contacto,contactoFamiliar) VALUES
(1,'Pedro' ,'Pica Piedra',45,'Hombre','123456789P','2000-02-03','Casa',123456789,123456789);

--
-- Índices para tablas volcadas



/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
