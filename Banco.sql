create database dbAutoCollections;

/*drop database dbAutoCollections;*/

use dbAutoCollections;

create table tbEndereco(
CEP int primary key,
Estado char(2) not null,
Cidade varchar(50) not null,
Bairro varchar(50) not null,
Rua varchar(70) not null,
Numero int not null,
Complemento varchar(20)
);

create table tbFornecedor(
IdFornecedor int primary key auto_increment,
NomeFornecedor varchar(150) not null,
CNPJ bigint not null,
TelefoneFornecedor int not null,
EmailFornecedor varchar(100) not null,
CEP int not null -- foreing key da tbEndereco
);

create table tbFuncionario(
IdFuncionario int primary key auto_increment,
NomeFuncionario varchar(70) not null,
CPF bigint not null,
TelefoneFuncionario int not null,
EmailFuncionario varchar(100) not null,
Cargo varchar(50) not null,
CEP int not null, -- foreign key da tbEndereco
DataAdmissao date not null
);

create table tbProduto(
IdProduto int primary key auto_increment,
IdFornecedor int not null, -- foreign key da tbFornecedor
NomeProduto varchar(70) not null,
PrecoUnitario decimal(10,2) not null,
Escala varchar(10) not null,
Peso decimal(10,2) not null,
Material varchar(30) not null,
TipoProduto varchar(30) not null,
QuantidadePecas int not null,
Marca varchar(30) not null,
Categoria varchar(30) not null,
QuantidadeEstoque int not null,
QuantidadeMinima int not null,
Descricao varchar(200) not null
);

create table tbItemPedido(
IdPedido int not null,
IdProduto int not null,
QuantidadeProduto int not null,
SubTotal decimal(10,2) not null,
PrecoUnitario decimal(10,2) not null,
primary key(IdPedido, IProduto)
);

create table tbPedido(
IdPedido int primary key auto_increment,
IdCliente int not null, -- foreign key da tbCliente
DataPedido date not null,
ValorTotal decimal(10,2) not null,
IdCliente int not null,
PedidoStatus varchar(50) not null,
ValorItem decimal(10,2) not null
);

create table tbNotaFiscal(
IdNF int primary key auto_increment,
IdPedido int not null, -- foreign key da tbPedido
ValorTotal decimal(10,2) not null,
DataEmissao date not null,
NumeroSerie int not null
);

create table tbCliente(
IdCliente int primary key auto_increment,
CPF bigint not null,
NomeCliente varchar(150) not null,
DataNascimentoCli date not null,
TelefoneCliente int not null,
EmailCliente varchar(150) not null,
CEP bigint not null -- foreign key da tbEndereco
);

create table tbCarrinho(
IdCarrinho int primary key auto_increment,
IdCliente int not null, -- foreign key da tbCliente
ValorTotal decimal(10,2) not null
);

create table tbItemCarrinho(
IdCarrinho int not null,
IdProduto int not null,
QuantidadeProduto int not null,
PrecoUnitario decimal(10,2) not null,
SubTotal decimal(10,2) not null,
primary key(IdCarrinho, IdProduto)
);

create table tbPagamento(
IdPagamento int primary key auto_increment,
IdPedido int not null, -- foreign key da tbPedido
MetodoPagamento varchar(30) not null,
ValorPagamento decimal(10,2) not null,
StatusPagamento varchar(20) not null,
CodigoTransacao varchar(100) not null
);

create table tbCartao(
IdCartao int primary key auto_increment,
IdCliente int not null, -- foreign key da tbCliente
Bandeira varchar(20) not null,
UltimosDigitos char(4) not null,
NomeTitular varchar(100) not null,
ValidadeCartao char(7) not null
);