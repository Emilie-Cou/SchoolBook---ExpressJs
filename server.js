// import des librairies
require('dotenv').config();

const testDB = require('./models/db');
const bodyParser = require('body-parser');
const express = require('express');
const routerBase = require('./routers/base.router');

// Créaction de l'app express
const app = express();

// Test de la db
testDB.testDbConnection();

// Middlewares d'entrées
    // Détermine que le dossier views est le dossier de base des fichiers vues
app.set('view engine', 'ejs');
app.set('views', './views');

    // Permet d'utiliser et de lire le json
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true}));

    // Permet de faciliter l'affichage des images: dans la source de la balise image, je mets le chemin à partir du dossier spécifié
app.use(express.static('public/pics'));

// Routage
app.use('', routerBase);

// Gestion des 404
app.all('*', (req, res) => {
    res.status(404).send('Je trouve pas ta page!!!');
});

// Gestion des autres erreurs globales
app.use((error, req, res, next) => {
    console.log('Error URL: ' , req.url);
    console.log('Error Message: ' , error.message);
    res.status(500);
    res.send('Internal Server Error');
});

// Démarrage du serveur
app.listen(process.env.PORT, () => {
    console.log(`Server is running on port ${process.env.PORT}`);
});