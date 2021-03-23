const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const userController = require('./controller/userController');

const app = express();

app.use(bodyParser.json());
app.use(cors());
app.use('/images', express.static(`${__dirname}/images`));

app.use('/', userController);

const PORT = 3001;

app.listen(PORT, () => console.log(`Ouvindo na porta ${PORT}`));