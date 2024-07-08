// routes/siteTouristiqueRoutes.js
const express = require('express');
const router = express.Router();
const { createSiteTouristique, getSitesTouristiques } = require('../controllers/siteTouristiqueController');

router.post('/sites-touristiques', createSiteTouristique);
router.get('/sites-touristiques', getSitesTouristiques);

module.exports = router;
