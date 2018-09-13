const service = require('../services/crud.js');
module.exports = (app) => {
   app.get('/udstyr_kategori', async function (req, res) {
       try {
           altUdstyr = await service.getAllProdukter();
           res.render('pages/udstyr_kategori', {
               "udstyr": altUdstyr
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
   app.get('/udstyr_kategori/:kategori', async function (req, res) {
       try {
           cykelKategori = await service.getAllProdukterByKategori(req.params.kategori);
           console.log(cykelKategori);
           res.render('pages/udstyr_kategori', {
               "udstyr": cykelKategori
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
}