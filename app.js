const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const courseRouter = require('./routes/courses');
const userRouter = require('./routes/user');
const gangRouter = require('./routes/gang');
const gangContentRouter = require('./routes/gangcontent');
const examRouter = require('./routes/exam');
const testRouter = require('./routes/test');
const contactusRouter = require('./routes/contactus');
const cors = require('cors');


app.use(bodyParser.urlencoded({
    extended: true
  }));
  app.use(bodyParser.json());
  app.use(cors());
app.use('/api/courses/',courseRouter);
app.use('/api/gangs/',gangRouter);
app.use('/api/gangcontent/',gangContentRouter);
app.use('/api/auth/', userRouter);
app.use('/api/exam/', examRouter);
app.use('/api/test/',testRouter);
app.use('/api/contactus/',contactusRouter);


module.exports = app;