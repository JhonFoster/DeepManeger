SELECT
    p.id_pedido,
    p.data_pedido,
    pr.descricao,
    ip.quantidade,
    c.nome as nome_cliente
FROM pedido p
JOIN cliente c ON c.id_cliente = p.id_cliente
JOIN itempedido ip ON ip.id_pedido = p.id_pedido
LEFT JOIN produto pr ON pr.id_produto = ip.id_produto
ORDER BY p.id_pedido;

SELECT
    p.id_pedido,
    p.data_pedido,
    ip.quantidade,
    c.nome as nome_cliente,
    pr.descricao
FROM pedido p
JOIN cliente c ON c.id_cliente = p.id_cliente
JOIN itempedido ip ON ip.id_pedido = p.id_pedido
LEFT JOIN produto pr ON pr.id_produto = ip.id_produto
WHERE c.id_cliente = 101
ORDER BY p.data_pedido DESC 
LIMIT 5;
