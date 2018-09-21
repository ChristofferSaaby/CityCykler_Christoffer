const kategorier = require('../services/kategorier.js');
const produkter = require('../services/produkter.js');
module.exports = (app) => {

    app.get('pages/cykler', async function (req, res) {
        try {
            alleCykler = await produkter.getAllProdukter();
            res.render('pages/cykler', {
                "cykler": alleCykler
            });
        } catch (err) {
            console.log(err);
            res.send(err);
        }
    });
}