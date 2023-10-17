const express = require('express');
const routerSbProf = express.Router();

const {sbProfController, uploadMiddleware} = require('../controllers/sbProf.controller');

routerSbProf.get('/prof/:id', sbProfController.prof);
routerSbProf.post('/profAddCom', sbProfController.profAddCom);
routerSbProf.post('/profAddArt', uploadMiddleware, sbProfController.profAddArt);

module.exports = routerSbProf;