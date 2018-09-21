const kategorier = require('../services/kategorier.js');
module.exports = (app) => {
   app.get('/udstyr_kategori', async function (req, res) {
           res.render('pages/udstyr_kategori', {
           });
   app.get('/udstyr/:kategori', async function (req, res) {
       try {
           cykelKategori = await kategorier.getAllProdukterByKategori(req.params.kategori);
           //console.log(cykelKategori);
           res.render('pages/udstyr', {
               "udstyr": cykelKategori
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
});
}