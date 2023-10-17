const otherController = {
    index : (req, res) => {
        res.render('index.ejs', { page : 'pages/home/home.ejs'})
    },
};

module.exports = otherController;