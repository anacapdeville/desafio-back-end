const { Router } = require('express');
const animalService = require('../service/animalService');

const router = Router();

router.get('/animals', async (req, res) => {
  try {
    const animals = await animalService.findAllAnimals();
  
    return res.status(200).json(animals)    
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }

})

module.exports = router;
