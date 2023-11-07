const sbProfModel = require('../models/sbProf.model');
const commentSchema = require('../schemas/comment.schema');
let articleSchema = require('../schemas/article.schema');

// Pour les photos
    // Imports multer
const {diskStorage} = require('multer');
const multer = require('multer');
const path = require('path');
    // Méthode qui définit le lieu de stockage et le nom
const place = diskStorage({
    destination : 'public/pics/uploads',
    filename : (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname))
    },
});
const upload = multer({storage : place});


const sbProfController = {
    prof : async (req, res) => {
        let idParams = req.params.id;
        let articlesProf = await sbProfModel.prof(idParams);
        let messagesProf = await sbProfModel.profMsg(idParams);
        res.render('index.ejs', {page: 'pages/schoolbook/prof.ejs', artProf : articlesProf, msgProf : messagesProf});
    },
    
    profAddCom : async (req, res) => {
        try {
            const validatedData = await commentSchema.validate(req.body);
            let redirectId = await sbProfModel.profAddCom(validatedData);
            res.redirect(`/schoolbook/${redirectId}`);
        }
        catch (error) {
            res.status(400).json({error : error.message});
        }
    },
    
    profAddArt : async (req, res) => {
        try {
            const validatedData = await articleSchema.validate(req.body);
            let imgPathSplit = req.file.path.split('pics'); // Utilisation du split() pour ne garder qu'un certain morceau du nom ↓↓
            validatedData.imgPath = imgPathSplit[1];        // afin de les stocker au bon endroit pour pouvoir les afficher correctement
            let redirectId = await sbProfModel.profAddArt(validatedData);
            res.redirect(`/schoolbook/${redirectId}`);
        }
        catch (error) {
            res.status(400).json({error : error.message});
        }
    },
};

const uploadMiddleware = upload.single('img');

module.exports = {
    sbProfController,
    uploadMiddleware,
};