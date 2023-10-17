const express = require('express');
const routerSbStudent = express.Router();

const sbStudentController = require('../controllers/sbStudent.controller');

routerSbStudent.get('/student/:id', sbStudentController.student);
routerSbStudent.post('/studentAddCom', sbStudentController.studentAddCom);
routerSbStudent.post('/studentSendMsg', sbStudentController.studentSendMsg);

module.exports = routerSbStudent;