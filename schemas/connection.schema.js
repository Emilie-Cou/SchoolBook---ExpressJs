const yup = require('yup');

const connectionSchema = yup.object().shape({
    user : yup.string().required().min(6).max(7),
    password : yup.string().required().min(8).max(9),
});

module.exports = connectionSchema;