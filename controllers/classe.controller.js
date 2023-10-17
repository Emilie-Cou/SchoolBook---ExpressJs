const classeModel = require('../models/classe.model');

const classeController = {
    getAll : async (req, res) => {
        let allClasses = await classeModel.getAll();
        res.render('index.ejs', {page : 'pages/classe/classAll.ejs', allClasses : allClasses});
    },

    getOne : async (req, res) => {
        let idParams = req.params.id;
        let classe = await classeModel.getOne(idParams);
        res.render('index.ejs', {page : 'pages/classe/classId.ejs', classe : classe});
    },

    addClasse : (req, res) => {

    },

    updateClasse : (req, res) => {

    },

    deleteClasse : (req, res) => {
        
    },
};

module.exports = classeController;