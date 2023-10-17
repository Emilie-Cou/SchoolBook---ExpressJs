const yup = require('yup');

const commentSchema = yup.object().shape({
    prenom : yup.string().required().min(3).max(50),
    content : yup.string().required().min(10).max(500),
});

module.exports = commentSchema;