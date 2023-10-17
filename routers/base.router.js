const express = require('express');
const router = express.Router();

const routerAbout = require('./about.router');
const routerClasse = require('./classe.router');
const routerProf = require('./prof.router');
const routerComment = require('./comment.router');
const routerConnection = require('./connection.router');
const routerSbProf = require('./sbProf.router');
const routerSbStudent = require('./sbStudent.router');
const routerOther = require('./other.router');

router.use('/about', routerAbout);
router.use('/classe', routerClasse);
router.use('/professor', routerProf);
router.use('/comment', routerComment);
router.use('/connection', routerConnection);
router.use('/schoolbook', routerSbProf);
router.use('/schoolbook', routerSbStudent);
router.use('/', routerOther);

module.exports = router;