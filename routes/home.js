const tekster = require('../services/tekster.js');
module.exports = (app) => {
   app.get('/', async function (req, res) {
       try {
           forsideText = await tekster.getForsideText();
           res.render('pages/index', {
               "text": forsideText
           });
       } catch (err) {
           console.log(err);
           res.send(err);
       }
   });
};