# Criação do esquema para o cenário de E-commerce

#drop database Ecommerce;
create database Ecommerce;
use Ecommerce;

#Criando as tabelas

#Tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
    primeiro_nome varchar(10),
    meio_nome char(5),
    ultimo_nome varchar(20),
    CPF char(11) not null,
    endereco varchar(100),
    constraint unique_cpf_cliente unique (CPF)
);

alter table cliente auto_increment=1;

#Tabela pagamentos (N:N)
create table pagamentos(
	idPagamento int,
    idPagamento_cartao int,
    tipo_pagamento enum('Boleto','Cartão','Pix','Transferência bancária'),
	primary key(idPagamento),
	constraint fk_idPagamento foreign key (idPagamento) references cliente (idCliente),
    constraint fk_idPagamento_cartao foreign key (idPagamento_cartao) references pagamento_com_cartao(idPagamento_com_cartao)
);

#Tabela pagamento com cartão
create table pagamento_com_cartao(
	idPagamento_com_cartao int auto_increment primary key,
    nome_completo_titular varchar(60) not null,
    numero_cartao char(16) not null,
	bandeira_cartao ENUM('VISA','MASTERCARD','ELO','MAESTRO','AMERICAN EXPRESS','HIPERCARD') not null,
    data_validade char(4),
    CPF_CNPJ_titular varchar(14)
);

#Tabela pedido
create table pedido(
	idPedido int auto_increment primary key,
	idPedido_cliente int,
	status_pedido enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
	descricao varchar(255),
	pagamento_cash bool default false,
	constraint fk_pedido_cliente foreign key (idPedido_cliente) references cliente (idCliente)
);

#Tabela entrega
create table entrega(
	idEntrega int,
    idEntrega_transportadora int,
    codigo_rastreio varchar(45) not null,
    status_entrega ENUM('Separado pelo fornecedor','Saiu do centro de distribuição', 
							'A caminho da sua cidade','Na rota de entrega', 'Entregue') not null,
    prazo_entrega date not null,
    valor_frete float not null,
    primary key (idEntrega, idEntrega_transportadora),
    constraint fk_entrega_pedido foreign key (idEntrega) references pedido (idPedido),
    constraint fk_entrega_transportadora foreign key (idEntrega_transportadora) references transportadora (idTransportadora)
);

create table transportadora(
		idTransportadora int auto_increment primary key,
        razao_social varchar(45) not null,
        CNPJ char(14) not null,
        responsavel varchar(45) not null,
        telefone char(11) not null,
        constraint unique_cnpj_empresa unique(CNPJ)
);

create table produto(
	idProduto int auto_increment primary key,
    produto_nome varchar(30) not null,
    classificação_kids bool default false,
    categoria enum('Eletrônico','Vestuário','Alimentos','Móveis','Brinquedos'), 
    avaliacao float default 0,
    dimensao varchar(10)
);

#Criando a tabela Estoque
create table estoque(
	idEstoque int auto_increment primary key,
	localizacao varchar(255),
    quantidade int default 0
);

#Criando a tabela fornecedor
create table fornecedor(
	IdFornecedor int auto_increment primary key,
    razao_social varchar(255) not null,
    CNPJ char(15) not null,
    contato char(11) not null,
    constraint unique_fornecedor unique (CNPJ)
);

#Criando a tabela Terceiro Vendedor 
create table vendedor(
	IdVendedor int auto_increment primary key,
    razao_social varchar(255) not null,
    CNPJ char(15),
    CPF char(9),
    localizacao varchar(255),
    contato char(11) not null,
    constraint unique_cnpj_tercFornecedor unique (CNPJ),
    constraint unique_cpf_tercFornecedor unique (CPF)
);

#Criando a tabela Produto em estoque (N:N)
create table produto_em_estoque(
	idEm_estoque int,
    idEm_produto int,
    localizacao varchar(5),
    primary key (idEm_estoque, idEm_produto),
    constraint fk_Em_estoque foreign key (idEm_estoque) references estoque(idEstoque),
    constraint fk_Em_produto foreign key (idEm_produto) references produto(idProduto)
);

#Criando a tabela Produto por fornecedor (N:N)
create table produto_por_fornecedor(
	idPor_fornecedor int,
    idProduto_por_fornecedor int,
    quantidade int default 1,
    primary key (idPor_fornecedor, idProduto_por_fornecedor),
    constraint fk_por_fornecedor foreign key (idPor_fornecedor) references fornecedor(IdFornecedor),
    constraint fk_produto_por_fornecedor foreign key (idProduto_por_fornecedor) references produto(idProduto)
);

#Criando a tabela produtos por Vendedor (N:N)
create table produto_por_vendedor(
	idPor_vendedor int,
    idPor_vendedor_produto int,
    quantidade int default 1,
    primary key (idPor_vendedor, idPor_vendedor_produto),
    constraint fk_por_vendedor foreign key (idPor_vendedor) references vendedor(IdVendedor),
    constraint fk_Por_vendedor_produto foreign key (idPor_vendedor_produto) references produto(idProduto)
);

#Criando a tabela relação de produto/pedido (N:N)
create table produto_por_pedido(
	idProduto_por_pedido_produto int,
    idProduto_por_pedido int,
    quantidade int default 1,
    status_produto_por_pedido enum('Disponível','Sem estoque') default 'Disponível',
    primary key (idProduto_por_pedido_produto, idProduto_por_pedido),
    constraint fk_produto_por_pedido foreign key (idProduto_por_pedido) references pedido(idPedido),
    constraint fk_produto_por_pedido_produto foreign key (idProduto_por_pedido_produto) references produto(idProduto)
);

Show tables;
select * from pedido;
