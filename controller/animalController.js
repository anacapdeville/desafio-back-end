const { Router } = require('express');
const animalService = require('../service/animalService');
const multer = require('multer');

const router = Router();

router.get('/animals', async (req, res) => {
  try {
    const animals = await animalService.findAllAnimals();

    return res.status(200).json(animals)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
});

const storage = multer.diskStorage({
  destination: (req, file, callback) => {
    callback(null, 'images');
  },
  filename: (req, file, callback) => {
    callback(null, file.originalname);
  },
});

const upload = multer({ storage });

router.post('/upload', upload.single('file'), (req, res) => {
  try {
    res.send().status(200);
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
});

router.post('/newanimal', animalService.validateFields, async (req, res) => {
  try {
    const { nome, classe, description, image } = req.body;

    await animalService.newAnimal(nome, classe, description, image);

    return res.status(200).json({ message: "animal cadastrado" });
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
});

module.exports = router;
