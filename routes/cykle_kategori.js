const crud = require('../services/crud.js');
const kategorier = require('../services/kategorier.js');
module.exports = (app) => {
   app.get('/cykle_kategori', async function (req, res) {
       try {
           alleCykler = await crud.getAllProdukter();
           res.render('pages/cykle_kategori', {
               "cykler": alleCykler
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
   app.get('/cykle_kategori/:kategori', async function (req, res) {
       try {
           cykleKategori = await kategorier.getAllProdukterByKategori(req.params.kategori);
           console.log(cykleKategori);
           res.render('pages/cykle_kategori', {
               "cykler": cykleKategori
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
}