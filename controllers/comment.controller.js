const commentModel = require('../models/comment.model');
const commentSchema = require('../schemas/comment.schema');

const commentController = {
    getAll : async (req, res) => {
        let allComment = await commentModel.getAll();
        res.render('index.ejs', {page : 'pages/comment/commentAll.ejs', allComment : allComment});
    },

    addCommentForm : async (req, res) => {
        res.render('index.ejs', {page : 'pages/comment/commentForm.ejs'});
    },

    addComment : async (req, res) => {
        try {
            const validatedData = await commentSchema.validate(req.body);
            await commentModel.addComment(validatedData);
            res.redirect('/comment');
        }
        catch (error) {
            res.status(400).json({error : error.message});
        }
    },
};

module.exports = commentController;