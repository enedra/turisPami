CREATE DATABASE IF NOT EXISTS turisPami;

use turisPami;

CREATE TABLE IF NOT EXISTS jubilados (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  name VARCHAR(56) NOT NULL,
  dni int,
  direccion varchar(56),
  telefono varchar(56),
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS fichaMedicas (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  jubilado_id int(11),
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS enfermedades (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  nombre varchar(56),
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS fichaMedicas_enfermedades (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  fichaMedica_id int(11),
  enfermedad_id int(11),
  cronica boolean,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS medicamentos (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  nombre varchar(56),
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS fichaMedicas_medicamentos (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  fichaMedica_id int(11),
  medicamento_id int(11),
  frecuencia varchar(56),
  alergia boolean,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE IF NOT EXISTS agrupacionJubilados (
  id int(11) NOT NULL auto_increment PRIMARY KEY,
  jubilado_id int(11),
  nombre varchar(56),
  direccion varchar(56),
  telefono varchar(56),
  created_at DATETIME,
  updated_at DATETIME
);


CREATE TABLE IF NOT exists Destinos (
	id int(11) not null auto_increment primary key,
    disponivilidad Boolean,
    codPostal Integer,
    nombre varchar(56),
    provincia varchar(56),
    created_at datetime,
    updated_at datetime
);

CREATE TABLE if not exists Empleados (
	id int(11) not null auto_increment primary key,
    dni int(11) NOT NULL,
    nombre varchar(56) NOT NULL,
    direccion varchar(56) NOT NULL,
    telefono varchar(56) NOT NULL,
    localidadOrigen varchar(56),
    turno varchar(56),
    gerente boolean,
    adicional int(11),
    created_at datetime,
    updated_at datetime
);

CREATE TABLE if not exists atracciones (
    id int(11) NOT NULL auto_increment PRIMARY KEY,
    destino_id int(11),
    nombre varchar(56),
    descripcion varchar(56),
    costoEstimado int(11),
    created_at DATETIME,
    updated_at DATETIME
);

CREATE TABLE if not exists PaqueteTuristicos (
    id int(11) not null auto_increment primary key,
    empleado_id int(11),
    fechaSalida date NOT NULL,
    fechaFin date NOT NULL,
    monto int(11) NOT NULL,
    created_at datetime,
    updated_at datetime
);
CREATE TABLE if not exists paqueteTuristicos_destinos (
    id int(11) not null auto_increment primary key,
    paqueteTuristico_id int(11),
    destino_id int(11),
    costo int(11) NOT NULL,
    duracion int(11) NOT NULL,
    distancia int(11) NOT NULL,
    created_at datetime,
    updated_at datetime
);

create table if not exists pagos (
	id int(11) not null auto_increment primary key,
    monto Integer NOT NULL,
    created_at datetime,
    updated_at datetime
);

CREATE TABLE if not exists Efectivos (
    id int(11) not null auto_increment primary key,
    pago_id int(11),
    descuento Integer NOT NULL,
    created_at datetime,
    updated_at datetime
);

CREATE TABLE if not exists planCuotas (
    id int(11) not null auto_increment primary key,
    pago_id int(11),
    fInicio date NOT NULL,
    fFin date NOT NULL,
    created_at datetime,
    updated_at datetime
);

CREATE TABLE if not exists cuotas (
	id int(11) not null auto_increment primary key,
    planCuota_id int(11),
    monto int(11) NOT NULL,
    fecha date NOT NULL,
    estado varchar(56) NOT NULL,
    created_at datetime,
    updated_at datetime
);
