UPDATE produto
SET descricao = "bolo creme"
where id_produto = 20;

SELECT * FROM produto;

UPDATE cliente
SET Nome = "Mauricio"
where id_cliente = 101;

SELECT * FROM cliente;

UPDATE cliente
SET perfil_compra = "Doces secos"
where id_cliente = 101;

SELECT * FROM cliente;

UPDATE cliente
SET perfil_compra = "Doces Sazonais"
where id_cliente = 102;

SELECT * FROM cliente;

DELETE FROM cliente
where id_cliente = 103;

DELETE FROM produto
where id_produto = 30;

DELETE FROM produto
where id_produto = 40;