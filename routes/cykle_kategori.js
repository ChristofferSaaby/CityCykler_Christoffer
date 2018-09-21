const produkter = require('../services/produkter.js');
const kategorier = require('../services/kategorier.js');
module.exports = (app) => {
   app.get('/cykle_kategori', async function (req, res) {
           res.render('pages/cykle_kategori', {
           });
   app.get('/cykler/:kategori', async function (req, res) {
       try {
           cykleKategori = await kategorier.getAllProdukterByKategori(req.params.kategori);
           //console.log(cykleKategori);
           //console.log(cykleKategori) viser alle de informationer vi får ud af vores databasen og viser dem.
           res.render('pages/cykler', {
               // "cykler" er det der bestemmer hvad der skal stå før vores .foreach
               "cykler": cykleKategori
           });
       } catch (err) {
           console.log(err);
           res.send(err);
            }
        });
    });
}