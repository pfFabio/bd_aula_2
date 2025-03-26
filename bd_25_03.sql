/*
criar 4 tabelas para um sistema de vendas
clientes
produtos
vendas
itens_venda
*/

drop database aula;
create database if not exists aula;
use aula;


create table clientes(
id_clientes int primary key not null AUTO_INCREMENT,
nome varchar(50) not null,
cidade varchar(50) not null
);

create table produtos(
id_produtos int primary key not null AUTO_increment,
nome varchar(50) not null,
preco decimal(10,2)
);

create table vendas(
id_vendas int primary key not null AUTO_increment,
id_cliente int,
data_venda date not null,
foreign key (id_cliente) references clientes(id_clientes)
);

create table itens_venda(
id int primary key not null AUTO_increment,
id_vendas int,
id_produtos int,
quantidade int,
foreign key (id_vendas) references vendas(id_vendas),
foreign key (id_produtos) references produtos(id_produtos)
);


select * from clientes;
select * from produtos;
select * from vendas;
select * from itens_venda;


insert into clientes (nome, cidade)
values
("joaquim", "marica"),
("vinicius", "niteroi"),
("fabio", "rio de janeiro");

insert into clientes (nome, cidade)
values
("juan", "marica");


/*
("maria", "marica"),
("joao", "niteroi"),
("jeferson", "rio de janeiro");
*/

insert into produtos(nome, preco)
values
("notebook", 3500.00),
("mouse", 50.00),
("teclado", 100.00),
("monitor", 650.00);

update clientes 
set cidade = 'mudado'
where id_clientes = 1;

insert into vendas(id_cliente, data_venda)
values
(1, '2025-03-01'),
(3, '2025-03-15'),
(2, '2025-02-07'),
(1, '2025-01-17');


insert into itens_venda(id_vendas, id_produtos, quantidade)
values -- 5,6,7,8
(5, 1,1),
(6,2,2),
(7,3,1),
(8,4,1);
;

/*
funções min, max, count, avg
*/

Select MIN(preco) from produtos;
select min(preco) as "menor preço" from produtos;
select max(preco) as "maior preço" from produtos;
select avg(preco) as "média de preços" from produtos;
select count(*) as "contagem clientes" from clientes;

select *
from clientes
order by nome desc;

select *
from clientes
limit 2;

select *
from clientes
order by nome desc
limit 3;

select *
from clientes
where id_clientes < 3
order by nome desc
limit 3;


-- termina com "a"
select *
from clientes
where nome
like "%a";


-- começa com "a"
select *
from clientes
where nome
like "a%";


-- tem "a" no campo
select *
from clientes
where nome
like "%a%";


-- especificado multiplos valores
select *
from clientes
where id_clientes
in (1,3,5);


-- entre
select *
from clientes
where id_clientes
between 1 and 4;

-- JOIN
-- serve para juntar dados de varias tabelas com base em uma coluna comum

-- a letra após o nome da tabela serve de apelido
select c.nome, c.cidade, v.data_venda
from clientes c
inner join vendas v on c.id_clientes = v.id_cliente;


-- group by
/*
é uma instrução que agrupa linha  que tem os mesmos valores em linhas de resumo 
como: "encontrar o numero de clientes em cada país"
*/

select *
from clientes;
-- contar quantos clientes existem por cidade
select cidade, COUNT(*) as "total de clientes por cidade"
from clientes
group by cidade;


-- somente marica
select cidade, COUNT(*) as "total de clientes por cidade"
from clientes
where cidade = "marica"
group by cidade;

select COUNT(*) as "total de clientes em marica"
from clientes
where cidade = "marica";

