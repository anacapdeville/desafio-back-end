const animalModel = require('../model/animalModel');

const findAllAnimals = () => animalModel.findAllAnimals();

const newAnimal = (nome, classe, description, image) => animalModel.newAnimal(nome, classe, description, image);

const validateFields = (req, res, next) => {
  const { nome, classe, description, image } = req.body;

  if (!nome || !classe || !description || !image) return res.status(400).json({ message: 'All fields must be filled' });

  next();
}

module.exports = {
  findAllAnimals,
  newAnimal,
  validateFields,
};
