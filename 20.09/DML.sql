create database ger_venda;
use ger_venda;

create table produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoquete int
);

create table vendas (
vendas_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key (produto_id) references produtos (produto_id)
);

insert into produtos(nome,preco,estoquete)
values ("rudrian teste", 7000.00,35);


select * from produtos;

insert into vendas(produto_id, quantidade, data_venda)
values (2,8,"2024-09-20");

update produtos
set preco = 6500.00
where produto_id = 1;

select * from vendas;

update vendas
set quantidade = 50
where vendas_id = 1;

delete from produtos 
where produto_id =3;

delete from vendas
where vendas_id = 1;


select * from produtos;
select nome, estoquete from produtos;

select * from vendas;

select quantidade, data_venda from vendas;

select * from vendas
where venda_id = 2;