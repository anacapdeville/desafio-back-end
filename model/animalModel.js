const connection = require('./connection');

const findAllAnimals = async (email) => {
  const [animals] = await connection.execute(
    'SELECT * FROM animals',
  );
  return animals;
};

const newAnimal = async (nome, classe, description, image) => {
  await connection.execute(
    'INSERT INTO animals (name, class, description, image) VALUES (?,?,?,?)',
    [nome, classe, description, image],
  );
};

module.exports = {
  findAllAnimals,
  newAnimal,
}
