const express = require('express');
const gangController = require('../controllers/gang.controller');
const router = express.Router();
const jwtConfig = require('../config/jwt-middleware');
const jwtMiddleware = require('../config/jwt-middleware');

router.get('/gangList',jwtMiddleware.checkToken,gangController.getGangsList);

module.exports = router;