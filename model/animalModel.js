const connection = require('./connection');

const findAllAnimals = async (email) => {
  const [animals] = await connection.execute(
    'SELECT * FROM animals',
  );
  return animals;
};

module.exports = {
  findAllAnimals,
}