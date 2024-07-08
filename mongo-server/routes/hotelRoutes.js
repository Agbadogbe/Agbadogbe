// routes/hotelRoutes.js
const express = require('express');
const router = express.Router();
const { createHotel, getHotels } = require('../controllers/hotelController');

router.post('/hotels', createHotel);
router.get('/hotels', getHotels);

module.exports = router;
