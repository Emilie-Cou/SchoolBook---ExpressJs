const connectionModel = require('../models/connection.model');
const connectionSchema = require('../schemas/connection.schema');

const connectionController = {
    connectForm : (req, res) => {
        res.render('index.ejs', {page : 'pages/connection/connection.ejs'});
    },

    connect : async (req, res) => {
        try {
            const validatedData = await connectionSchema.validate(req.body);
            let redirectId = await connectionModel.connect(validatedData);
            res.redirect(`/schoolbook/${redirectId}`)
        }
        catch (error) {
            res.status(400).json({error : error.message});    
        }
    },
};

module.exports = connectionController;