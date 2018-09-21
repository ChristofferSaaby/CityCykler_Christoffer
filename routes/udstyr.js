const kategorier = require('../services/kategorier.js');
const produkter = require('../services/produkter.js');
module.exports = (app) => {

    app.get('/udstyr', async function (req, res) {
        try {
            altUdstyr = await produkter.getAllProdukter();
            produktLimit = await kategorier.getLimitProducts(parseInt(req.params.limit),parseInt(req.params.offset));
            console.log(getLimitProducts())
            res.render('pages/udstyr', {
                "udstyr": altUdstyr,
                "limitProducts": produktLimit
            });
        } catch (err) {
            console.log(err);
            res.send(err);
        }
    });
}