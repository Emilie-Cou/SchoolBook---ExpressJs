const express = require('express');
const routerProf = express.Router();

const profController = require('../controllers/prof.controller');

routerProf.get('', profController.getAll);

module.exports = routerProf;