create database if not exists dbPruebas;
use dbPruebas;
create table pruebaDocker (
    id_articulo int(5),
    nombre varchar(40),
    precio int(5),
    cantidad int(5)
);
  
insert into pruebaDocker (id_articulo, nombre, precio, cantidad)
values(1, "coche", 500, 2);