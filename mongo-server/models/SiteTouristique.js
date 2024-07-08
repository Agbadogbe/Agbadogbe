// models/SiteTouristique.js
const mongoose = require('mongoose');

const SiteTouristiqueSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  location: {
    type: String,
    required: true
  },
  description: {
    type: String
  }
});

module.exports = mongoose.model('SiteTouristique', SiteTouristiqueSchema);
