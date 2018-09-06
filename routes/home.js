const service = require('../services/crud.js');
module.exports = (app) => {
   app.get('/', async function (req, res) {
       try {
           forsideText = await service.getForsideText();
           res.render('pages/index', {
               "text": forsideText
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
};