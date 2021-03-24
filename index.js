const express = require('express');
const cors = require('cors');
const userController = require('./controller/userController');
const animalController = require('./controller/animalController');

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use('/images', express.static(`${__dirname}/images`));

app.use('/', userController, animalController);

const PORT = 3001;

app.listen(PORT, () => console.log(`Ouvindo na porta ${PORT}`));