const express = require('express');
const routerOther = express.Router();
const otherController = require('../controllers/other.controller');

routerOther.get('/', otherController.index);

module.exports = routerOther;