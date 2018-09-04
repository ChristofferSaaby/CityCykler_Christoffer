const service = require('../services/crud.js');
module.exports = (app) => {
   app.get('/cykle_kategori', async function (req, res) {
       try {
           alleCykler = await service.getAll();
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
           cykleKategori = await service.getAllByKategori(req.params.kategori);
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