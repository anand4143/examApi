const express = require('express');
const jwtMiddleware = require('../config/jwt-middleware');
const testController = require('../controllers/test.controller');
const router = express.Router();

router.get('/allTest/:bId', testController.testList);

module.exports = router;