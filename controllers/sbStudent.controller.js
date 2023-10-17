const sbStudentModel = require('../models/sbStudent.model');
const commentSchema = require('../schemas/comment.schema');
const messageSchema = require('../schemas/message.schema');

const sbStudentController = {
    student : async (req, res) => {
        let idParams = req.params.id;
        let articlesStudent = await sbStudentModel.student(idParams);
        res.render('index.ejs', {page: 'pages/schoolbook/student.ejs', artStu : articlesStudent})
    },

    studentAddCom : async (req, res) => {
        try {
            const validatedData = await commentSchema.validate(req.body);
            let redirectId = await sbStudentModel.studentAddCom(validatedData);
            res.redirect(`/schoolbook/${redirectId}`)
        }
        catch (error) {
            res.status(400).json({error : error.message});
        }
    },

    studentSendMsg : async (req, res) => {
        try {
    // console.log(req.url);
            const validatedData = await messageSchema.validate(req.body);
            let redirectId = await sbStudentModel.studentSendMsg(validatedData);
            res.send('prout');
            res.redirect(`/schoolbook/prof/dir`);
            //res.redirect(`/schoolbook/${redirectId}`);
//TODO
//! Mettre une alerte pour confirmer l'envoi du message
        }
        catch (error) {
            res.status(400).json({error : error.message});
        }
    },
};

module.exports = sbStudentController;