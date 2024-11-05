CREATE DATABASE senai;
CREATE TABLE alunos(

		id INT PRIMARY KEY NOT NULL auto_increment,
        -- INT -> INTEIRO
        -- PRIMARE KEY -> (BYNCA VAZIO)
        -- AUTO_INCREMENT -> 1,2,3,4...
        nome VARCHAR(60), -- Quantidade de caracteres
        idade INT
);
INSERT INTO alunos (nome, idade) VALUES
('Arthur Rosa', 22),
('Layane', 20),
('Felca Gkay', 25);

SELECT * FROM alunos;
SELECT nome FROM alunos;

-- Alter table acrescenta a tabela
ALTER TABLE alunos
ADD email VARCHAR(80);

 ALTER TABLE alunos
 DROP COLUMN email; 

CREATE TABLE bolos2(  -- criado a tabela com nome de alunos

		id INT PRIMARY KEY NOT NULL auto_increment, -- Chave única, nunca vazia
        -- INT -> INTEIRO
        -- PRIMARE KEY -> (Chave prinária)
        -- NOT NULL -> NUNCA NULO (NUNCA VAZIO)
        -- AUTO_INCREMENT -> 1,2,3,4... se apagar o 4, o proximo é 5
        sabor VARCHAR(60), -- Quantidade de caracteres
        textura VARCHAR(80),
        cobertura VARCHAR (60)
);
INSERT INTO bolos2 (textura, sabor, cobertura) VALUES
('Fofo', 'chocolate', 'brigadeiro'),
('pão', 'trigo', 'null'),
('Duro', 'laranja', 'null');

ALTER TABLE bolos2
ADD cobertura VARCHAR(80);

ALTER TABLE bolos2
ADD preço VARCHAR(80);

ALTER TABLE bolos2
ADD peso VARCHAR(80);

-- if id == 1: remove
DELETE FROM bolos2 where id = 5;

UPDATE bolos2  SET textura = 'fofo' WHERE id = 3;
UPDATE bolos2  SET preço = 'R$20,00' WHERE id = 2;
UPDATE `bancodofamoso`.`bolos2` SET `textura` = 'Fofo' WHERE (`id` = '3');
UPDATE `bancodofamoso`.`bolos2` SET `preço` = 'R$35,00' WHERE (`id` = '3');
UPDATE `bancodofamoso`.`bolos2` SET `preço` = 'R$40,00' WHERE (`id` = '1');




DROP TABLE bolos2;
DROP TABLE bolos;

SELECT * FROM bolos2;
SELECT sabor FROM bolos2;

