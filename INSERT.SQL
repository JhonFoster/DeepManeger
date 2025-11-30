INSERT INTO produto (id_produto,Descrição,Validade,Lote)
VALUES (10, 'Bolo chocolate', '25/12/2025', 0001); 
SELECT * FROM produto;

INSERT INTO produto (id_produto,Descrição,Validade,Lote)
VALUES (20, 'Bolo morango', '25/12/2025', 0002); 
SELECT * FROM produto;

INSERT INTO cliente (id_cliente, nome, telefone,CNPJ,Cod_cliente,Perfil_compra)
VALUES (101, 'aline', '19 0010-0002', '788.789.788-60','7502','compra de bolochas');
SELECT * FROM cliente;

INSERT INTO cliente (id_cliente, nome, telefone,CNPJ,Cod_cliente,Perfil_compra)
VALUES (102, 'aline', '19 0010-0002', '788.789.788-60','7502','compra de bolochas');
SELECT * FROM cliente;

INSERT INTO pedido (id_pedido, Data_pedido, id_cliente)
VALUES (1, '15/03/2025', 101);
SELECT * FROM pedido;

INSERT INTO pedido (id_pedido, Data_pedido, id_cliente)
VALUES (2, '15/03/2024' ,102);
SELECT * FROM pedido;

INSERT INTO itempedidoo (id_itempedido, quantidade,id_pedido, id_produto)
VALUES (1,'15',1,10);
SELECT * FROM itempedidoo;