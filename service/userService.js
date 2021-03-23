const userModel = require('../model/userModel');

const findUserByEmail = (email) => userModel.findUserByEmail(email);

const validateFieldLogin = async (req, res, next) => {
  const { email, password } = req.body;

  if (!email && !password) return res.status(400).json({ message: 'All fields must be filled' });

  next();
};

const validateFieldName = (req, res, next) => {
  const { name } = req.body;

  if (!name) return res.status(400).json({ message: 'All fields must be filled' });

  next();
};

const createUser = async (name, email, password, role) => {
  await userModel.createUser(name, email, password, role);
  const user = { name, email, password, role };
  return user;
};

module.exports = {
  findUserByEmail,
  validateFieldLogin,
  validateFieldName,
  createUser,
};
