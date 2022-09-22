create database ecommerce;
use ecommerce;

-- criar tabela cliente

 create table Cliente(
 idCliente int auto_increment primary key,
 Fname varchar (10),
 Minit char(3),
 Lname varchar(20),
 CPF char (11) not null ,
 Address varchar (30),
  constraint unique_cpf_client unique (CPF)
 );
 select * from Cliente;

-- criar tabela produto
-- size = dimensao do produto
create table Product(
 idproduct int auto_increment primary key,
 Fname varchar (10),
 Classification_kids bool default false,
 Category enum ('Eletrônico','Vestimenta','Brinquedos','Alimentos') not null ,
 Avaliation float default 0,
 size varchar (10)

 );
-- para ser continuando no desafio: termine de implementar a tablea e crie a conexao com as 
-- tabelas necessarias, alem disso, reflita essa modificacao no diagrama de esquema relacional
-- criar constrant relacionado ao pagamento
create table Payments(
 idClient int ,
 idPayment int,
 TypePayment enum ('Boleto','Cartão','Dois Cartões'),
 LimitAvailable float,
 primary key (idClient, idPayment)
 
);

-- criar tabela pedido
 
create table Orders (
 idOrder int auto_increment primary key,
 idOrderClient int  ,
 OrdersStatus enum ('Cancelado', 'Conformado','Em processamento') default 'Em processamento',
 OrdersDescription varchar (255),
 SendValue float default 10,
 paymentCash bool default false, -- se caso o cliente nao tiver o cartao credito
 constraint fk_ordes_client foreign key (idOrderClient) references clients(idClient)
);

create table ProductOrder (
idPOproduct int primary key,
idPOorder int not null,
poquantity int not null,
poStatus varchar(255)not null
);

-- criar table estoque
create table ProductStorage (
 idProdStorage int auto_increment primary key,
 StorageLocation varchar (255),
 Quantity int default 0
 
);

-- criar tablet fornecedor

create table Supplier (
 idSupplier int auto_increment primary key,
 CNPJ char (15) not null,
 contact varchar(10) not null,
 SocialName varchar(255),
 constraint unique_spplier unique(CNPJ) 
 
);
   alter table   Supplier add   SocialName varchar (255) ; 
   
   

create table Seller (
idSeller int auto_increment primary key,
SocialName varchar (255) not null,
AbsNAme varchar (255) not null,
CNPJ char (15) not null,
CPF char (11) not null,
location varchar (255),
contact char (11) not null,
constraint unique_cnpj_seller unique (CNPJ),
constraint unique_cpf_seller unique (CPF)
);
alter table Seller add AbsName varchar(255);

create table productSettele(
idPseller int  ,
idProduct int ,
Prodquantity int not null default 1, 
primary key(idPseller,idProduct),
constraint fk_product_seller foreign key (idPseller) references Seller (idSeller),
constraint fk_product_product foreign key (idproduct) references Product (idproduct)
);

create table StorageLocations (
idLproduct int,
idLstorage int,
Location varchar(255) not null,
primary key (idLproduct,idLstorage),
constraint fk_productorder_seller foreign key (idproduct) references product (idproduct),
constraint fk_storage_location_storage foreign key (idLstorage) references ProductStorage (idProdStorage) 
);


show tables;
show databases;
use information_schema;
desc referential_constraints;
select * from referential_constraints where  constraint_schema = 'ecommerce';