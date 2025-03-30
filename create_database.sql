--- Modelagem MYSQL para o banco de dados de um site de venda de produtos de informática

CREATE DATABASE IF NOT EXISTS dell_laptops;
USE dell_laptops;

CREATE TABLE produto (
    idProduto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_produto VARCHAR(255),
    modelo INT,
    preco DECIMAL(10,2),
    descricao VARCHAR(255),
    id_processador INT,
    id_so INT,
    id_ram INT,
    id_armazenamento INT,
    id_placa_video INT,
    id_tela INT,
    id_audio INT,
    id_teclado INT,
    id_bateria INT,
    id_Dimensoes_Peso INT,
    id_portas_conexoes INT,
    id_camera INT,
    id_chassi INT,
    id_wireless INT,
    CONSTRAINT fk_produto_processador FOREIGN KEY (id_processador) REFERENCES processador(id_processador),
    CONSTRAINT fk_produto_sistema_operacional FOREIGN KEY (id_so) REFERENCES sistema_operacional(id_so),
    CONSTRAINT fk_produto_memoria_ram FOREIGN KEY (id_ram) REFERENCES memoria_ram(id_ram),
    CONSTRAINT fk_produto_armazenamento FOREIGN KEY (id_armazenamento) REFERENCES armazenamento(id_armazenamento),
    CONSTRAINT fk_produto_placa_de_video FOREIGN KEY (id_placa_video) REFERENCES placa_de_video(id_placa_video),
    CONSTRAINT fk_produto_tela FOREIGN KEY (id_tela) REFERENCES tela(id_tela),
    CONSTRAINT fk_produto_audio FOREIGN KEY (id_audio) REFERENCES audio(id_audio),
    CONSTRAINT fk_produto_teclado FOREIGN KEY (id_teclado) REFERENCES teclado(id_teclado),
    CONSTRAINT fk_produto_bateria FOREIGN KEY (id_bateria) REFERENCES bateria(id_bateria),
    CONSTRAINT fk_produto_dimensoes_peso FOREIGN KEY (id_Dimensoes_Peso) REFERENCES Dimensoes_Peso(id_Dimensoes_Peso),
    CONSTRAINT fk_produto_portas_conexoes FOREIGN KEY (id_portas_conexoes) REFERENCES portas_conexoes(id_portas_conexoes),
    CONSTRAINT fk_produto_camera FOREIGN KEY (id_camera) REFERENCES Camera(id_camera),
    CONSTRAINT fk_produto_chassi FOREIGN KEY (id_chassi) REFERENCES chassi(id_chassi),
    CONSTRAINT fk_produto_wireless FOREIGN KEY (id_wireless) REFERENCES Wireless(id)
);

CREATE TABLE processador (
    id_processador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_processador VARCHAR(255)
);

CREATE TABLE sistema_operacional (
    id_so INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_so VARCHAR(255)
);

CREATE TABLE memoria_ram (
    id_ram INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    capacidade_ram VARCHAR(50),
    tipo_ram INT,
    frequencia_ram VARCHAR(50),
    expansivel_ate_ram VARCHAR(50)
);

CREATE TABLE armazenamento (
    id_armazenamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_armazenamento VARCHAR(50),
    capacidade_armazenamento VARCHAR(50),
    interface_armazenamento VARCHAR(50)
);

CREATE TABLE placa_de_video (
    id_placa_video INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    modelo VARCHAR(255)
);

CREATE TABLE tela (
    id_tela INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tamanho FLOAT,
    resolucao VARCHAR(50),
    painel VARCHAR(50),
    touchscreen_ BOOLEAN
);

CREATE TABLE audio (
    id_audio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    alto_falante VARCHAR(255)
);

CREATE TABLE teclado (
    id_teclado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_teclado INT,
    iluminacao INT
);

CREATE TABLE bateria (
    id_bateria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    num_celulas INT,
    capacidade VARCHAR(50)
);

CREATE TABLE Dimensoes_Peso (
    id_Dimensoes_Peso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    altura_cm DECIMAL(10,2),
    largura_cm DECIMAL(10,2),
    profundidade_cm DECIMAL(10,2),
    peso_kg DECIMAL(10,2)
);

CREATE TABLE portas_conexoes (
    id_portas_conexoes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usb VARCHAR(50),
    hdmi VARCHAR(50),
    tomada_alimentação INT
);

CREATE TABLE Camera (
    id_camera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE chassi (
    id_chassi INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE Wireless (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

