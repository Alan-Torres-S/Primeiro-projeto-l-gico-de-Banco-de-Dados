#Queries

use Ecommerce;

# Quantos pedidos foram feitos por cada cliente?
select c.idCliente, concat(primeiro_nome, ' ', ultimo_nome) as Nome, Count(*) as Números_de_pedidos from cliente c
			inner join pedido p on c.idCliente = p.idPedido_cliente
				group by idCliente;

# Algum vendedor também é fornecedor?
select v.razao_social, v.CNPJ, f.Razao_social, f.CNPJ from vendedor v, fornecedor f
	where v.CNPJ = f.CNPJ;

# Relação de produtos e estoques;
select p.idProduto, p.produto_nome, e.localizacao, e.quantidade from produto p
		inner join produto_em_estoque pe on idProduto = idEm_produto
        inner join estoque e on idEstoque = idEm_estoque
        order by e.localizacao, p.produto_nome;

# Relação de nomes dos fornecedores e nomes dos produtos;
select idProduto, produto_nome, f.razao_social, CNPJ from produto p
		inner join produto_por_fornecedor pf on pf.idProduto_por_fornecedor = p.idProduto
        inner join fornecedor f on f.idFornecedor = idPor_fornecedor
        order by f.razao_social, idProduto;
        
# Exibindo a relação de clientes que tiveram pedidos cancelados e ordenando por clientes
select concat(primeiro_nome, ' ', ultimo_nome) as Cliente, idPedido as Pedido, status_pedido as Status_do_Pedido from cliente c
		inner join pedido p on idCliente = idPedido_cliente
        having status_pedido = 'Cancelado'
        order by Cliente;

# Exibir a quantidade de pedidos entregues por cada tranportadoras e o valor total recebido pelos fretes
select t.idTransportadora as Id, t.razao_social as Razão_Social, t.CNPJ, count(p.idPedido) as Pedidos_entregues, sum(e.valor_frete) as Frete from transportadora t
	inner join entrega e on e.idEntrega_transportadora = t.idTransportadora
    inner join pedido p on p.idPedido = e.idEntrega
    group by t.idTransportadora
    order by t.idTransportadora;


# Listar os cinco produtos mais vendidos
select p.produto_nome as Produto_mais_vendido, sum(ppd.quantidade) as Total from produto p
		inner join produto_por_pedido ppd on ppd.idProduto_por_pedido_produto = p.idProduto
        group by Produto_mais_vendido 
        order by Total desc limit 5;