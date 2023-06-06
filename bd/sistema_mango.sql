CREATE DATABASE sistema_mango;

USE sistema_mango;

CREATE TABLE responsavel(
id_responsavel INT NOT NULL AUTO_INCREMENT,
codigo_responsavel INT NOT NULL,
cpf_responsavel VARCHAR(11) NOT NULL,
nome_responsavel VARCHAR(50) NOT NULL,
usuario_responsavel VARCHAR (30) NOT NULL,
senha_responsavel VARCHAR (30) NOT NULL,
PRIMARY KEY (id_responsavel),
UNIQUE KEY (codigo_responsavel),
UNIQUE KEY (usuario_responsavel)
);

CREATE TABLE funcionario(
id_funcionario INT NOT NULL AUTO_INCREMENT,
codigo_funcionario INT NOT NULL,
nome_funcionario INT NOT NULL,
PRIMARY KEY (id_funcionario),
UNIQUE KEY (codigo_funcionario)
);

CREATE TABLE aluno(
id_aluno INT NOT NULL AUTO_INCREMENT,
rm_aluno INT NOT NULL,
nome_aluno VARCHAR(50) NOT NULL,
PRIMARY KEY (id_aluno),
UNIQUE KEY (rm_aluno)
);

CREATE TABLE alimento(
id_alimento INT NOT NULL AUTO_INCREMENT,
codigo_alimento INT NOT NULL,
nome_alimento VARCHAR(50) NOT NULL,
PRIMARY KEY (id_alimento),
UNIQUE KEY (codigo_alimento)
);

CREATE TABLE sessao(
id_sessao INT NOT NULL AUTO_INCREMENT,
data_sessao DATE NOT NULL,
hora_sessao TIME NOT NULL,
rm_aluno INT NOT NULL,
codigo_alimento INT NOT NULL,
codigo_funcionario INT NOT NULL,
PRIMARY KEY (id_sessao),
UNIQUE KEY (data_sessao),
FOREIGN KEY (rm_aluno) REFERENCES aluno (rm_aluno),
FOREIGN KEY (codigo_alimento) REFERENCES alimento (codigo_alimento),
FOREIGN KEY (codigo_funcionario) REFERENCES funcionario (codigo_funcionario)
);

CREATE TABLE feedback(
id_feedback INT NOT NULL AUTO_INCREMENT,
data_hora_feedback DATETIME NOT NULL, 
texto_feedback TEXT NOT NULL,
telefone_feedback VARCHAR(13) NOT NULL,
rm_aluno INT NOT NULL,
PRIMARY KEY (id_feedback),
FOREIGN KEY rm_aluno REFERENCES aluno (rm_aluno)
);