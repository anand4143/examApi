const express = require('express');
const gangcontentController = require('../controllers/gangcontent.controller');
const router = express.Router();
const jwtMiddleware = require('../config/jwt-middleware');

router.get('/content/:gangId',jwtMiddleware.checkToken,gangcontentController.allBatchContent);
module.exports = router;
