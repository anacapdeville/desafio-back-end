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
    description VARCHAR(100) NOT NULL,
    image VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO users (id, name, email, password, role) VALUES
    ('1', 'Admin', 'admin@admin.com', '123456', 'admin'),
    ('2', 'testuser', 'client@client.com', '123456', 'client');

INSERT INTO animals (id, name, class, description, image) VALUES
  ('1', 'Baleia-jubarte', 'Mamífero', 'Mamífero marinho que ocorre na maioria dos oceanos', 'http://localhost:3001/images/baleia_jubarte.png'),
  ('2', 'Sapo-de-unha-negra', 'Anfíbio', 'Vive enterrado durante o dia em galerias que vão de 6 a 20 cm de profundidade cavadas com duas poderosas "esporas", que são duas calosidades enrijecidas do metatarso nas patas anteriores', 'http://localhost:3001/images/sapo.jpg'),
  ('3', 'Peixe-lua', 'Peixe', 'É o peixe ósseo mais pesado do mundo, possui a mesma toxina que os baiacus, e não se adapta a viver bem em cativeiro.', 'http://localhost:3001/images/peixe_lua.jpg'),
  ('4', 'Leão', 'Mamífero', 'Habita preferencialmente as savanas e pastagens abertas, mas pode ser encontrado em regiões mais arbustivas. É um animal sociável que vive em grupos que consiste das leoas e suas crias, o macho dominante e alguns machos jovens que ainda não alcançaram a maturidade sexual.', 'http://localhost:3001/images/leao.jpg'),
  ('5', 'Urso-polar', 'Mamífero', ' Ele é o maior carnívoro terrestre conhecido e também o maior urso, juntamente com o urso-de-kodiak, que tem aproximadamente o mesmo tamanho. Embora esteja relacionado com o urso-pardo, esta espécie evoluiu para ocupar um estreito nicho ecológico, com muitas características morfológicas adaptadas para as baixas temperaturas, para se mover sobre neve, gelo e na água, e para caçar focas, que compreende a maior porção de sua dieta.', 'http://localhost:3001/images/urso_polar.jpg'),
  ('6', 'Salamandra-de-fogo', 'Anfíbio', 'A sua pele é característica de cor negra com manchas amarelas. Medem entre 14 e 20 cm de comprimento. As larvas são aquáticas mas o adulto é terrestre.', 'http://localhost:3001/images/salamandra-de-fogo.jpg'),
  ('7', 'Peixe-boi', 'Peixe', 'Habitam geralmente em águas costeiras e estuarinas quentes e rasas e pântanos. A Flórida é a localização mais ao norte onde vivem, pois a sua baixa taxa metabólica torna-se difícil no frio e não sobrevivem abaixo dos 15 °C.', 'peixe-boi.jpg');
