// controllers/guideTouristiqueController.js
const GuideTouristique = require('../models/GuideTouristique');

exports.createGuideTouristique = async (req, res) => {
  const { name, contact, languages, description } = req.body;

  try {
    const guideTouristique = new GuideTouristique({
      name,
      contact,
      languages,
      description
    });

    await guideTouristique.save();
    res.status(201).json(guideTouristique);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

exports.getGuidesTouristiques = async (req, res) => {
  try {
    const guidesTouristiques = await GuideTouristique.find();
    res.json(guidesTouristiques);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};
