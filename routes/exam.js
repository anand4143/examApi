const express = require('express');
const router = express.Router();
const examController = require('../controllers/exam.controller');
const jwtMiddleware = require('../config/jwt-middleware');

router.get('/questionList/:testId',jwtMiddleware.checkToken, examController.index);
router.get('/compareUserTest/:testId',jwtMiddleware.checkToken, examController.compareUserTest);

module.exports = router;
