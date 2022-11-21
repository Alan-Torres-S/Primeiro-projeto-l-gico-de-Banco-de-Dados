#Inserção de dados

use Ecommerce;
show tables;

desc cliente;
insert into cliente (primeiro_nome, meio_nome, ultimo_nome, CPF, endereco)
		values('Maria', 'M', 'Silva', 12345678912,'rua silva de prata 9, Carangola - Cidade das flores'),
				('Matheus', 'O', 'Pimentel', 98765432112,'rua alameda 289, Centro - Cidade das flores'),
                ('Ricardo', 'F', 'Silva', 45678912389,'av alameda vinha 1009, Centro - Cidade das flores'),
                ('Julia', 'S', 'França', 78912345687,'rua laranjeiras 861, Centro - Cidade das flores'),
                ('Roberta', 'G', 'Assis', 98745634521,'av koller 19, Centro - Cidade das flores'),
                ('Joana', 'B', 'Linda', 12378912367,'rua das almecias 56, Uriu - Cidade Jardim'),
                ('Maria', 'O', 'Belizardo', 75378912367,'av Norte 159, Fátima - Cidade Jardim'),
                ('Marco', 'J', 'Feliz', 12315912367,'av bezerra de menezes 84, Gerardo - Cidade Fortaleza'),
                ('Jorge', 'U', 'Tevez', 75378995167,'av argentina 34, Buenos - Cidade Aires'),
                ('Ichigo', 'T', 'Kurosaki', 45678912367,'av japão 15, Tokio - Cidade Karakura'),
                ('Tralfagar', 'D', 'Law', 12852951367,'rua oeste 79, Tokio - Cidade Karakura'),
                ('Monkey', 'D', 'Luffy', 15365812367,'rua leste 45, Tokio - Cidade Karakura'),
                ('Yusuki', 'H', 'Urameshi', 17854122367,'rua central 65, Uriu - Cidade Jardim'),
                ('Isabela', 'M', 'Cruz', 65478912367,'rua alameda das flores 28, Centro - Cidade das flores');

select * from cliente;

desc pagamento_com_cartao;
insert into pagamento_com_cartao (nome_completo_titular, numero_cartao, bandeira_cartao, data_validade, CPF_CNPJ_titular)
		values ('Isabela M Cruz', 1234456789454569, 'VISA', 0423, 65478912367),
				('Maria M Silva', 1596458678941236, 'ELO', 0523, 12345678912),
                ('Yusuki H Urameshi', 1452325698741479, 'MASTERCARD', 0724, 17854122367),
                ('Matheus O Pimentel', 1643789459878512, 'HIPERCARD', 0425, 98765432112),
                ('Monkey D Luffy', 134679465698, 'VISA', 0923, 15365812367),
                ('Tralfagar D Law', 1586145895674589, 'HIPERCARD', 0626, 12852951367),
                ('Ichigo T Kurosaki', 1586356998541245,'AMERICAN EXPRESS', 0528, 45678912367),
                ('Jorge U Tevez', 459878986545, 'ELO', 0327, 75378995167);

select * from pagamento_com_cartao;

desc pagamentos;
insert into pagamentos (idPagamento, idPagamento_cartao, Tipo_pagamento)
		values (1, 2,'Cartão'), 
				(2, 4,'Cartão'),
                (3, null, 'Pix'),
                (4, null, 'Boleto'),
                (5, null, 'Pix'),
                (6, null, 'Boleto'),
                (7, null, 'Pix'),
                (8, null, 'Transferência bancária'),
                (9,  8, 'Cartão'),
                (10, 7, 'Cartão'),
                (11, 6, 'Cartão'),
                (12, 5, 'Cartão'),
                (13, 3, 'Cartão'),
                (14, 1, 'Cartão');
                
select * from pagamentos;

desc produto;
insert into produto (produto_nome, classificação_kids, categoria, avaliacao, dimensao)
		values ('Fone de ouvido',false,'Eletrônico','4',null),
				('Barbie Elsa',true,'Brinquedos','3',null),
                ('Body Carters',true,'Vestuário','5',null),
                ('Microfone Vedo - Youtuber',false,'Eletrônico','4',null),
                ('Sofá retrátil',false,'Móveis','3','300x57x88'),
                ('Farinha de arroz',false,'Alimentos','2',null),
                ('PS5',true,'Eletrônico','5',null),
                ('Cadeira gamer',false,'Móveis','3','56x70x110'),
                ('Manto Akatsuki',true,'Vestuário','4',null),
                ('Picanha Argentina',false,'Alimentos','4',null),
                ('Beliche arco-iris',false,'Móveis','3','210x80x60'),
                ('Saca rolhas eletrônico',false,'Eletrônico','1',null),
                ('Fire Stick Amazon',false,'Eletrônico','3',null),
				('Vestido de crochê',false,'Vestuário',5,null),
                ('Lhamen do Ichiraku,',false,'Alimentos','4',null),
                ('Bonecos Power Ranger',true,'Brinquedos','3',null),
                ('Yakisoba de carne',false,'Alimentos','2',null),
                ('Mobile noite feliz',true,'Brinquedos','5',null),
                ('Mesa para estudos',false,'Móveis',4,'70x75,40'),
                ('Conjunto Dora Aventureira',true,'Vestuário',3,null),
                ('Biquine de crochê',false,'Vestuário',5,null),
                ('Estante tubular',false,'Móveis',4,null);

select * from produto;

desc pedido;
insert into pedido (idPedido_cliente, status_pedido, descricao, pagamento_cash) 
		values (1,default,'compra via aplicativo',1),
				(2,default,'compra via aplicativo',0),
                (3,'Confirmado','compra via site',1),
                (4,default,'compra via aplicativo',0),
                (5,'Confirmado','compra via site',1),
                (6,'Cancelado','compra via aplicativo',0),
                (7,default,'compra via site',1),
				(8,'cancelado','compra via aplicativo',0),
                (9,'Confirmado','compra via aplicativo',1),
                (10,default,'compra via aplicativo',0),
                (11,'Confirmado','compra via site',0),
                (12,'Cancelado','compra via aplicativo',0),
				(11,default,'compra via aplicativo',1),
				(11,default,'compra via aplicativo',0),
                (3,'Confirmado','compra via site',0),
                (4,default,'compra via aplicativo',0),
                (8,'Confirmado','compra via site',1),
                (8,'Cancelado','compra via aplicativo',0),
                (9,default,'compra via site',1),
				(10,default,'compra via aplicativo',0),
                (1,'Confirmado','compra via aplicativo',1),
                (1,default,'compra via aplicativo',0),
                (2,'Confirmado','compra via site',1),
                (12,default,'compra via aplicativo',0);

select * from pedido;
                
desc produto_por_pedido;
insert into produto_por_pedido (idProduto_por_pedido_produto, idProduto_por_pedido, quantidade, status_produto_por_pedido)
		values (1,1,2,default), 
				(2,2,1,default),
                (3,3,1,'Sem estoque'),
                (4,4,1,'Sem estoque'),
				(5,5,2,default),
                (6,6,1,default),
				(7,7,2,default),
                (8,8,1,default),
				(9,9,1,default),
                (10,10,2,default),
				(11,11,3,default),
                (12,12,2,default),
				(13,13,1,default), 
				(14,14,1,default),
                (11,15,1,default),
                (19,16,2,default),
				(22,17,2,default),
                (16,18,1,default),
                (21,19,1,default),
                (13,20,1,default),
                (16,21,1,'Sem estoque'),
                (2,22,2,'Sem estoque'),
                (8,23,2,default),
                (22,24,1,default);
                
select * from produto_por_pedido;

desc entrega;
insert into entrega (idEntrega, idEntrega_transportadora, codigo_rastreio, status_entrega, prazo_entrega, valor_frete) 
		values (1,1,'AA001','Separado pelo fornecedor','2022-12-02',10),
				(2,2,'AA002','Saiu do centro de distribuição','2022-12-02',10),
                (3,3,'AA003','A caminho da sua cidade','2022-12-02',10),
                (4,4,'AA004','Separado pelo fornecedor','2022-12-04',20),
                (5,4,'AA005','Na rota de entrega','2022-12-04',10),
                (6,3,'AA006','Saiu do centro de distribuição','2022-12-04',30),
                (7,2,'AA007','A caminho da sua cidade','2022-12-04',10),
				(8,1,'AA008','Separado pelo fornecedor','2022-12-04',20),
                (9,1,'AA009','Saiu do centro de distribuição','2022-12-05',10),
                (10,2,'AA010','A caminho da sua cidade','2022-12-05',30),
                (11,3,'AA011','Separado pelo fornecedor','2022-12-05',30),
                (12,4,'AA012','Saiu do centro de distribuição','2022-12-05',20),
				(13,4,'AA013','Separado pelo fornecedor','2022-12-06',10),
				(14,3,'AA014','A caminho da sua cidade','2022-12-06',30),
                (15,2,'AA015','Na rota de entrega','2022-12-06',20),
                (16,1,'AA016','Saiu do centro de distribuição','2022-12-06',20),
                (17,1,'AA017','Entregue','2022-12-06',10),
                (18,1,'AA018','Entregue','2022-12-07',30),
                (19,2,'AA019','Saiu do centro de distribuição','2022-12-07',10),
				(20,2,'AA020','Separado pelo fornecedor','2022-12-07',20),
                (21,3,'AA021','Entregue','2022-12-07',10),
                (22,3,'AA022','Entregue','2022-12-07',30),
                (23,2,'AA023','Na rota de entrega','2022-12-8',10),
                (24,2,'AA024','Saiu do centro de distribuição','2022-12-08',20);
                
select * from entrega;
            
desc transportadora;            
insert into transportadora (razao_social,CNPJ,responsavel,telefone)
		values	('Transportadora Lili', 12582698000169, 'João Gomes', 74129852),
				('Transmax', 85741963000154, 'Maxuel Silva', 95149887),
				('Rapidão Mingau', 58157985000187, 'Roberto Nunes', 85214796),
                ('Flash Transportes', 54789582000169, 'Lucas Mendonça', 85259636);

select * from transportadora;
            
desc estoque;
insert into estoque (localizacao, quantidade)
		values ('Rio de Janeiro',1000),
				('São Paulo',510),
                ('Fortaleza',700);

select * from estoque;

desc produto_em_estoque;
insert into produto_em_estoque (idEm_produto, idEm_estoque, localizacao)
		values (1,1,'RJ'),
				(2,3,'CE'),
                (3,2,'SP'),
                (4,1,'RJ'),
                (5,3,'CE'),
                (6,3,'CE'),
                (7,1,'RJ'),
                (8,2,'SP'),
                (9,2,'SP'),
                (10,3,'CE'),
                (12,1,'RJ'),
                (11,1,'RJ');
                
select * from produto_em_estoque;

desc fornecedor;
insert into fornecedor (razao_social, CNPJ, contato)
		values ('Almeida e Filhos',123456789000156,'21985474'),
				('Eletrônicos Silva',85451964000154,'21985484'),
                ('Móveis Vilmar',145656789000156,'21975374'),
				('Briquedoteca do Silva',85251964000154,'21951484'),
                ('Top Carnes',81656789000195,'29735474');

select * from fornecedor;

insert into produto_por_fornecedor (idPor_fornecedor, idProduto_por_fornecedor, Quantidade)
		values (2,1,500),				
				(5,2,400),
                (1,3,633),
                (2,4,555),
                (4,5,110),
                (2,6,500),
				(2,7,400),
                (4,8,633),
                (1,9,255),
                (5,10,120),
                (4,11,255),
                (2,12,110),
                (2,13,210);
                
select * from produto;

desc vendedor;
insert into vendedor (razao_social, CNPJ, CPF, Localizacao, Contato)
		values ('Tech eletronics',  12345678000156, null, 'Rio de Janeiro', 21994628),
				('Glicínias Atelier', null, 245678892, 'Fortaleza', 91267484),
                ('Móveis Mingau', 91495789000145, null, 'Fortaleza', 85956789),
                ('Kids World', 45678892000185, null, 'São Paulo', 98657484),
				('Anime Foods',79461389000195,null,'São Paulo','29735474');
                
 select * from vendedor;
 
desc produto_por_vendedor;
insert into produto_por_vendedor (idPor_vendedor, idPor_vendedor_produto, quantidade)
		values (2,14,15),
                (5,15,28),
                (4,16,8),
                (5,17,19),
                (4,18,32),
                (3,19,45),
                (2,20,85),
                (2,21,19),
                (3,22,19);
                
select * from produto_por_vendedor;