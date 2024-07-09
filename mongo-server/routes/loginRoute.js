const express = require('express');
const router = express.Router();
const { check, validationResult } = require('express-validator');
const { login } = require('../controllers/userController');

router.post(
    '/',
    [
        check('email', 'Please include a valid email').isEmail(),
        check('password', 'Password is required').exists()
    ],
    (req, res) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({ errors: errors.array() });
        }
        login(req, res);
    }
);

module.exports = router;
