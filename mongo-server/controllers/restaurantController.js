// controllers/restaurantController.js
const Restaurant = require('../models/Restaurant');

exports.createRestaurant = async (req, res) => {
  const { name, address, rating, description } = req.body;

  try {
    const restaurant = new Restaurant({
      name,
      address,
      rating,
      description
    });

    await restaurant.save();
    res.status(201).json(restaurant);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

exports.getRestaurants = async (req, res) => {
  try {
    const restaurants = await Restaurant.find();
    res.json(restaurants);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};
