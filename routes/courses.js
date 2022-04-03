const express = require('express');
const courseController = require('../controllers/course.controller');
const router = express.Router();
const jwtMiddleware = require('../config/jwt-middleware');

router.get('/list',jwtMiddleware.checkToken, courseController.index);
router.post('/create',jwtMiddleware.checkToken,courseController.save); 
router.get('/getAllUserCourses',jwtMiddleware.checkToken, courseController.getAllUserCourses);
router.get('/courseGang/:id', jwtMiddleware.checkToken, courseController.courseGang );

module.exports = router;