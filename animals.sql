DROP DATABASE IF EXISTS Animals;
CREATE DATABASE IF NOT EXISTS Animals;

USE Animals;

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(20) NOT NULL,
    role VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS animals (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    class VARCHAR(100) NOT NULL,
    description VARCHAR(600) NOT NULL,
    image VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO users (id, name, email, password, role) VALUES
    ('1', 'Admin', 'admin@admin.com', '123456', 'admin'),
    ('2', 'testuser', 'client@client.com', '123456', 'client');

INSERT INTO animals (id, name, class, description, image) VALUES
  ('1', 'Baleia-jubarte', 'Mamífero', 'Mamífero marinho', 'http://localhost:3001/images/baleia_jubarte.png'),
  ('2', 'Sapo-de-unha-negra', 'Anfíbio', 'Vive enterrado durante o dia em galerias', 'http://localhost:3001/images/sapo.jpg'),
  ('3', 'Peixe-lua', 'Peixe', 'É o peixe ósseo mais pesado do mundo', 'http://localhost:3001/images/peixe_lua.jpg'),
  ('4', 'Leão', 'Mamífero', 'Habita preferencialmente as savanas e pastagens abertas', 'http://localhost:3001/images/leao.jpg'),
  ('5', 'Urso-polar', 'Mamífero', ' Ele é o maior carnívoro terrestre conhecido', 'http://localhost:3001/images/urso_polar.jpg'),
  ('6', 'Salamandra-de-fogo', 'Anfíbio', 'As larvas são aquáticas mas o adulto é terrestre', 'http://localhost:3001/images/salamandra-de-fogo.jpg'),
  ('7', 'Peixe-boi', 'Peixe', 'Habitam geralmente em águas costeiras e estuarinas quentes e rasas e pântanos', 'http://localhost:3001/images/peixe-boi.jpg');
