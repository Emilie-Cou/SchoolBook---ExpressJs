const express = require('express');
const routerAbout = express.Router();

const aboutController = require('../controllers/about.controller');

routerAbout.get('', aboutController.about);

module.exports = routerAbout;