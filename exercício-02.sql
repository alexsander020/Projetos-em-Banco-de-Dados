create database escola2;
use escola2;

create table Pessoa(
IdPessoa integer primary key auto_increment,
UltimoNome varchar(100),
PrimeiroNome varchar(100),
Idade int,
check (idade > 18),
cidade varchar (100) default "São Paulo"
);
-- íncluindo a coluna cidade na table --
alter table Pessoa add column cidade varchar(100);
-- incluindo um padrão para preenchimento
alter table Pessoa add cidade varchar(100) default "São Paulo"; 

select *from Pessoa;
insert into Pessoa(
UltimoNome,
PrimeiroNome,
Idade,
cidade)values("Beatriz",
"Ana",
22,
"Sera");

insert into Pessoa(
UltimoNome,
PrimeiroNome,
Idade,
cidade)values("Lassalla",
"Macello",
19);
-- __________________________________________________________________ --
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

insert into edificio(Endereco) values("Rua 3");
insert into apartamento(
CodEdificio,
NumeroApartamento,
AreaApartamento
)values(3, 69, 545);
select *from apartamento;
delete from aparatamento where NumeroApartamento = 24;
delete from edificio where CodEdificio = 1;
select * from edificio;

	
update edificio
set Endereco = "Rua 3"
where CodEdificio = 2;

select * from edificio;

			
