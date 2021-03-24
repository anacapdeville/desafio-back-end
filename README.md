# Animais vertebrados


## Tabela de conteúdos
  * [Sobre](#Sobre)
  * [Instalação](#instalação)
  * [Tecnologias](#tecnologias)

## Sobre
Esse projeto é uma api para a aplicação front-end que se encontra no repositório: https://github.com/anacapdeville/desafio-front-end

Foi utilizado o MySQL como banco de dados.

Estão disponíveis os seguintes endpoints:
- /login - faz login do usuário
- /register - registra um novo usuário e envia os dados para o banco
- /animals - retorna todos os animais cadastrados no banco de dados
- /newanimal - grava no banco os dados do novo animal inserido
- /upload - faz upload da foto do novo animal inserido


## Instalação
Para criar o banco de dados, as tabelas e inserir os dados utilize o código arquivo animals.sql que está na pasta raiz do projeto.

1. Acesse o terminal e clone o projeto:

```
git clone git@github.com:anacapdeville/desafio-back-end.git
```

2. Acesse o diretório:
```
cd desafio-back-end
```

3. Instale as dependências:
```
npm install
```

4. Inicializa o projeto:
```
npm run start
```

É necessário criar na raiz do projeto um arquivo .env

Dentro desse arquivo estarão os dados para acessar o MySQL, conforme exemplificado abaixo:

```
MYSQL_USER=root
MYSQL_PASSWORD=sua_senha
HOSTNAME=localhost
```

## Tecnologias
Esse projeto foi desenvolvido utilizando Cors, Dotenv, Express, Jsonwebtoken, Multer, Mysql2 e Nodemon.