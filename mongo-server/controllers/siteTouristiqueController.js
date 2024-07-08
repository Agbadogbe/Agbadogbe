// controllers/siteTouristiqueController.js
const SiteTouristique = require('../models/SiteTouristique');

exports.createSiteTouristique = async (req, res) => {
  const { name, location, description } = req.body;

  try {
    const siteTouristique = new SiteTouristique({
      name,
      location,
      description
    });

    await siteTouristique.save();
    res.status(201).json(siteTouristique);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

exports.getSitesTouristiques = async (req, res) => {
  try {
    const sitesTouristiques = await SiteTouristique.find();
    res.json(sitesTouristiques);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};
