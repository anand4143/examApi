const express = require('express');
const contactusController = require('../controllers/contactus.controller');
const router = express.Router();
const jwtMiddleware = require('../config/jwt-middleware');
router.post('/save',jwtMiddleware.checkToken, contactusController.save);

module.exports = router;