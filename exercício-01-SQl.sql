create database if not exists Condominio;
use Condominio;
create table edificio(
CodEdificio integer not null,
Endereco varchar(50) not null,
primary key (CodEdificio)
);
create table Apartamento(
CodEdificio integer not null,
NumeroApartamento integer not null,
AreaApartamento double not null,
primary key (NumeroApartamento),
constraint FkApart foreign key(CodEdificio) references Edificio(CodEdificio)
);