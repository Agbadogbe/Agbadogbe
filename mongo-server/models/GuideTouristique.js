// models/GuideTouristique.js
const mongoose = require('mongoose');

const GuideTouristiqueSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  contact: {
    type: String,
    required: true
  },
  languages: {
    type: [String],
    required: true
  },
  description: {
    type: String
  }
});

module.exports = mongoose.model('GuideTouristique', GuideTouristiqueSchema);
