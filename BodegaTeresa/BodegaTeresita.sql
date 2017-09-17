CREATE DATABASE BodegaTeresita
USE BodegaTeresita

CREATE TABLE TBProductos(
IdProductos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(50),
PrecioUnitario DECIMAL(4,2),
Stock INT
)