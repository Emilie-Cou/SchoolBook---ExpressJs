const profModel = require('../models/prof.model');

const profController = {
    getAll : async (req, res) => {
        let allProfs = await profModel.getAll();
        res.render('index.ejs', {page : 'pages/prof/profAll.ejs', allProfs : allProfs});
    },
};

module.exports = profController;