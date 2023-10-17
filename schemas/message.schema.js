const yup = require('yup');

const messageSchema = yup.object().shape({
    idClasse : yup.string().required().min(3).max(3),
    prenom : yup.string().required().min(3).max(50),
    content : yup.string().required().min(10).max(500),
});

module.exports = messageSchema;