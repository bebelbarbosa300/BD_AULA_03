CREATE DATABASE cine_senai_max;

USE cine_senai_max;

CREATE TABLE filmes (
id_filmes INT,
titulo VARCHAR(60),
genero VARCHAR(45),
duracao INT,
ano_lancamento INT,
preco_aluguel DOUBLE,
PRIMARY KEY (id_filmes)
);

CREATE TABLE atores (
id_autor INT,
nome_autor VARCHAR(60),
ano_lancamento INT,
nacionalidade VARCHAR(20),
sexo VARCHAR(10),
PRIMARY KEY (id_autor)
);

INSERT INTO filmes values 
(1, 'Tropa de Elite', 'ação', '115', '2007', '5.99');

select * from filmes;

DROP TABLE filmes;

SELECT titulo, genero FROM filmes  WHERE id_filmes = 6;

SELECT titulo, ano_lancamento FROM filmes WHERE id_filmes =33;

SELECT * FROM filmes WHERE id_filmes = 73;

DELETE FROM filmes WHERE id_filmes = 73;

SELECT id_filmes, titulo, genero FROM filmes WHERE nome = 'RIO 2';


UPDATE filmes SET preco_aluguel = preco_aluguel * 1.10 WHERE nome = 'Tropa de Elite';

SELECT titulo, genero, preco_aluguel 
FROM filmes
WHERE genero = 'Drama' OR genero =  'comedia';


SELECT titulo, ano_lancamento 
FROM filmes 
WHERE ano_lancamento BETWEEN 2001 AND 2005;


SELECT titulo, ano_lancamento, genero 
FROM filmes 
WHERE (genero = 'drama' OR genero = 'animação') AND ano_lancamento > 2009;


SELECT titulo, ano_lancamento, genero 
FROM filmes 
WHERE (genero = 'ação e aventura' OR genero = 'misterio e suspense')  AND ano_lancamento BETWEEN 2005 AND 2010;


SELECT titulo, ano_lancamento, genero 
FROM Filmes
WHERE (genero = 'Ação e aventura' OR genero = 'Mistério e suspense')
AND ano_lancamento BETWEEN 2005 AND 2010
AND preco_aluguel > 3;


set sql_safe_updates = 0;


UPDATE Filmes SET preco_aluguel = preco_aluguel * 1.10
WHERE preco_aluguel >= 4 AND preco_aluguel <= 5;


UPDATE filmes SET preco_aluguel = preco_aluguel * 1.15
WHERE preco_aluguel >= 2 AND preco_aluguel <= 3;


UPDATE Filmes SET preco_aluguel = preco_aluguel * 1.10
WHERE ano_lancamento BETWEEN 2001 AND 2003;


UPDATE Filmes SET preco_aluguel = preco_aluguel * 1.15
WHERE genero = 'Comédia' AND ano_lancamento = 2001;











