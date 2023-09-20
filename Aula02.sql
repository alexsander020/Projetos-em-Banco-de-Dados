create database Restaurante; 
use Restaurante;
create table produto(
NomeProduto varchar(255),
descricao text,
categoria varchar(255),
preso double (20, 2),
Idproduto integer not null unique,
primary key (IdProduto)
);

create table igrediente (
IdIgrediente integer not null unique,
estoque int (255),
NomeIgrediente varchar(20),
primary key (IdIgrediente)
);

create table pedido(
IdPedido integer not null unique,
Data_Pedido data,
StatusPedido varchar(20),
primary key (IdPedido),
IdCliente int,
constraint fdop foreign key (IdCliente) references Cliente(IdClienete)
);

create table Cliente(
IdCliente integer not null unique,
MomeCliente varchar(20),
telefone int(255),
primary key (IdCliente)
);

create table preto_peddo(
Idproduto int,
IdPedido int,
constraint trt foreign key (Idproduto) references Produto(Idprodutoo),
constraint tra foreign key (IdPedido) references Pedido(IdPedido)
);

create table ProCli(
Idproduto int,
IdCliente int,
constraint tr foreign key (IdPoduto) references Produto(IdProduto),
constraint tra foreign key (IdCliente) references Produto(IdCliente)
);

drop table pedido;
drop table cliente;
drop Restaurante;	