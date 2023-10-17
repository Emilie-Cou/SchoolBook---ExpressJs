const express = require('express');
const routerClasse = express.Router();

const classeController = require('../controllers/classe.controller');

routerClasse.get('', classeController.getAll);
routerClasse.get('/:id', classeController.getOne);
routerClasse.post('', classeController.addClasse);
routerClasse.patch('/:id', classeController.updateClasse);
routerClasse.delete('/:id', classeController.deleteClasse);

module.exports = routerClasse;