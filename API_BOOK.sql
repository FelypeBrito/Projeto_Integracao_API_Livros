/********************************************
* Criação da tabela "dados_comunicacao_book"
*********************************************/
CREATE TABLE dados_comunicacao_book (
    id        NUMBER PRIMARY KEY,
    id_livro  NUMBER(2),
    flag      NUMBER(1)
);


/**************************************************
* Criação da sequência "DADOS_COMUNICACAO_book_SEQ"
***************************************************/
CREATE SEQUENCE DADOS_COMUNICACAO_book_SEQ
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    ORDER;


/***********************************************
* Criação do gatilho "tr_dados_comunicacao_book"
************************************************/
CREATE OR REPLACE TRIGGER tr_dados_comunicacao_book
    BEFORE INSERT ON dados_comunicacao_book
    FOR EACH ROW
BEGIN
    SELECT DADOS_COMUNICACAO_book_SEQ.NEXTVAL INTO :NEW.id FROM dual;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Erro: ' || SQLERRM);
END;


/*************************
* Criação da tabela "book"
**************************/
CREATE TABLE book (
    id_livro       INT PRIMARY KEY,
    ano            INT,
    titulo         VARCHAR(255),
    identificador  VARCHAR(100),
    editora        VARCHAR(255),
    isbn           VARCHAR(20),
    paginas        INT,
    criadoEm       TIMESTAMP
);
