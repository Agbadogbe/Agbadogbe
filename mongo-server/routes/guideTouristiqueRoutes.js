// routes/guideTouristiqueRoutes.js
const express = require('express');
const router = express.Router();
const { createGuideTouristique, getGuidesTouristiques } = require('../controllers/guideTouristiqueController');

router.post('/guides-touristiques', createGuideTouristique);
router.get('/guides-touristiques', getGuidesTouristiques);

module.exports = router;
