CREATE TABLE Album 
( 
 codalbum INT,  
 id VARCHAR(n),  
 titulo VARCHAR(n),  
); 

CREATE TABLE Artistas 
( 
 codartistas VARCHAR(n) PRIMARY KEY,  
 nome INT,  
 id VARCHAR(n),  
); 

CREATE TABLE Usuario 
( 
 codusuario VARCHAR(n) PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 email VARCHAR(n) NOT NULL,  
 datanascimento DATE NOT NULL,  
 telefone FLOAT NOT NULL,  
 senha VARCHAR(n),  
 cpf FLOAT DEFAULT '14',  
); 

CREATE TABLE Historico 
( 
 codhistorico INT,  
 id FLOAT,  
 dataehora FLOAT,  
); 

CREATE TABLE Playlist 
( 
 codplaylist VARCHAR(n),  
 id INT,  
 nome INT,  
); 

CREATE TABLE Genero 
( 
 id VARCHAR(n),  
 nome VARCHAR(n),  
 codgenero VARCHAR(n),  
); 

CREATE TABLE Musica 
( 
 codmusica INT,  
 musica VARCHAR(n),  
 id VARCHAR(n),  
); 

ALTER TABLE Album ADD FOREIGN KEY(codalbum) REFERENCES Artistas (codalbum)
ALTER TABLE Artistas ADD FOREIGN KEY(nome) REFERENCES Genero (nome)
ALTER TABLE Usuario ADD FOREIGN KEY(senha) REFERENCES Playlist (senha)
ALTER TABLE Usuario ADD FOREIGN KEY(cpf) REFERENCES Historico (cpf)
ALTER TABLE Historico ADD FOREIGN KEY(codhistorico) REFERENCES Musica (codhistorico)
ALTER TABLE Playlist ADD FOREIGN KEY(codplaylist) REFERENCES Historico (codplaylist)
ALTER TABLE Genero ADD FOREIGN KEY(codgenero) REFERENCES Musica (codgenero)
ALTER TABLE Musica ADD FOREIGN KEY(codmusica) REFERENCES Album (codmusica)
