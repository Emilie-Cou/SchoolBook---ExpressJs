const express = require('express');
const routerConnection = express.Router();

const connectionController = require('../controllers/connection.controller');

routerConnection.get('/', connectionController.connectForm);
routerConnection.post('/connect', connectionController.connect);

module.exports = routerConnection;