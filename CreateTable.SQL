BEGIN TRANSACTION;

CREATE TABLE cliente (
    id_cliente    INTEGER      PRIMARY KEY AUTOINCREMENT,
    Nome          TEXT,
    Telefone      VARCHAR (18),
    CNPJ          VARCHAR (20),
    Cod_cliente   INT,
    Perfil_compra TEXT
);


CREATE TABLE deposito (
    id_deposito      INTEGER      PRIMARY KEY AUTOINCREMENT,
    Numeração        INT,
    Tipo_Localização VARCHAR (10) 
);

CREATE TABLE endereço (
    id_endereço INTEGER      PRIMARY KEY AUTOINCREMENT,
    Rua         VARCHAR (40),
    Numero      INT,
    Bairro      VARCHAR (40),
    Cidade      VARCHAR (40),
    Estado      VARCHAR (40),
    Cep         VARCHAR (40),
    id_cliente  INTENGER,
    FOREIGN KEY (
        id_cliente
    )
    REFERENCES cliente (id_cliente) 
);


CREATE TABLE produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    descrição  VARCHAR (50),
    Validade   DATE,
    Lote       VARCHAR (20) 
);


CREATE TABLE estoqueatual (
    id_estoqueatual INTEGER PRIMARY KEY AUTOINCREMENT,
    quatidade       INT,
    id_produto      INTEGER,
    id_deposito     INTEGER,
    FOREIGN KEY (id_produto)
    REFERENCES produto (id_produto),
    FOREIGN KEY (id_deposito)
    REFERENCES deposito (id_deposito) 
);


CREATE TABLE pedido (
    id_pedido   INTEGER PRIMARY KEY AUTOINCREMENT,
    Data_pedido DATE,
    id_cliente  INT,
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id_cliente) 
);


CREATE TABLE itempedido (
    id_itempedido INTEGER PRIMARY KEY AUTOINCREMENT,
    QuantidadeP   INT,
    id_pedido     INTEGER,
    id_produto    INTEGER,
    FOREIGN KEY (id_pedido)
    REFERENCES pedido (id_pedido),
    FOREIGN KEY (id_produto)
    REFERENCES produto (id_produto)
);

CREATE TABLE movimentação (
    id_movimentação INTEGER      PRIMARY KEY AUTOINCREMENT,
    QuantidadeM     INT,
    Tipo_mov        VARCHAR (40),
    Data_mov        DATE,
    id_produto      INTEGER,
    id_deposito     INTEGER,
    id_usuario      INTEGER,
    FOREIGN KEY (id_produto)
    REFERENCES produto (id_produto),
    FOREIGN KEY (id_deposito)
    REFERENCES deposito (id_deposito),
    FOREIGN KEY (id_usuario)
    REFERENCES usuario (id_usuario) 
);

CREATE TABLE usuario (
    id_usuario INTEGER      PRIMARY KEY AUTOINCREMENT,
    Login      VARCHAR (10) NOT NULL,
    Senha      CHAR (8)     NOT NULL
);

CREATE TABLE itempedidoo(
    id_itempedido INTEGER PRIMARY KEY AUTOINCREMENT,

    quantidade    INT,

    id_pedido     INTEGER,
    id_produto    INTEGER,

    FOREIGN KEY (id_pedido)
    REFERENCES pedido (id_pedido),
    
    FOREIGN KEY (id_produto)
    REFERENCES produto (id_produto) 
);
