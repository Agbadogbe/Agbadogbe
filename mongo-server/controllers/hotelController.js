// controllers/hotelController.js
const Hotel = require('../models/Hotel');

exports.createHotel = async (req, res) => {
  const { name, address, rating, description } = req.body;

  try {
    const hotel = new Hotel({
      name,
      address,
      rating,
      description
    });

    await hotel.save();
    res.status(201).json(hotel);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};

exports.getHotels = async (req, res) => {
  try {
    const hotels = await Hotel.find();
    res.json(hotels);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
};
