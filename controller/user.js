const jwt = require('jsonwebtoken');
const userService = require('../service/userService');

const secret = 'secret';
const jwtConfig = {
  expiresIn: '7d',
  algorithm: 'HS256',
};

const login = async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await userService.findUserByEmail(email);

    if (!user || user.password !== password) {
      return res.status(401).json({ message: 'Usuário não existe ou senha inválida' });
    }

    const token = jwt.sign({ data: user }, secret, jwtConfig);

    return res.status(200).json({ ...user, token });
  } catch (error) {
    return res.status(500).json({ message: error.message });
  }
};

const register = async (req, res) => {
  try {
    const { name, email, password, role } = req.body;

    const token = jwt.sign({ data: [email, password] }, secret, jwtConfig);

    const user = await userService.findUserByEmail(email);
    if (user) return res.status(409).json({ message: 'Email already registered' });

    await userService.createUser(name, email, password, role);

    const findNeWUser = await userService.findUserByEmail(email);

    return res.status(201).json({ ...findNeWUser, token });
  } catch (error) {
    return res.status(500).json({ message: error.message });
  }
};

module.exports = {
  login,
  register,
};
