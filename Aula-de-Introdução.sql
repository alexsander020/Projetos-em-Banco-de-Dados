-- cria o bd escola --
create database if not exists Escola;
-- para utilizar o banco --
use Escola;
-- criar a tabela pessoa e os atributos dentro do parenteses --
-- na frente do atrubito indica-se o tipo do dado --
-- Unique - dado não repete
-- Not Null preenchimenuto obrigatório --
create table pessoa(
ID integer(10) primary key,
UltimoNome varchar(100) not null unique,
PrimeiiroNOme varchar(100) not null,
Idade integer(3)
);
-- Alterar algo na tabela --

-- inclusão de atributos --
alter table pessoa add column telefone integer; 

-- Exluir uma coluna com alter table --
alter table pessoa drop column telefone;

-- Modificando o tipo de dados da coluna(atributo) --
alter table pessoa modify column telefone varchar(20);

-- Incluir uma restrição numa coluna --
alter table pessoa modify telefone varchar(20) not null;

drop table pessoa;






