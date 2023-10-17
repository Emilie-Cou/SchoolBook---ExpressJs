const aboutController = {
    about : (req, res) => {
        res.render('index.ejs', { page : 'pages/about/about.ejs'});
    },
};

module.exports = aboutController;