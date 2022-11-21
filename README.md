# Primeiro Projeto Lógico de Banco de Dados 

Neste repositório encontra-se o projeto do Bootcamp Unimed BH da Digital Innovation One (DIO) sobre a construção do primeiro projeto lógico de banco de dados em um cenário de e-commerce.

# Sobre o Projeto

O projeto refere-se a criação de Script SQL para a criação de esquema do banco de dados. O mesmo foi elaborado inicialmente pela Data Scientist da Dio Juliana Mascarenhas.
Posteriormente, com base nos conceitos abordados no decorrer do curso, foram realizados o desenvolvimento e refinamento deste modelo.

Para a elaboração deste esquema lógico de banco de dados foi utilizada a ferramenta MySQL Workbench.

# Premissas do Projeto

Refinamento de projeto lógico de banco de dados para a reprodução de um cenário de comercialização de produtos através de e-commerce.

Após a criação do esquema lógico e da persistência dos dados, serão realizados testes que visem a prática dos conteúdos estudados.

Estes testes consistem em queries SQL que possuam cláusulas, como:


* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Crie expressões para gerar atributos derivados
* Defina ordenações dos dados com ORDER BY
* Condições de filtros aos grupos – HAVING Statement
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

## Objetivo

“Refine o modelo apresentado acrescentando os seguintes pontos”:

* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
* Entrega – Possui status e código de rastreio;
 

## Questionamentos elaborados para o embasamento das queries SQL

1. Quantos pedidos foram feitos por cada cliente?
2. Algum vendedor também é fornecedor?
3. Recuperar a relação de produtos e estoques;
4. Relação dos fornecedores e de seus produtos;
5. Recuperar a relação de clientes que tiveram pedidos cancelados e ordenar a relação por clientes;
6. Exibir a quantidade de pedidos entregues por cada transportadora e o valor total recebido pelos fretes;
7. Recuperar os cinco produtos mais vendidos;