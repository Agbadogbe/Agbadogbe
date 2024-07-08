// routes/restaurantRoutes.js
const express = require('express');
const router = express.Router();
const { createRestaurant, getRestaurants } = require('../controllers/restaurantController');

router.post('/restaurants', createRestaurant);
router.get('/restaurants', getRestaurants);

module.exports = router;
