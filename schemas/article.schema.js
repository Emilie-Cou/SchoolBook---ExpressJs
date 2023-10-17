const yup = require('yup');

const articleSchema = yup.object().shape({
    titre : yup.string().required(),
    desc : yup.string().required(),
    idClasse : yup.string().required().min(3).max(3),
});

module.exports = articleSchema;