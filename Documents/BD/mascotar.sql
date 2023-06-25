CREATE DATABASE mascotar;
USE mascotar;
  
  CREATE TABLE usuario (
  dni_usuario int(8) NOT NULL,
  nombre_usuario VARCHAR(45) NOT NULL,
  contrasena VARCHAR(45) NOT NULL,
  telefono_usuario VARCHAR(45) NOT NULL,
  email_usuario VARCHAR(45) NOT NULL,
  direccion_usuario VARCHAR(45) NOT NULL,
  ciudad_usuario VARCHAR(45) NOT NULL,
  provincia_usuario VARCHAR(45) NOT NULL,
  PRIMARY KEY (dni_usuario)
  );
  
  CREATE TABLE productos (
  id int not null auto_increment,
  nombre varchar(30) not null,
  precio float not null,
  descripcion varchar(100) not null,
  linkImagen varchar(100) not null,
  PRIMARY KEY (id)
  );
   CREATE TABLE carrito (
  id int not null auto_increment,
  dni_usuario int not null,
  id_productos int not null,
  PRIMARY KEY (id),
  FOREIGN KEY (dni_usuario) REFERENCES usuario(dni_usuario),
  FOREIGN KEY (id_productos) REFERENCES productos(id)
  );
  
  CREATE TABLE metodopago (
  id int not null auto_increment,
  dni_usuario int not null,
  id_carrito int not null,
  monto int not null,
  PRIMARY KEY (id),
  FOREIGN KEY (dni_usuario) REFERENCES usuario(dni_usuario),
  FOREIGN KEY (id_carrito) REFERENCES carrito(id)
  );
  