const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
const connectDB = require('./config');

dotenv.config();

const loginRoute = require('./routes/loginRoute');
const registerRoute = require('./routes/registerRoute');
const hotelRoutes = require('./routes/hotelRoutes');
const restaurantRoutes = require('./routes/restaurantRoutes');
const siteTouristiqueRoutes = require('./routes/siteTouristiqueRoutes');
const guideTouristiqueRoutes = require('./routes/guideTouristiqueRoutes');

const app = express();
const port = process.env.PORT || 3000;

connectDB();

app.use(cors());
app.use(bodyParser.json());

app.use('/login', loginRoute);
app.use('/register', registerRoute);
app.use('/hotel', hotelRoutes);
app.use('/restaurant', restaurantRoutes);
app.use('/siteTouristique', siteTouristiqueRoutes);
app.use('/guideTouristique', guideTouristiqueRoutes);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
