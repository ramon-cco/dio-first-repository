CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(40) NOT NULL,
    nascimento DATE)

INSERT INTO pessoas (nome, nascimento) VALUES ('Ramon', '1989-02-12')
INSERT INTO pessoas (nome, nascimento) VALUES ('Pedro', '2000-09-19')
INSERT INTO pessoas (nome, nascimento) VALUES ('Ramon', '1998-06-20')

SELECT * FROM pessoa ORDER by nome DESC;

ALTER TABLE 'pessoas' ADD 'genero' VARCHAR(1) NOT NULL AFTER 'nascimento';

UPDATE pessoa SET genero='M' WHERE id=2
SELECT COUNT(id), genero FROM `pessoa` GROUP BY genero;