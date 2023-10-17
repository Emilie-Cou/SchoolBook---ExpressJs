const express = require('express');
const routerComment = express.Router();

const commentController = require('../controllers/comment.controller');

routerComment.get('', commentController.getAll);
routerComment.get('/addForm', commentController.addCommentForm);
routerComment.post('/add', commentController.addComment);

module.exports = routerComment;