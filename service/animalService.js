const animalModel = require('../model/animalModel');

const findAllAnimals = () => animalModel.findAllAnimals();

module.exports = {
  findAllAnimals,
}