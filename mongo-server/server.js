// server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
const connectDB = require('./config');

dotenv.config();

const userRoutes = require('./routes/userRoutes');
const hotelRoutes = require('./routes/hotelRoutes');
const restaurantRoutes = require('./routes/restaurantRoutes');
const siteTouristiqueRoutes = require('./routes/siteTouristiqueRoutes');
const guideTouristiqueRoutes = require('./routes/guideTouristiqueRoutes');

const app = express();
const port = process.env.PORT || 3000;

connectDB();

app.use(cors());
app.use(bodyParser.json());

app.use('/api', userRoutes);
app.use('/api', hotelRoutes);
app.use('/api', restaurantRoutes);
app.use('/api', siteTouristiqueRoutes);
app.use('/api', guideTouristiqueRoutes);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
