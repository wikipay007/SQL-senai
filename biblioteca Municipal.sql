CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(60),
    autor VARCHAR(30),
    anoPublicacao VARCHAR(4),
    genero VARCHAR(50),
    quantidadeDisponivel INT
);

CREATE TABLE leitores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nomeLeitor VARCHAR (100),
    dataNascimento DATE,
    endereco VARCHAR (100),
    telefone VARCHAR (10)
);

CREATE TABLE emprestimos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idLivro INT,
    idLeitor INT,
    dataImprestimo DATE,
    dataDevolucao DATE,
    FOREIGN KEY (idLivro) REFERENCES livros(id),
    FOREIGN KEY (idLeitor) REFERENCES leitores(id)
);


CREATE TABLE reservas(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idLivro INT,
    idLeitor INT,
    dataReserva DATE,
    statusReserva VARCHAR(15),
    FOREIGN KEY (idLivro) REFERENCES livros(id),
    FOREIGN KEY (idLeitor) REFERENCES leitores(id)
);


-- Dados da tabela de livros
INSERT INTO livros (titulo, autor, anoPublicacao, genero, quantidadeDisponivel) 
VALUES ('Diario de um banana', 'Jeff Kinney', '2014', 'Comedia', 22);
INSERT INTO livros (titulo, autor, anoPublicacao, genero, quantidadeDisponivel) 
VALUES ('Harry Potter', 'J.K Rowling', '1997', 'Aventura', 50);
INSERT INTO livros (titulo, autor, anoPublicacao, genero, quantidadeDisponivel) 
VALUES ('A distância das coisas', 'Desconhecido', '0000', 'Misterio', 1);


-- Dados da tabela de leitores
INSERT INTO leitores (nomeLeitor, dataNascimento, endereco, telefone) 
VALUES ('Arthur Rosa', '2004-10-02', 'Rua da direita, 800', 4682-8022);
INSERT INTO leitores (nomeLeitor, dataNascimento, endereco, telefone) 
VALUES ('Odair Rosa', '1980-10-02', 'Rua da direita, 800', 7070-7070);


-- Dados da tabela de emprestimos
INSERT INTO emprestimos (idLivro, idLeitor, dataImprestimo, dataDevolucao) 
VALUES (1, 1, '2024-10-01', '2024-10-15');

INSERT INTO emprestimos (idLivro, idLeitor, dataImprestimo, dataDevolucao) 
VALUES (2, 2, '2024-10-05', '2024-10-20');

INSERT INTO emprestimos (idLivro, idLeitor, dataImprestimo, dataDevolucao)
VALUES (3, 1, '2024-10-05', '2024-10-07');


-- Inserindo dados na tabela de reservas
INSERT INTO reservas (idLivro, idLeitor, dataReserva, statusReserva) 
VALUES (1, 1, '2024-10-20', 'Ativa');

INSERT INTO reservas (idLivro, idLeitor, dataReserva, statusReserva) 
VALUES (2, 2, '2024-10-21', 'Ativa');

INSERT INTO reservas (idLivro, idLeitor, dataReserva, statusReserva) 
VALUES (3, 1, '2024-10-24', 'Concluida');

SELECT * FROM livros;
SELECT * FROM leitores;
SELECT * FROM emprestimos;
SELECT * FROM reservas;










